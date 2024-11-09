// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SimpleCamera",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "SimpleCamera",
            targets: ["SimpleCamera"]
        ),
    ],
    targets: [
        .target(
            name: "SimpleCamera"
        ),

    ]
)
