// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterOgury",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterOgury",
            targets: ["AdiscopeMediaMaxAdapterOguryTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterOguryTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterOgury"),
                .target(name: "AdiscopeMediaMaxAdapterOguryMediationAdapter"),
                .target(name: "OgurySdk"),
                .target(name: "OguryAds"),
                .target(name: "OguryCore"),
                .target(name: "OMSDK_Ogury"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterOgury",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterOgury.zip",
            checksum: "f35d86387f6f2517c9b079f91f2e316381647c8f0e0fa233546f4ea6970f49aa"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterOguryMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationOguryPresageAdapter.xcframework.zip",
            checksum: "79bb7870266aa4fff9bf52b73f86708b90b4be9e99acdef501dcd82e66ebcfd9"
        ),
        .binaryTarget(
            name: "OgurySdk",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/OgurySdk.xcframework.zip",
            checksum: "da142c8560c02c932738a6278c941b7adb6bd5289f968dc72f5fabf60d01a1a4"
        ),
        .binaryTarget(
            name: "OguryAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/OguryAds.xcframework.zip",
            checksum: "f4adeaa6fe08c79b40d139eff118a85122632de7ff9be7045fe28d90bed77837"
        ),
        .binaryTarget(
            name: "OguryCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/OguryCore.xcframework.zip",
            checksum: "5f38da00f63ef9e5007a86eb4685066f1589eb01becbc5091aa07316a3781025"
        ),
        .binaryTarget(
            name: "OMSDK_Ogury",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/OMSDK_Ogury.xcframework.zip",
            checksum: "dc79c372ed29196a2d5db75efae63981f9b2353d9e4d0e15d85c0c5b0a5ce2fe"
        ),
    ]
)
