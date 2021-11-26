//
//  File.swift
//  
//
//  Created by Lukas Pistrol on 26.11.21.
//

import SwiftUI

@available(iOS 14.0, tvOS 14.0, watchOS 14.0, *)
public extension Color {
	// MARK: - Conversions
	
	/// Returns the corresponding UIColor
	var uiColor: UIColor {
		UIColor(self)
	}
	
	/// Returns the corresponding CIColor
	var ciColor: CIColor {
		UIColor(self).ciColor
	}
}
