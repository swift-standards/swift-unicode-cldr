// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-unicode-cldr",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Unicode CLDR", targets: ["Unicode CLDR"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-cardinal.git", branch: "main"),
        .package(url: "https://github.com/swift-ietf/swift-bcp-47.git", branch: "main"),
        .package(url: "https://github.com/swift-iso/swift-iso-8601.git", branch: "main"),
        .package(url: "https://github.com/swift-standards/swift-locale-standard.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Unicode CLDR",
            dependencies: [
                .product(name: "BCP 47", package: "swift-bcp-47"),
                .product(name: "Cardinal", package: "swift-cardinal"),
                .product(name: "ISO 8601", package: "swift-iso-8601"),
                .product(name: "Locale Standard", package: "swift-locale-standard"),
            ]
        ),
        .testTarget(
            name: "Unicode CLDR Tests",
            dependencies: [
                .target(name: "Unicode CLDR")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
