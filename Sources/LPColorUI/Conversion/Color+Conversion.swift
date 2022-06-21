//
//  File.swift
//  
//
//  Created by Lukas Pistrol on 26.11.21.
//

import SwiftUI

public extension Color {
	// MARK: - Conversions
	
#if !os(macOS)
	/// Returns the corresponding UIColor
	var uiColor: UIColor {
		UIColor(self)
	}
	
#if !os(watchOS)
	/// Returns the corresponding CIColor
	var ciColor: CIColor {
		UIColor(self).ciColor
	}
#endif
#endif
}
