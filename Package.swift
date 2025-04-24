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
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.1.0-NuggetAPIManager/ZApiManager.xcframework.zip",
            checksum: "d51fbd1febb52f8cd211a4ce1cff3c92f427a725b82ec96fbd96dfe30f129ebd"
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
