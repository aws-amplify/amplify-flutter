// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import XCTest
import Amplify
import AmplifyPlugins
@testable import amplify_datastore

extension QueryPaginationInput: Equatable {
    public static func == (lhs: QueryPaginationInput, rhs: QueryPaginationInput) -> Bool {
        return lhs.page == rhs.page && lhs.limit == rhs.limit
    }
}

class QueryPaginationBuilderUnitTests: XCTestCase {
    let customPageAndLimit = ["page": 3, "limit": 200] as [String: Any]
    let firstPage = ["page": 0, "limit": 100] as [String: Any]
    let firstResult = ["page": 0, "limit": 1] as [String: Any]

    func test_when_requesting_custom_page_and_limit() throws {
        let expected = QueryPaginationInput.page(3, limit: 200)
        let actual = QueryPaginationBuilder.fromSerializedMap(customPageAndLimit)
        XCTAssertEqual(expected, actual)
    }

    func test_when_requesting_first_page() throws {
        let expected = QueryPaginationInput.firstPage
        let actual = QueryPaginationBuilder.fromSerializedMap(firstPage)
        XCTAssertEqual(expected, actual)
    }

    func test_when_requesting_first_result() throws {
        let expected = QueryPaginationInput.firstResult
        let actual = QueryPaginationBuilder.fromSerializedMap(firstResult)
        XCTAssertEqual(expected, actual)
    }

    func test_when_no_input_given_results_in_no_pagination() throws {
        let actual = QueryPaginationBuilder.fromSerializedMap(nil)
        XCTAssertNil(actual)
    }
}
