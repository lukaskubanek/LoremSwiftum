// swift-tools-version:4.2

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
    ],
    swiftLanguageVersions: [.v4, .v4_2]
)
