//
//  File.swift
//  
//
//  Created by Lukas Pistrol on 21.06.22.
//

import SwiftUI

public extension Color {
#if os(macOS)
    /// Returns the corresponding NSColor
    var nsColor: NSColor {
        NSColor(self)
    }

    /// Returns the corresponding CIColor
    var ciColor: CIColor {
        CIColor(cgColor: NSColor(self).cgColor)
    }
#endif
}
