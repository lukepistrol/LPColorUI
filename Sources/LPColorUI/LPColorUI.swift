import SwiftUI

@available(iOS 13.0, *)
/// Adapts Default Color Styles from UIKit's 'UIColor' to SwiftUI's 'Color'
public struct LPColorUI {}

@available(iOS 13.0, *)
public extension Color {
	
	// MARK: - Initializers
	
	///  Creates a Color Object using a HEX String
	/// - Parameter hex: A 12, 24, or 32 Bit Hex String (e.g. "ABC", "AABBCC", "99AABBCC")
	///
	/// Note: When using the 32 Bit String, the first two Characters describe the Alpha Channel
	init(hex: String) {
		let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
		var int: UInt64 = 0
		Scanner(string: hex).scanHexInt64(&int)
		let a, r, g, b: UInt64
		switch hex.count {
		case 3: // RGB (12-bit)
			(a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
		case 6: // RGB (24-bit)
			(a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
		case 8: // ARGB (32-bit)
			(a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
		default:
			(a, r, g, b) = (1, 128, 128, 128)
		}
		
		self.init(.sRGB,
				  red: Double(r) / 255,
				  green: Double(g) / 255,
				  blue: Double(b) / 255,
				  opacity: Double(a) / 255
		)
	}
	
	// MARK: - Standard & UI Element Colors
	// MARK: Label Colors
	
	/// Tertiary Label Color
	static var tertiary: Color {
		Color(UIColor.tertiaryLabel)
	}
	
	/// Quaternary Label Color
	static var quaternary: Color {
		Color(UIColor.quaternaryLabel)
	}
	
	/// Placeholder Label Color
	static var placeholder: Color {
		Color(UIColor.placeholderText)
	}
	
	/// Dark Text Color (non-dynamic)
	static var darkText: Color {
		Color(UIColor.darkText)
	}

	/// Light Text Color (non-dynamic)
	static var lightText: Color {
		Color(UIColor.lightText)
	}
	
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
	
	// MARK: Gray Colors
	
	/// Standard Gray Color
	static var systemGray: Color {
		Color(UIColor.systemGray)
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

	/// Gray Color (grayscale 1/3)
	static var darkGray: Color {
		Color(UIColor.darkGray)
	}

	/// Gray Color (grayscale 2/3)
	static var lightGray: Color {
		Color(UIColor.lightGray)
	}

	// MARK: Separator Colors
	
	/// Transparent (standard) Separator Color
	static var separator: Color {
		Color(UIColor.separator)
	}

	/// Opaque Separator Color
	static var opaqueSeparator: Color {
		Color(UIColor.opaqueSeparator)
	}


}
