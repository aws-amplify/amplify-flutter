// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify

public enum FlutterModelAttribute {
    case index(fields: [String], name: String?)
    case primaryKey(fields: [String])

    func convertToNativeModelAttribute() -> ModelAttribute {
        switch self {
        case let .index(fields, name):
            return .index(fields: fields, name: name)
        case let .primaryKey(fields):
            return .primaryKey(fields: fields)
        }
    }
}
