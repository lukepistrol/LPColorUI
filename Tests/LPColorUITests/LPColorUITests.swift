import XCTest
import SwiftUI
@testable import LPColorUI

@available(iOS 14.0, tvOS 14.0, watchOS 14.0, macOS 11.0, *)
class HexColorTests: XCTestCase {
	func testHexColors12bit() throws {
		let color1 = Color(hex: "#FFF")
		let color2 = Color(hex: "#FFE") // not white
		XCTAssertEqual(color1, .white)
		XCTAssertNotEqual(color2, .white)
	}
	
	func testHexColors24bit() {
		let color1 = Color(hex: "#FFFFFF")
		let color2 = Color(hex: "#FFFFFE") // not white
		XCTAssertEqual(color1, .white)
		XCTAssertNotEqual(color2, .white)
	}
	
	func testHexColors32bit() {
		let color1 = Color(hex: "#FFFFFFFF")
		let color2 = Color(hex: "#00000000") // Opacity zero
		XCTAssertEqual(color1, .white)
		XCTAssertNotEqual(color2, .black)
	}
	
	func testNotValid() {
		let color = Color(hex: "Hello World")
		XCTAssertEqual(color, .black)
	}
}

@available(iOS 14.0, tvOS 14.0, watchOS 14.0, macOS 11.0, *)
class ColorComponentsTests: XCTestCase {
	func testRed() {
		let color = UIColor.red
		let comp = Color(color).components.red
		XCTAssertEqual(comp, 1.0)
	}
	
	func testRed2() {
		let color = Color.black
		let comp = color.components.red
		XCTAssertEqual(comp, 0.0)
	}
	
	func testRed3() {
		let color = Color.white
		let comp = color.components.red
		XCTAssertEqual(comp, 1.0)
	}
	
	func testGreen() {
		let color = UIColor.green
		let comp = Color(color).components.green
		XCTAssertEqual(comp, 1.0)
	}
	
	func testBlue() {
		let color = UIColor.blue
		let comp = Color(color).components.blue
		XCTAssertEqual(comp, 1.0)
	}
	
	func testOpacity1() {
		let color = UIColor.blue
		let comp = Color(color).components.alpha
		XCTAssertEqual(comp, 1.0)
	}
	
	func testOpacity0() {
		let color = UIColor.clear
		let comp = Color(color).components.alpha
		XCTAssertEqual(comp, 0.0)
	}
}

@available(iOS 14.0, tvOS 14.0, watchOS 14.0, macOS 11.0, *)
class HSBComponentsTests: XCTestCase {
	func testHue() {
		let color = UIColor.cyan
		let comp = Color(color).hsb.hue
		XCTAssertEqual(comp, 0.5)
	}
	
	func testSat() {
		let color = UIColor.gray
		let comp = Color(color).hsb.saturation
		XCTAssertEqual(comp, 0.0)
	}
	
	func testBrightness() {
		let color = UIColor.gray
		let comp = Color(color).hsb.brightness
		XCTAssertEqual(comp, 0.5)
	}
	
	func testOpacity1() {
		let color = UIColor.blue
		let comp = Color(color).hsb.alpha
		XCTAssertEqual(comp, 1.0)
	}
	
	func testOpacity0() {
		let color = UIColor.clear
		let comp = Color(color).hsb.alpha
		XCTAssertEqual(comp, 0.0)
	}
}

@available(iOS 14.0, tvOS 14.0, watchOS 14.0, macOS 11.0, *)
class BrightnessTests: XCTestCase {
	func testIsBrightColor() {
		let color = Color.white
		let isBright = color.isBright
		XCTAssertEqual(isBright, true)
	}
	
	func testIsNotBrightColor() {
		let color = Color.black
		let isBright = color.isBright
		XCTAssertEqual(isBright, false)
	}
	
	func testIsDarkColor() {
		let color = Color.black
		let isDark = color.isDark
		XCTAssertEqual(isDark, true)
	}
	
	
	func testIsNotDarkColor() {
		let color = Color.white
		let isDark = color.isDark
		XCTAssertEqual(isDark, false)
	}
}

@available(iOS 14.0, tvOS 14.0, watchOS 14.0, macOS 11.0, *)
class ContrastTests: XCTestCase {
	func testHasContrast() {
		let color1 = Color.black
		let color2 = Color.white
		let contrast = color1.hasContrast(with: color2)
		XCTAssertEqual(contrast, true)
	}
	
	func testHasNoContrast() {
		let color1 = Color.black
		let color2 = Color(hex: "010101")
		let contrast = color1.hasContrast(with: color2)
		XCTAssertEqual(contrast, false)
	}
	
	func testHasContrastRatio() {
		let color1 = Color.black
		let color2 = Color(hex: "010101")
		let contrast = color1.hasContrast(with: color2, ratio: 0.1)
		XCTAssertEqual(contrast, true)
	}
}
