// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation

enum ModelSchemaError: Error {
    case parse(className: String, fieldName: String, desiredType: String)
}
