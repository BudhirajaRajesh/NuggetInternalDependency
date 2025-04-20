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
            url: "https://github.com/BudhirajaRajesh/NuggetFoundation/releases/download/1.0.0/NuggetFoundation.xcframework.zip",
            checksum: "69ded32bf6c31cb0aed9b1b87186f8ebafb2f06ddf444f2efcee2557ae979a75"
        ),
        .binaryTarget(
            name: "NuggetJumbo",
            url: "https://github.com/BudhirajaRajesh/NuggetJumbo/releases/download/1.0.0/NuggetJumbo.xcframework.zip",
            checksum: "b6eba3873ea023c60c012f2c5db1f2bd072f949189be20c091da5720f80c8f98"
        ),
        .binaryTarget(
            name: "NuggetApiManager",
            url: "https://github.com/BudhirajaRajesh/NuggetAPIManager/releases/download/1.0.0/ZApiManager.xcframework.zip",
            checksum: "d9ae9426c22e234c729b3ba645d75a92c31c4bb25564856df1d3e3136ad92941"
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
