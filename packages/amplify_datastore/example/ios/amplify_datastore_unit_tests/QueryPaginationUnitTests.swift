//
//  amplify_datastore_unit_tests.swift
//  amplify_datastore_unit_tests
//
//  Created by Gupta, Praveen on 10/27/20.
//

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
    
    let customPageAndLimit = ["page": 3, "limit": 200] as [String: AnyObject]
    let firstPage = ["page": 0, "limit": 100] as [String: AnyObject]
    let firstResult = ["page": 0, "limit": 1] as [String: AnyObject]
    
    func test_when_requesting_custom_page_and_limit() throws {
        let expected : QueryPaginationInput = QueryPaginationInput.page(3, limit: 200)
        let actual = QueryPaginationBuilder.fromSerializedMap(serializedMap: customPageAndLimit)
        XCTAssertEqual(expected, actual)
    }
    
    func test_when_requesting_first_page() throws {
        let expected : QueryPaginationInput = QueryPaginationInput.firstPage
        let actual = QueryPaginationBuilder.fromSerializedMap(serializedMap: firstPage)
        XCTAssertEqual(expected, actual)
    }
    
    func test_when_requesting_first_result() throws {
        let expected : QueryPaginationInput = QueryPaginationInput.firstResult
        let actual = QueryPaginationBuilder.fromSerializedMap(serializedMap: firstResult)
        XCTAssertEqual(expected, actual)
    }
    
    func test_when_no_input_given_results_in_first_page() throws {
        let expected : QueryPaginationInput = QueryPaginationInput.firstPage
        let actual = QueryPaginationBuilder.fromSerializedMap(serializedMap: nil)
        XCTAssertEqual(expected, actual)
    }
}
