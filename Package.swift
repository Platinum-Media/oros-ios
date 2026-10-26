// swift-tools-version:5.9
// The OROS iOS SDK 1.0.0-preview.1, a BINARY Swift package: Oros.xcframework from https://sdk.oros.platinum.digital/ios/1.0.0-preview.1/ (checksum below). No source.
import PackageDescription

let package = Package(
    name: "Oros",
    platforms: [.iOS(.v16)],
    products: [.library(name: "Oros", targets: ["Oros"])],
    targets: [.binaryTarget(name: "Oros", url: "https://sdk.oros.platinum.digital/ios/1.0.0-preview.1/Oros.xcframework.zip", checksum: "dd53ec4dfeb144701f7884aec23753dd5dfb4d38ed78ac6d56d2fe147ce9ed48")]
)
