// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Yandex-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "YandexAdapter", targets: ["YandexAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios", exact: "8.7.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/yandex-adapter/5.17.0/ISYandexAdapter5.17.0.zip",
      checksum: "7dd3a59e9082288865a687bf25de3dc13f1362a47fe0fe12640cfd3b3f48be8f"
    )
  ]
)
