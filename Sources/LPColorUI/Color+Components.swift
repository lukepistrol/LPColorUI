//
//  File.swift
//  
//
//  Created by Lukas Pistrol on 26.11.21.
//

import SwiftUI

@available(iOS 14.0, tvOS 14.0, watchOS 8.0, macOS 11.0, *)
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
	#else
	
	var components: (red: Double, green: Double, blue: Double, alpha: Double) {
	
		var r: CGFloat = 0
		var g: CGFloat = 0
		var b: CGFloat = 0
		var a: CGFloat = 0
		
		let nscolor = NSColor(self).usingColorSpace(.deviceRGB)
		nscolor!.getRed(&r, green: &g, blue: &b, alpha: &a)
		
		return (r.roundSignificant(), g.roundSignificant(), b.roundSignificant(), a.roundSignificant())
	}
	
	var hsb: (hue: Double, saturation: Double, brightness: Double, alpha: Double) {
		
		var h: CGFloat = 0
		var s: CGFloat = 0
		var b: CGFloat = 0
		var a: CGFloat = 0
		
		let nscolor = NSColor(self).usingColorSpace(.deviceRGB)
		nscolor!.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
		
		return (h.roundSignificant(), s.roundSignificant(), b.roundSignificant(), a.roundSignificant())
	}
	
	#endif
	
	/// Returns the weighted luminance value of the Color [0,1]
	var luminance: Double {
		let components = self.components
		return 0.2126 * components.red + 0.7152 * components.green + 0.0722 * components.blue
	}
}

fileprivate extension CGFloat {
	func roundSignificant()->CGFloat {
		((self*1000).rounded())/1000
	}
}
