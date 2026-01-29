// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.1.1"
let checksum = "e0f6095e61af33343066e53b8f5893b11e2e8ac9d5932c8ddc3cdecc1c08ca63"

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
