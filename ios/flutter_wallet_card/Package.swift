// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_wallet_card",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        // Library name uses hyphens (Flutter SPM convention); the target/module name
        // stays `flutter_wallet_card` so the Swift module name is preserved.
        .library(name: "flutter-wallet-card", targets: ["flutter_wallet_card"])
    ],
    dependencies: [
        // === OpenSSL (A/B TOGGLE) — verified UNUSED by native code; comment this line to build WITHOUT it ===
        .package(url: "https://github.com/krzyzanowskim/OpenSSL-Package.git", from: "3.3.2000")
    ],
    targets: [
        .target(
            name: "flutter_wallet_card",
            dependencies: [
                // === OpenSSL (A/B TOGGLE) — comment this line to build WITHOUT OpenSSL ===
                .product(name: "OpenSSL", package: "OpenSSL-Package")
            ]
        )
    ]
)
