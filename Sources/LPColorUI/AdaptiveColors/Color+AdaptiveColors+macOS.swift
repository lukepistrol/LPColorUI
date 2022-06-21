//
//  Color+AdaptiveColors+macOS.swift
//  
//
//  Created by Lukas Pistrol on 21.06.22.
//

import SwiftUI

public extension Color {
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
