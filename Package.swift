// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AudioKitEX",
    platforms: [.macOS(.v11), .iOS(.v11), .tvOS(.v11)],
    products: [
        .library(name: "AudioKitEX", targets: ["AudioKitEX"])
     ],
    dependencies: [
        .package(url: "https://github.com/PMoilanen/AudioKit", from: "5.3.0"),
        .package(url: "https://github.com/PMoilanen/CAudioKitEX", from: "5.3.0"),
        .package(url: "https://github.com/PMoilanen/AudioKitUI", from: "0.1.0")
    ],
    targets: [
        .target(name: "AudioKitEX", dependencies: ["AudioKit","CAudioKitEX"]),
//        .target(name: "CAudioKitEX", cxxSettings: [.headerSearchPath(".")]),
        .testTarget(name: "AudioKitEXTests", dependencies: ["AudioKitEX"], resources: [.copy("TestResources/")])
    ],
    cxxLanguageStandard: .cxx14
)

