// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "LoremSwiftum",
    products: [
        .library(
            name: "LoremSwiftum",
            targets: ["LoremSwiftum"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "LoremSwiftum",
            dependencies: [],
            path: "Sources"
        )
    ]
)
