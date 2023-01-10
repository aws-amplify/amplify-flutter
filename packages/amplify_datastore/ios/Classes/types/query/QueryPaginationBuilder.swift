// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify

public enum QueryPaginationBuilder {
    static func fromSerializedMap(_ serializedMap: [String: Any]?) -> QueryPaginationInput? {
        if let data = serializedMap {
            var page: UInt = 0, limit: UInt = QueryPaginationInput.defaultLimit
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
