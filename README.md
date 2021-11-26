# LPColorUI
<p>
    <img src="https://img.shields.io/badge/Swift-5.5.1-ff69b4.svg" />
    <img src="https://img.shields.io/badge/iOS-14+-brightgreen.svg" />
    <a href="https://twitter.com/lukeeep_">
        <img src="https://img.shields.io/badge/Contact-@lukeeep_-lightgrey.svg?style=flat" alt="Twitter: @lukeeep_" />
    </a>
</p>

This Swift Package packs all of the standard UIColor constants into a Color extension to use in SwiftUI. It also adds an initializer for HEX Colors.

## Usage
First, import the Package Module:
```swift
import LPColorUI
```

Then use as you would with the built in color properties:

```swift
Text("Hello, World!")
	.foregroundColor(.darkText)
```

To use the Hex Initializer:

```swift
Text("Hello, World!")
	.foregroundColor(.init(hex: "FAFAFA"))
```

## Installation
Add to your Project Packages:
```
https://github.com/lukepistrol/LPColorUI.git
```
