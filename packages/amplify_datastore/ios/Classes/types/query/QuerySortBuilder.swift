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
    static func fromSerializedList(serializedList: [[String: AnyObject]]?) throws -> [QuerySortDescriptor]? {
        if (serializedList == nil || serializedList!.isEmpty) {
            return nil
        }
        return try serializedList!.map { try fromSerializedMap(serializedMap: $0) }
    }
    
    static func fromSerializedMap(serializedMap: [String: AnyObject]) throws -> QuerySortDescriptor {
        let fieldName = serializedMap["field"] as! String
        switch serializedMap["order"] as! String {
        case "ascending":
            return QuerySortDescriptor(fieldName: fieldName, order: .ascending)
        case "descending":
            return QuerySortDescriptor(fieldName: fieldName, order: .descending)
        default:
            // TODO: Change to inhouse errors
            throw DataStoreError.decodingError("Failed to deserialize sort input from flutter", "Please cut an issue to amplify-flutter repo.")
        }
    }
}
