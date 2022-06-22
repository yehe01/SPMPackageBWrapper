// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMPackageBWrapper",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPMPackageBWrapper",
            targets: ["SPMPackageBWrapper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        
        .binaryTarget(
            name: "SPMPackageB",
            url: "https://github.com/yehe01/SPMPackageB/files/8957526/SPMPackageB.xcframework.zip",
            checksum: "f892d2868b9ea5731c6bc075f175dd0e54e72741f0e1ff5511213337a43c6de6"),
        .target(
            name: "SPMPackageBWrapper",
            dependencies: []),
        .testTarget(
            name: "SPMPackageBWrapperTests",
            dependencies: ["SPMPackageBWrapper"]),
    ]
)
