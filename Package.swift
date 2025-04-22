// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "NuggetInternalDependency",
    platforms: [
        .iOS(.v13) // Specify your minimum iOS version
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
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.0.1-NuggetFoundation/NuggetFoundation.xcframework.zip",
            checksum: "8b8d4fa21157bee6f87d37da5103bee59636473eaf002e0b7bb93d0dd78611f0"
        ),
        .binaryTarget(
            name: "NuggetJumbo",
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.0.1-NuggetJumbo/NuggetJumbo.xcframework.zip",
            checksum: "24d8f68d73dd195bf90f69b526237bf441dc47dcde83898af63f6f9fddd08d65"
        ),
        .binaryTarget(
            name: "NuggetApiManager",
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.0.1-NuggetAPIManager/ZApiManager.xcframework.zip",
            checksum: "470b05483c2b497ef9df5e19a7561b4a921d634ecf981dfd24bffb020a37f219"
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
