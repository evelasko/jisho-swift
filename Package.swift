// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "jisho-swift",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "jisho-swift",
            targets: ["jisho-swift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            name: "wanakana-swift",
            url: "https://github.com/evelasko/wanakana-swift.git",
            from: "0.0.1"
        )
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "jisho-swift",
            dependencies: [
                "wanakana-swift"
            ]),
        .testTarget(
            name: "jisho-swiftTests",
            dependencies: ["jisho-swift"],
            resources: [
                .process("JishoEntry.json"),
                .process("JishoJSONResponse.json")
            ]
            ),
    ]
)
