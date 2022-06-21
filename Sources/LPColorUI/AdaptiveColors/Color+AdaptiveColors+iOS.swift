//
//  File.swift
//  
//
//  Created by Lukas Pistrol on 21.06.22.
//

import SwiftUI

public extension Color {

#if os(iOS)

    // MARK: Background Colors

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
    
    /// Dark Text Color (non-dynamic)
    static var darkText: Color {
        Color(UIColor.darkText)
    }

    /// Light Text Color (non-dynamic)
    static var lightText: Color {
        Color(UIColor.lightText)
    }
#endif
}
