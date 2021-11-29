//
//  File.swift
//  
//
//  Created by Lukas Pistrol on 26.11.21.
//

import SwiftUI

@available(iOS 14.0, tvOS 14.0, watchOS 8.0, macOS 11.0, *)
public extension Color {
	// MARK: - Properties & Utility Functions
	
	/// Returns true if the luminance value of the Color is greater than 0.5
	var isBright: Bool {
		self.luminance > 0.5
	}
	
	/// Returns true if the luminance value of the Color is less  than or equal to 0.5
	var isDark: Bool {
		self.luminance <= 0.5
	}
	
	/// Returns a Bool when two colors have enough contrast ratio
	/// - Parameters:
	///   - color: the Color to compare with
	///   - ratio: the contrast ratio the two colors have to meet. Defaults to 1.6
	/// - Returns: True, False if contrast ratio between the two colors is met
	func hasContrast(with color: Color, ratio: Double = 1.6) -> Bool {
		let bgLum = self.luminance
		let fgLum = color.luminance
		
		let contrast = bgLum > fgLum
		 ? (bgLum + 0.05) / (fgLum + 0.05)
		 : (fgLum + 0.05) / (bgLum + 0.05)
		
		return ratio < contrast
	}

}
