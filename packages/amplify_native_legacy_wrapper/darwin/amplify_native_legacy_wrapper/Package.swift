// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "amplify_native_legacy_wrapper",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "amplify-native-legacy-wrapper", targets: ["amplify_native_legacy_wrapper"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/aws-amplify/amplify-ios.git", exact: "1.29.2")
    ],
    targets: [
        .target(
            name: "amplify_native_legacy_wrapper",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "Amplify", package: "amplify-ios"),
                .product(name: "AWSPluginsCore", package: "amplify-ios"),
                .product(name: "AWSCognitoAuthPlugin", package: "amplify-ios")
            ]
        )
    ]
)
