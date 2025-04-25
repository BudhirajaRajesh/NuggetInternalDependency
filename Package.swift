// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "NuggetInternalDependency",
    platforms: [
        .iOS(.v14) // Specify your minimum iOS version
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NuggetInternalDependency",
            targets: ["NuggetInternalDependency"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "NuggetFoundation",
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.1.2-NuggetFoundation/NuggetFoundation.xcframework.zip",
            checksum: "9cd0f3e2b5129d5344a023005bb55f8a8e024d45a56dfa717e8900e6351dca1a"
        ),
        .binaryTarget(
            name: "NuggetJumbo",
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.1.2-NuggetJumbo/NuggetJumbo.xcframework.zip",
            checksum: "1aa3585cf5968544fd1c3ad9ce6787a6c9e9ab8c82651cc1b3eb893239186ede"
        ),
        .binaryTarget(
            name: "NuggetApiManager",
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.1.2-NuggetApiManager/ZApiManager.xcframework.zip",
            checksum: "1f70d09e969cb7d344cdb5f5d9e86e1386f2c22274c7d75b9611e13fbbfa0360"
        ),
        .target(
            name: "NuggetInternalDependency",
            dependencies: ["NuggetFoundation", "NuggetJumbo", "NuggetApiManager"]
        ),
        .testTarget(
            name: "NuggetInternalDependencyTests",
            dependencies: ["NuggetInternalDependency"])
    ]
)
