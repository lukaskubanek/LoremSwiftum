// swift-tools-version:5.1
// Managed by ice

import PackageDescription

let package = Package(
    name: "LoremSwiftum",
    products: [
        .library(name: "LoremSwiftum", targets: ["LoremSwiftum"]),
    ],
    targets: [
        .target(name: "LoremSwiftum", dependencies: []),
        .target(name: "Example", dependencies: ["LoremSwiftum"]),
    ]
)
