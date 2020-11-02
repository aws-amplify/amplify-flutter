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
import Amplify
import AmplifyPlugins

public class QuerySortBuilder {
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
