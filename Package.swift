// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Yandex-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "YandexAdapter", targets: ["YandexAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios", exact: "8.0.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/yandex-adapter/5.8.0/ISYandexAdapter5.8.0.zip",
      checksum: "1ae97b9a350360dfaf8fc60b9465887aff0a24105780ff5250c9a8b9a9a7633b"
    )
  ]
)
