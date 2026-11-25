// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "aws_liveness",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "aws-liveness", targets: ["aws_liveness"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/aws-amplify/amplify-swift", from: "2.60.2"),
        .package(url: "https://github.com/aws-amplify/amplify-ui-swift-liveness", from: "1.6.0")
    ],
    targets: [
        .target(
            name: "aws_liveness",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "Amplify", package: "amplify-swift"),
                .product(name: "AWSCognitoAuthPlugin", package: "amplify-swift"),
                .product(name: "FaceLiveness", package: "amplify-ui-swift-liveness")
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy"),
            ]
        )
    ]
)
