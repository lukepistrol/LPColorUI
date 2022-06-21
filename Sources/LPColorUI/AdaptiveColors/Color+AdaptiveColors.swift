//
//  File.swift
//  
//
//  Created by Lukas Pistrol on 26.11.21.
//

import SwiftUI

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

#if os(iOS) || os(tvOS)
    /// Opaque Separator Color
    static var opaqueSeparator: Color {
        Color(UIColor.opaqueSeparator)
    }
#endif
}
