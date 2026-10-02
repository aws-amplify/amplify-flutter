// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "aws_liveness",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "aws_liveness",
            targets: ["aws_liveness"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/aws-amplify/amplify-swift", from: "2.51.5"),
        .package(url: "https://github.com/aws-amplify/amplify-ui-swift-liveness.git", from: "1.4.4")
    ],
    targets: [
        .target(
            name: "aws_liveness",
            dependencies: [
                .product(name: "Amplify", package: "amplify-swift"),
                .product(name: "AWSCognitoAuthPlugin", package: "amplify-swift"),
                .product(name: "FaceLiveness", package: "amplify-ui-swift-liveness")
            ],
            path: "Classes"
        )
    ]
)

