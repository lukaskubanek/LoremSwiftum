// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoremSwiftum",
    products: [
        .library(
            name: "LoremSwiftum",
            targets: ["LoremSwiftum"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LoremSwiftum",
            dependencies: [],
            path: "Sources"),
    ]
)
