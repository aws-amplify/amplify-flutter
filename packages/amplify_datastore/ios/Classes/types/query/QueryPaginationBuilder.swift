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

public class QueryPaginationBuilder {
   
    static func fromSerializedMap(_ serializedMap: [String: Any]?) -> QueryPaginationInput? {
        if let data = serializedMap {
            var page: UInt = 0, limit: UInt = QueryPaginationInput.defaultLimit;
            if let pageInput = (data["page"] as? Int) {
                page = UInt(pageInput)
            }
            if let limitInput = (data["limit"] as? Int) {
                limit = UInt(limitInput)
            }
            return QueryPaginationInput.page(page, limit: limit)
        } else {
            return nil
        }
    }
}
