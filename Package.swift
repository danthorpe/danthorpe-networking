// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "danthorpe-networking",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(name: "Networking", targets: ["Networking"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-tagged", from: "0.7.0"),
        .package(url: "https://github.com/pointfreeco/swift-url-routing", branch: "main"),
        .package(url: "https://github.com/danthorpe/danthorpe-utilities", branch: "main"),
    ],
    targets: [
        .target(name: "Networking", dependencies: [
            .product(name: "Cache", package: "danthorpe-utilities"),
            .product(name: "ShortID", package: "danthorpe-utilities"),
            .product(name: "Tagged", package: "swift-tagged"),
            .product(name: "URLRouting", package: "swift-url-routing")
        ]),
        .testTarget(name: "NetworkingTests", dependencies: ["Networking"]),
      ]
)
