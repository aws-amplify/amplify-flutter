// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "amplify_push_notifications",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "amplify-push-notifications", targets: ["amplify_push_notifications"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/aws-amplify/amplify-swift-utils-notifications.git", exact: "1.1.1")
    ],
    targets: [
        .target(
            name: "amplify_push_notifications_objc",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            publicHeadersPath: "include"
        ),
        .target(
            name: "amplify_push_notifications",
            dependencies: [
                "amplify_push_notifications_objc",
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "AmplifyUtilsNotifications", package: "amplify-swift-utils-notifications")
            ]
        )
    ]
)
