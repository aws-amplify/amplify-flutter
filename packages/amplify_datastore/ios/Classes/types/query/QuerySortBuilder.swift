// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins

public enum QuerySortBuilder {
    static func fromSerializedList(_ serializedList: [[String: Any]]?) throws -> [QuerySortDescriptor]? {
        if let serializedList = serializedList, !serializedList.isEmpty {
            return try serializedList.map { try fromSerializedMap($0) }
        }
        return nil
    }

    static func fromSerializedMap(_ serializedMap: [String: Any]) throws -> QuerySortDescriptor {
        if let fieldName = serializedMap["field"] as? String, let order = serializedMap["order"] as? String {
            switch order {
            case "ascending":
                return QuerySortDescriptor(fieldName: fieldName, order: .ascending)
            case "descending":
                return QuerySortDescriptor(fieldName: fieldName, order: .descending)
            default:
                throw DataStoreError.decodingError("Failed to deserialize sort input from flutter",
                                                   "Please create an issue to amplify-flutter repo.")
            }
        }
        throw DataStoreError.decodingError("Failed to deserialize sort input from flutter",
                                           "Please create an issue to amplify-flutter repo.")
    }
}
