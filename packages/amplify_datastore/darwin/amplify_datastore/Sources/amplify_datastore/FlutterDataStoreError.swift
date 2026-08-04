// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation

enum FlutterDataStoreError: Error {
    case hubEventCast
    case acquireSchemaForHub
}

enum FlutterDataStoreErrorRecoverySuggestion: String {
    case decoding = "Please ensure you are generating the correct models using Ampliy CLI. If this still happens after regenerating models, please open an issue at https://github.com/aws-amplify/amplify-flutter/issues"
}
