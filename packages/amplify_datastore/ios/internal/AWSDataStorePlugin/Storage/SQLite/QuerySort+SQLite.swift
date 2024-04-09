//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite

extension QuerySortBy {

    var fieldName: String {
        switch self {
        case .ascending(let key), .descending(let key):
            return key.stringValue
        }
    }

    var fieldOrder: QuerySortOrder {
        switch self {
        case .ascending:
            return QuerySortOrder.ascending
        case .descending:
            return QuerySortOrder.descending
        }
    }

    var sortDescriptor: QuerySortDescriptor {
        switch self {
        case .ascending(let key):
            return .init(fieldName: key.stringValue, order: .ascending)
        case .descending(let key):
            return .init(fieldName: key.stringValue, order: .descending)
        }
    }
}

extension QuerySortInput {

    func asSortDescriptors() -> [QuerySortDescriptor]? {
        return inputs.map { QuerySortDescriptor(fieldName: $0.fieldName, order: $0.fieldOrder) }
    }
}
