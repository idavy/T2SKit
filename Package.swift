// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "T2SKit",
  products: [
    .library(name: "T2SKit", targets: ["T2SKit"])
  ],
  targets: [
    .target(name: "T2SKit", dependencies: ["T2SKitC", "Tun2SocksFramework"]),
    .target(name: "T2SKitC", publicHeadersPath: "."),
    .binaryTarget(
      name: "Tun2SocksFramework",
      url: "https://github.com/idavy/T2SKit/releases/download/1.2.0/Tun2SocksFramework.xcframework.zip",
      checksum: "cd5beb31ff701c456bc76ed2e39b6f7681b078667336d83f81779a949f2972da"
    )
  ]
)
