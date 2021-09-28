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

import XCTest
import Amplify
import AmplifyPlugins
@testable import amplify_datastore

extension QueryPaginationInput : Equatable {
    public static func == (lhs: QueryPaginationInput, rhs: QueryPaginationInput) -> Bool {
        return lhs.page == rhs.page && lhs.limit == rhs.limit
    }
}

class QueryPaginationBuilderUnitTests: XCTestCase {
    
    let customPageAndLimit = ["page": 3, "limit": 200] as [String: Any]
    let firstPage = ["page": 0, "limit": 100] as [String: Any]
    let firstResult = ["page": 0, "limit": 1] as [String: Any]
    
    func test_when_requesting_custom_page_and_limit() throws {
        let expected : QueryPaginationInput = QueryPaginationInput.page(3, limit: 200)
        let actual = QueryPaginationBuilder.fromSerializedMap(customPageAndLimit)
        XCTAssertEqual(expected, actual)
    }
    
    func test_when_requesting_first_page() throws {
        let expected : QueryPaginationInput = QueryPaginationInput.firstPage
        let actual = QueryPaginationBuilder.fromSerializedMap(firstPage)
        XCTAssertEqual(expected, actual)
    }
    
    func test_when_requesting_first_result() throws {
        let expected : QueryPaginationInput = QueryPaginationInput.firstResult
        let actual = QueryPaginationBuilder.fromSerializedMap(firstResult)
        XCTAssertEqual(expected, actual)
    }
    
    func test_when_no_input_given_results_in_no_pagination() throws {
        let actual = QueryPaginationBuilder.fromSerializedMap(nil)
        XCTAssertNil(actual)
    }
}
