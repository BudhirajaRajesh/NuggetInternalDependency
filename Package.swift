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
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.1.3-NuggetFoundation/NuggetFoundation.xcframework.zip",
            checksum: "9409ffb6a4ae1e236463d450286bfb5cdad3b9654aa7339a43b0c487e2ad2620"
        ),
        .binaryTarget(
            name: "NuggetJumbo",
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.1.3-NuggetJumbo/NuggetJumbo.xcframework.zip",
            checksum: "8057fb2cfaa8630f8d7a254bbb04a6503b4840a5c4551575eb08ef0f7ae8e8c4"
        ),
        .binaryTarget(
            name: "NuggetApiManager",
            url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency/releases/download/1.1.3-ZApiManager/ZApiManager.xcframework.zip",
            checksum: "25c020bb8f02ee9daebe72229bd60749ea8eb5c4d7b549f7d668feb35beadb29"
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
