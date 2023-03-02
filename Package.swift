// swift-tools-version:5.3

import PackageDescription

let frameworks = ["CardKitPayment": "6be6cf2c85aa13cccd856804daedcc5e06b0cdc2006210808053ad4bf2d26bcb",
                  "ThreeDSSDK": "a201512aa85650987543b075aebd77fe92f59cd37ca025f0ed7f3bec25d1f0e4",
                  "CardKit": "364ee46e45334742dda292dbfb857b5318ced85bd06c096d4b82c5f2a5971012",
                  "CardKitCore": "1b013f28ac10a91fe2eb308d6903ef3679e730c58adb9cd5eb5a9223550cc9c9" ]

let package = Package(
    name: "CardKitSDK",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CardKitSDK",
            targets: Array.init(frameworks.keys)
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: frameworks.map { name, checksum in
            .binaryTarget(name: name,
                          url: "https://github.com/c-villain/CardKit/releases/download/2.0.4/\(name).xcframework.zip",
                          checksum: checksum)
    }
)
