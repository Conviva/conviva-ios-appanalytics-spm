// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaAppAnalytics",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaAppAnalytics",
            targets: ["ConvivaAppAnalytics"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaAppAnalytics",
            url: "https://github.com/Conviva/conviva-ios-appanalytics/raw/0.2.0/Framework/ConvivaAppAnalytics.xcframework.zip",
            checksum: "54b092f430d0219a568a198cce710915b98fa32fca7d0ed5e8347ff42d7f2781")
     ]
)
