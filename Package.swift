// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.3"
let checksum = "74962f4f296794b20de62b45a6375a1094567dd6f0f9942b36d8a8637b0ecc08"

let package = Package(
    name: "ShadowSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "ShadowSDK", targets: ["ShadowSDKXCFramework"]),
    ],
    targets: [
        .binaryTarget(
            name: "ShadowSDKXCFramework",
            url: "https://github.com/balvenie-ios/ShadowSDK/releases/download/\(version)/ShadowSDK.xcframework.zip",
            checksum: checksum
        ),
    ]
)
