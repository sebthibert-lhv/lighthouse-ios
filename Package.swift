// swift-tools-version: 6.2

import PackageDescription

let swiftSettings: [SwiftSetting] = [
    .defaultIsolation(MainActor.self)
]

let package = Package(
    name: "Lighthouse",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "Lighthouse",
            targets: ["Lighthouse"]
        )
    ],
    targets: [
        .target(
            name: "Lighthouse",
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "LighthouseTests",
            dependencies: ["Lighthouse"],
            swiftSettings: swiftSettings
        )
    ]
)
