// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Yandex-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "YandexAdapter", targets: ["YandexAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios", exact: "8.1.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/yandex-adapter/5.9.0/ISYandexAdapter5.9.0.zip",
      checksum: "e55b7a9d6ef728a0ff8b4030027e136ae9aafadc59d9d5cf1d1de8ac74b0ecf1"
    )
  ]
)
