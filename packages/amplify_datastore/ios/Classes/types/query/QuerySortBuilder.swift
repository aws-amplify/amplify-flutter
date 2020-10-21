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

public class QuerySortBuilder {
    static func fromSerializedList(serializedList: [[String: AnyObject]]?) -> QuerySortInput? {
        
        // TODO throw away
        enum BlahCodingKeys: String, CodingKey {
            case rating
        }
        return QuerySortInput.ascending(BlahCodingKeys.rating)
        
        if (serializedList == nil || serializedList!.isEmpty) {
            return nil
        }
        return QuerySortInput.init(serializedList!.map { fromSerializedMap(serializedMap: $0)!
        })
    }
    
    static func fromSerializedMap(serializedMap: [String: AnyObject]) -> QuerySortBy? {
        let fieldName: CodingKey = serializedMap["field"] as! CodingKey
        switch serializedMap["order"] as! String {
        case "ascending":
            return QuerySortBy.ascending(fieldName)
        case "descending":
            return QuerySortBy.descending(fieldName)
        default:
            return nil
        }
    }
}
