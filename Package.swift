// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyChat",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "SwiftyChat",
            targets: ["SwiftyChat"]),
    ],
    dependencies: [
        // Image downloading library
        .package(url: "https://github.com/onevcat/Kingfisher.git", exact: "7.9.1"),
        .package(url: "https://github.com/EnesKaraosman/SwiftUIEKtensions.git", exact: "0.2.0"),
        .package(url: "https://github.com/wxxsw/VideoPlayer.git", exact: "1.2.4"),
        .package(url: "https://github.com/dkk/WrappingHStack.git", exact: "2.2.11")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftyChat",
            dependencies: [
                .byName(name: "Kingfisher"),
                .byName(name: "SwiftUIEKtensions"),
                .byName(name: "VideoPlayer"),
                .byName(name: "WrappingHStack")
                
            ],
            exclude: ["Demo/Preview"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
