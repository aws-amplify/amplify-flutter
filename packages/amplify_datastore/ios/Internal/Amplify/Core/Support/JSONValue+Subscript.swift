//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension JSONValue {

    subscript(_ key: String) -> JSONValue? {
        guard case .object(let object) = self else {
            return nil
        }
        return object[key]
    }

    subscript(_ key: Int) -> JSONValue? {
        switch self {
        case .array(let array):
            return array[key]
        case .object(let object):
            return object["\(key)"]
        default:
            return nil
        }
    }
}
