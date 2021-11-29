import SwiftUI

#if os(macOS)
public typealias UIColor = NSColor
#endif

@available(iOS 14.0, tvOS 14.0, watchOS 8.0, macOS 11.0, *)
/// Adapts Default Color Styles from UIKit's 'UIColor' to SwiftUI's 'Color'
public struct LPColorUI {}
