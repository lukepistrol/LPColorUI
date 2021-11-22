# LPColorUI

This Swift Package packs all of the standard UIColor constants into a Color extension to use in SwiftUI. It also adds an initializer for HEX Colors.

## Usage
Just use as you would with the built in color properties:

```swift
Text("Hello, World!")
	.foregroundColor(.darkText)
```

To use the Hex init:

```swift
Text("Hello, World!")
	.foregroundColor(.init(hex: "FAFAFA"))
```

## Install Guide
Add to your Project Packages:

