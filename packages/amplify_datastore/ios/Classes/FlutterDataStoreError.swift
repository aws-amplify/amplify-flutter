/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import Foundation

enum FlutterDataStoreError: Error {
    case hubEventCast
    case acquireSchemaForHub
}

enum FlutterDataStoreErrorRecoverySuggestion: String {
    case decoding = "Please ensure you are generating the correct models using Ampliy CLI. If this still happens after regenerating models, please open an issue at https://github.com/aws-amplify/amplify-flutter/issues"
}
