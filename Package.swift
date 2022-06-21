// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "LPColorUI",
	platforms: [
		.iOS(.v15),
		.macOS(.v12),
		.tvOS(.v15),
		.watchOS(.v8),
	],
    products: [
        .library(
            name: "LPColorUI",
            targets: ["LPColorUI"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "LPColorUI",
            dependencies: []),
        .testTarget(
            name: "LPColorUITests",
            dependencies: ["LPColorUI"]),
    ]
)
