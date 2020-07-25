// swift-tools-version:5.2
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
        .package(
            name: "wanakana-swift",
            url: "https://github.com/evelasko/wanakana-swift.git",
            .upToNextMajor(from: "0.0.5")
        )
    ],
    targets: [
        .target(
            name: "jisho-swift",
            dependencies: [
                "wanakana-swift"
            ]),
//        .testTarget(
//            name: "jisho-swiftTests",
//            dependencies: ["jisho-swift"],
//            sources: [
//                .process("JishoEntry.json"),
//                .process("JishoJSONResponse.json")
//            ]
//            ),
    ]
)
