// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "aws_face_liveness",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "aws-face-liveness", targets: ["aws_face_liveness"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/aws-amplify/amplify-ui-swift-liveness", .upToNextMinor(from: "1.6.0"))
    ],
    targets: [
        .target(
            name: "aws_face_liveness",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "FaceLiveness", package: "amplify-ui-swift-liveness")
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy"),
            ]
        )
    ]
)
