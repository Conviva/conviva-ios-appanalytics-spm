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
   dependencies: [
        .package(
            name: "FMDB", 
            url: "https://github.com/ccgus/fmdb", 
            .upToNextMinor(from: "2.7.8")),
    ],
    targets: [
        .target(
            name: "ConvivaAppAnalytics"
        ),
        .binaryTarget(
            name: "ConvivaAppAnalyticsBinary",
            url: "https://github.com/Conviva/conviva-ios-appanalytics/raw/0.2.1/Framework/ConvivaAppAnalytics.xcframework.zip",
            checksum: "c7abd09bb4a3b7f7066363c67066ace431bbd0b2cdd2769b8edd9b6482ae1345"),
        .testTarget(
            name: "ConvivaAppAnalyticsTests",
            dependencies: ["ConvivaAppAnalytics"]),
        
     ]
)
