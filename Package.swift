// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftWebApp",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura.git", .upToNextMinor(from: "2.9.1")),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", .upToNextMinor(from: "1.9.0")),
        .package(name: "KituraStencil", url: "https://github.com/IBM-Swift/Kitura-StencilTemplateEngine.git", .upToNextMinor(from: "1.11.1")),
    ],
    targets: [
        .target(
            name: "SwiftWebApp",
            dependencies: ["Kitura" , "HeliumLogger", "KituraStencil"]),
        .testTarget(
            name: "SwiftWebAppTests",
            dependencies: ["SwiftWebApp"]),
    ]
)
