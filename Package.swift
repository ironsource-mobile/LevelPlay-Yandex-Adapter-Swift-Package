// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Yandex-Adapter-Swift-Package",
  platforms: [.iOS("13.0")],
  products: [
    .library(name: "YandexAdapter", targets: ["YandexAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios", exact: "8.4.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "YandexAdapter",
      dependencies: [
        "YandexAdapterSDK",
        .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "YandexAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/yandex-adapter/5.13.0/ISYandexAdapter5.13.0.zip",
      checksum: "a34c5d54803c6ad97a55d08d45d7d1f53f59cd04437ae72aa0a52f23e25bc22b"
    )
  ]
)
