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
	
	#if os(macOS)
	/// The color to use for text.
	static var text: Color {
		Color(NSColor.textColor)
	}
	
	/// The color to use for selected text.
	static var selectedText: Color {
		Color(NSColor.selectedTextColor)
	}
	
	/// The color to use for the background area behind text.
	static var textBackground: Color {
		Color(NSColor.textBackgroundColor)
	}
	
	/// The color to use for the background of selected text.
	static var selectedTextBackground: Color {
		Color(NSColor.selectedTextBackgroundColor)
	}
	
	/// The color to use for the keyboard focus ring around controls.
	static var keyboardFocusIndicator: Color {
		Color(NSColor.keyboardFocusIndicatorColor)
	}
	
	/// The color to use for selected text in an unemphasized context.
	static var unemphasizedSelectedText: Color {
		Color(NSColor.unemphasizedSelectedTextColor)
	}
	
	/// The color to use for the text background in an unemphasized context.
	static var unemphasizedSelectedTextBackground: Color {
		Color(NSColor.unemphasizedSelectedTextBackgroundColor)
	}
	
	
	
	/// The color to use for links.
	static var link: Color {
		Color(NSColor.linkColor)
	}
	
	/// The color to use for the background of selected and emphasized content.
	static var selectedContentBackground: Color {
		Color(NSColor.selectedContentBackgroundColor)
	}
	
	/// The color to use for selected and unemphasized content.
	static var unemphasizedSelectedContentBackground: Color {
		Color(NSColor.unemphasizedSelectedContentBackgroundColor)
	}
	
	
	
	/// The color to use for the text in menu items.
	static var selectedMenuUtemText: Color {
		Color(NSColor.selectedMenuItemTextColor)
	}
	
	
	
	/// The color to use for the optional gridlines, such as those in a table view.
	static var grid: Color {
		Color(NSColor.gridColor)
	}
	
	/// The color to use for text in header cells in table views and outline views.
	static var headerText: Color {
		Color(NSColor.headerTextColor)
	}
	
	/// The colors to use for alternating content, typically found in table views and collection views.
	static var alternatingContentBackgroundColors: Array<Color> {
		NSColor.alternatingContentBackgroundColors.map { Color($0) }
	}
	
	
	
	/// The user's current accent color preference.
	static var controlAccent: Color {
		Color(NSColor.controlAccentColor)
	}
	
	/// The color to use for the flat surfaces of a control.
	static var control: Color {
		Color(NSColor.controlColor)
	}
	
	/// The color to use for the background of large controls, such as scroll views or table views.
	static var controlBackground: Color {
		Color(NSColor.controlBackgroundColor)
	}
	
	/// The color to use for text on enabled controls.
	static var controlText: Color {
		Color(NSColor.controlTextColor)
	}
	
	/// The color to use for text on disabled controls.
	static var disabledControlText: Color {
		Color(NSColor.disabledControlTextColor)
	}
	
	/// The color to use for the face of a selected control—that is, a control that has been clicked or is being dragged.
	static var selectedControl: Color {
		Color(NSColor.selectedControlColor)
	}
	
	/// The color to use for text in a selected control—that is, a control being clicked or dragged.
	static var selectedControlText: Color {
		Color(NSColor.selectedControlTextColor)
	}
	
	/// The color to use for text in a selected control.
	static var alternateSelectedControlText: Color {
		Color(NSColor.alternateSelectedControlTextColor)
	}
	
	/// The patterned color to use for the background of a scrubber control.
	static var scrubberTexturedBackground: Color {
		Color(NSColor.scrubberTexturedBackground)
	}
	
	
	
	/// The color to use for the window background.
	static var windowBackground: Color {
		Color(NSColor.windowBackgroundColor)
	}
	
	/// The color to use for text in a window's frame.
	static var windowFrameText: Color {
		Color(NSColor.windowFrameTextColor)
	}
	
	/// The color to use in the area beneath your window's views.
	static var underPageBackground: Color {
		Color(NSColor.underPageBackgroundColor)
	}
	
	
	
	/// The highlight color to use for the bubble that shows inline search result values.
	static var findHighlight: Color {
		Color(NSColor.findHighlightColor)
	}
	
	/// The color to use as a virtual light source on the screen.
	static var highlight: Color {
		Color(NSColor.highlightColor)
	}
	
	/// The color to use for virtual shadows cast by raised objects on the screen.
	static var shadow: Color {
		Color(NSColor.shadowColor)
	}
	#endif
}
