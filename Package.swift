// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Yandex-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "YandexAdapter", targets: ["YandexAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios", exact: "7.18.1"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "YandexAdapter",
      dependencies: [
        "YandexAdapterSDK",
        .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "YandexAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/yandex-adapter/5.6.0/ISYandexAdapter5.6.0.zip",
      checksum: "7af878a0ff281c0fe8f990b2e76961cedde5ef5f20731c5eb2187d1617f4c9c7"
    )
  ]
)
