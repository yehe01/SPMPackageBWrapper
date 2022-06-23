// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMPackageBWrapper",
    platforms: [
      .iOS(.v14), .tvOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPMPackageBWrapper",
            targets: ["SPMPackageB"]),
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
            url: "https://github.com/yehe01/SPMPackageB/files/8963693/SPMPackageB.xcframework.zip",
            checksum: "28782c48f6c73de20541942b5c8d9026eebe7a756bdfc17ca25561cff123b778"),
    ]
)
