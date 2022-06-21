//
//  Color+Components+macOS.swift
//  
//
//  Created by Lukas Pistrol on 21.06.22.
//

import SwiftUI

public extension Color {
    #if os(macOS)
    /// Returns the RGB components of the Color (red, green, blue, alpha) [0,1]
    var components: (red: Double, green: Double, blue: Double, alpha: Double) {

        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        let nscolor = NSColor(self).usingColorSpace(.deviceRGB)
        nscolor!.getRed(&r, green: &g, blue: &b, alpha: &a)

        return (r.roundSignificant(), g.roundSignificant(), b.roundSignificant(), a.roundSignificant())
    }

    /// Returns the HSB components of the Color (hue, saturation, brightness, alpha) [0,1]
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
}
