// swift-tools-version:6.0
import PackageDescription
let package = Package(name: "SBOMDemo", platforms: [.macOS(.v12)],
    dependencies: [
      .package(url: "https://github.com/Soneso/stellar-ios-mac-sdk.git", exact: "3.14.0"),
      .package(url: "https://github.com/apple/swift-collections.git", exact: "1.1.4")
    ], targets: [.executableTarget(name: "Demo", dependencies: [
      .product(name: "stellarsdk", package: "stellar-ios-mac-sdk"),
      .product(name: "Collections", package: "swift-collections")
    ])])
