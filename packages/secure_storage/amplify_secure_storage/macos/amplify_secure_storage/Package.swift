// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "amplify_secure_storage",
    platforms: [
        .macOS("10.15")
    ],
    products: [
        .library(name: "amplify-secure-storage", targets: ["amplify_secure_storage"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "amplify_secure_storage",
            dependencies: [],
            resources: [
                .process("PrivacyInfo.xcprivacy"),
            ]
        )
    ]
)
