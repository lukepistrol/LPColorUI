//
//  Color+Components.swift
//  
//
//  Created by Lukas Pistrol on 26.11.21.
//

import SwiftUI

public extension Color {
	
	// MARK: - Components
	
	#if !os(macOS)
	/// Returns the RGB components of the Color (red, green, blue, alpha) [0,1]
	var components: (red: Double, green: Double, blue: Double, alpha: Double) {
		
		var r: CGFloat = 0
		var g: CGFloat = 0
		var b: CGFloat = 0
		var a: CGFloat = 0
		
		guard UIColor(self) .getRed(&r, green: &g, blue: &b, alpha: &a) else {
			return (0, 0, 0, 1)
		}
		return (r.roundSignificant(), g.roundSignificant(), b.roundSignificant(), a.roundSignificant())
	}
	
	/// Returns the HSB components of the Color (hue, saturation, brightness, alpha) [0,1]
	var hsb: (hue: Double, saturation: Double, brightness: Double, alpha: Double) {
		
		var h: CGFloat = 0
		var s: CGFloat = 0
		var b: CGFloat = 0
		var a: CGFloat = 0
		
		guard UIColor(self).getHue(&h, saturation: &s, brightness: &b, alpha: &a) else {
			return (0, 0, 0, 1)
		}
		
		return (h.roundSignificant(), s.roundSignificant(), b.roundSignificant(), a.roundSignificant())
	}
	#endif
	
	/// Returns the weighted luminance value of the Color [0,1]
	var luminance: Double {
		let components = self.components
		return 0.2126 * components.red + 0.7152 * components.green + 0.0722 * components.blue
	}
	
	var hexString: String {
		let components = self.components
		let rgb:Int = (Int)(components.red*255)<<16 | (Int)(components.green*255)<<8 | (Int)(components.blue*255)<<0
		return NSString(format:"%06x", rgb).uppercased as String
	}
}

internal extension CGFloat {
	func roundSignificant()->CGFloat {
		((self*1000).rounded())/1000
	}
}
