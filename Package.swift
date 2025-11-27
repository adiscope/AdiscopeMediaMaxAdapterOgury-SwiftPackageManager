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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterOgury.zip",
            checksum: "163aed312ed7ce2767174f1d95c66fc8e1b0cc3c2ead396e1e5ff9bea8effff4"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterOguryMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationOguryPresageAdapter.xcframework.zip",
            checksum: "10d6783cc669fc7899bc0210595b1721beb0d6767504f163cb66f67ecc1a6b4a"
        ),
        .binaryTarget(
            name: "OgurySdk",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/OgurySdk.xcframework.zip",
            checksum: "35fe9b80ea0954b61cdc0f106bc4f2c4c97c942380ccb5ff4d8bcf7013a394a7"
        ),
        .binaryTarget(
            name: "OguryAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/OguryAds.xcframework.zip",
            checksum: "4eae05e71d27b0cf108e69802cbf476a72362fbeec9e55e54a78502912549564"
        ),
        .binaryTarget(
            name: "OguryCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/OguryCore.xcframework.zip",
            checksum: "319c93958dc67cdb9c89071bee6fc4ff65b2d6f54cf7d28e86778ea2f4e3cf62"
        ),
        .binaryTarget(
            name: "OMSDK_Ogury",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/OMSDK_Ogury.xcframework.zip",
            checksum: "d1bfc1ca231b3dcf8156fb66b708bd2956c4c807931601edd81acde7ef224aed"
        ),
    ]
)
