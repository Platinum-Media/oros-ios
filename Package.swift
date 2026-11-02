// swift-tools-version:5.9
// The OROS iOS SDK 1.0.0, a BINARY Swift package: Oros.xcframework from https://sdk.oros.platinum.digital/ios/1.0.0/ (checksum below). No source.
import PackageDescription

let package = Package(
    name: "Oros",
    platforms: [.iOS(.v16)],
    products: [.library(name: "Oros", targets: ["Oros"])],
    targets: [.binaryTarget(name: "Oros", url: "https://sdk.oros.platinum.digital/ios/1.0.0/Oros.xcframework.zip", checksum: "6c8cbb4caea7f9e9c360721dfb67809e1d74342435846aed7cd28b7583c0f0a3")]
)
