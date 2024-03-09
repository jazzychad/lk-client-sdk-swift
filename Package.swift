// swift-tools-version:5.9
// (Xcode14.0+)

import PackageDescription

let package = Package(
    name: "LiveKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v14),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "LiveKit",
            targets: ["LiveKit"]
        ),
    ],
    dependencies: [
        // LK-Prefixed Dynamic WebRTC XCFramework
        .package(url: "https://github.com/apple/swift-protobuf.git", .upToNextMajor(from: "1.25.2")),
        .package(url: "https://github.com/apple/swift-log.git", .upToNextMajor(from: "1.5.4")),
        // Only used for DocC generation
        .package(url: "https://github.com/apple/swift-docc-plugin", .upToNextMajor(from: "1.3.0")),
        // Only used for Testing
        .package(url: "https://github.com/vapor/jwt-kit.git", .upToNextMajor(from: "4.13.2")),
    ],
    targets: [
        .systemLibrary(name: "CHeaders"),
        .target(
            name: "LiveKit",
            dependencies: [
                .target(name: "CHeaders"),
                .product(name: "LiveKitWebRTC", package: "webrtc-xcframework"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "Logging", package: "swift-log"),
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "LiveKitTests",
            dependencies: [
                "LiveKit",
                .product(name: "JWTKit", package: "jwt-kit"),
            ]
        ),
        .testTarget(
            name: "LiveKitTestsObjC",
            dependencies: [
                "LiveKit",
                .product(name: "JWTKit", package: "jwt-kit"),
            ]
        ),
    ]
)
