// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"
let checksum = "e96f14ad34e8a245ed4a615ba71c249167eabc31066e19aaa47066987f63b3ac"

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
