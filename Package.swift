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
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.1.0-NuggetFoundation/NuggetFoundation.xcframework.zip",
            checksum: "d3dcf5e92ae04a8c85d98362983bf375793c819bc0118f108988d94d287581d2"
        ),
        .binaryTarget(
            name: "NuggetJumbo",
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.1.0-NuggetJumbo/NuggetJumbo.xcframework.zip",
            checksum: "2fb060161d6c67afe914ebeb2cb18a981495f2fe4f7c80e3dce10388d26c3a54"
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
