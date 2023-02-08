// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DanilovdevSwiftUtils",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DanilovdevSwiftUtils",
            targets: ["DanilovdevSwiftUtils"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DanilovdevSwiftUtils",
            dependencies: []
        ),
        .testTarget(
            name: "DanilovdevSwiftUtilsTests",
            dependencies: ["DanilovdevSwiftUtils"]
        )
    ]
)
