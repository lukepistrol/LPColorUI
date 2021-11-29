//
//  File.swift
//  
//
//  Created by Lukas Pistrol on 26.11.21.
//

import SwiftUI

@available(iOS 14.0, tvOS 14.0, watchOS 8.0, macOS 11.0, *)
public extension Color {
	// MARK: - Dynamic Standard & UI Element Colors
	// MARK: Label Colors
	
	#if !os(watchOS)
	/// Tertiary Label Color
	static var tertiary: Color {
		#if os(macOS)
		Color(NSColor.tertiaryLabelColor)
		#else
		Color(UIColor.tertiaryLabel)
		#endif
	}
	
	/// Quaternary Label Color
	static var quaternary: Color {
		#if os(macOS)
		Color(NSColor.quaternaryLabelColor)
		#else
		Color(UIColor.quaternaryLabel)
		#endif
	}
	
	/// Placeholder Label Color
	static var placeholder: Color {
		#if os(macOS)
		Color(NSColor.placeholderTextColor)
		#else
		Color(UIColor.placeholderText)
		#endif
	}
	#endif
	
	#if !os(macOS) && !os(tvOS) && !os(watchOS)
	/// Dark Text Color (non-dynamic)
	static var darkText: Color {
		Color(UIColor.darkText)
	}
	
	/// Light Text Color (non-dynamic)
	static var lightText: Color {
		Color(UIColor.lightText)
	}
	#endif
	
	// MARK: Background Colors
	
	#if !os(macOS)  && !os(tvOS) && !os(watchOS)
	/// Primary Background Color
	static var primaryBackground: Color {
		Color(UIColor.systemBackground)
	}
	
	/// Secondary Background Color
	static var secondaryBackground: Color {
		Color(UIColor.secondarySystemBackground)
	}
	
	/// Tertiary Background Color
	static var tertiaryBackground: Color {
		Color(UIColor.tertiarySystemBackground)
	}
	
	// MARK: Grouped Background Colors
	
	/// Primary Grouped Background Color
	static var primaryGroupedBackground: Color {
		Color(UIColor.systemGroupedBackground)
	}
	
	/// Secondary Grouped Background Color
	static var secondaryGroupedBackground: Color {
		Color(UIColor.secondarySystemGroupedBackground)
	}
	
	/// Tertiary Grouped Background Color
	static var tertiaryGroupedBackground: Color {
		Color(UIColor.tertiarySystemGroupedBackground)
	}
	
	// MARK: Fill Colors
	
	/// Primary Fill Color
	static var primaryFill: Color {
		Color(UIColor.systemFill)
	}
	
	/// Secondary Fill Color
	static var secondaryFill: Color {
		Color(UIColor.secondarySystemFill)
	}
	
	/// Tertiary Fill Color
	static var tertiaryFill: Color {
		Color(UIColor.tertiarySystemFill)
	}
	
	/// Quaternary Fill Color
	static var quaternaryFill: Color {
		Color(UIColor.quaternarySystemFill)
	}
	#endif
	
	// MARK: Gray Colors
	#if !os(watchOS)
	/// Standard Gray Color
	static var systemGray: Color {
		#if os(macOS)
		Color(NSColor.systemGray)
		#else
		Color(UIColor.systemGray)
		#endif
	}
	#endif
	
	#if !os(macOS) && !os(tvOS) && !os(watchOS)
	/// Second-level Gray Color
	static var systemGray2: Color {
		Color(UIColor.systemGray2)
	}
	
	/// Third-level Gray Color
	static var systemGray3: Color {
		Color(UIColor.systemGray3)
	}
	
	/// Fourth-level Gray Color
	static var systemGray4: Color {
		Color(UIColor.systemGray4)
	}
	
	/// Fifth-level Gray Color
	static var systemGray5: Color {
		Color(UIColor.systemGray5)
	}
	
	/// Sixth-level Gray Color
	static var systemGray6: Color {
		Color(UIColor.systemGray6)
	}
	#endif
	
	/// Gray Color (grayscale 1/3)
	static var darkGray: Color {
		#if os(macOS)
		Color(NSColor.darkGray)
		#else
		Color(UIColor.darkGray)
		#endif
	}
	
	/// Gray Color (grayscale 2/3)
	static var lightGray: Color {
		#if os(macOS)
		Color(NSColor.lightGray)
		#else
		Color(UIColor.lightGray)
		#endif
	}
	
	/// Gray Color (grayscale 1/2)
	static var grayColor: Color {
		#if os(macOS)
		Color(NSColor.gray)
		#else
		Color(UIColor.gray)
		#endif
	}
	
	// MARK: Separator Colors
	#if !os(watchOS)
	/// Transparent (standard) Separator Color
	static var separator: Color {
		#if os(macOS)
		Color(NSColor.separatorColor)
		#else
		Color(UIColor.separator)
		#endif
	}
	#endif
	
	#if !os(macOS) && !os(watchOS)
	/// Opaque Separator Color
	static var opaqueSeparator: Color {
		Color(UIColor.opaqueSeparator)
	}
	#endif
}
