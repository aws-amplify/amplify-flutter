// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import XCTest
import Amplify
@testable import AmplifyPlugins
@testable import amplify_datastore

// Extending for simple assertions on the objects equality.
// Also imported AmplifyPlugins as testable to get access to internal fields
extension QuerySortDescriptor: Equatable {
    public static func == (lhs: QuerySortDescriptor, rhs: QuerySortDescriptor) -> Bool {
        return lhs.fieldName == rhs.fieldName && lhs.order.rawValue == rhs.order.rawValue
    }
}

class QuerySortBuilderUnitTests: XCTestCase {
    let sortByIdAsc = [["field": "id", "order": "ascending"]] as [[String: Any]]
    let multipleSorting = [["field": "id", "order": "ascending"], ["field": "rating", "order": "descending"]] as [[String: Any]]
    let badSortingInput = [["field": "id", "order": "chaos"]] as [[String: Any]]
    let badInputFormat = [["field": "id", "order": 4]] as [[String: Any]]

    func test_when_sorting_by_id_ascending() throws {
        let expected = QuerySortDescriptor.init(fieldName: "id", order: .ascending)
        let actual = try QuerySortBuilder.fromSerializedList(sortByIdAsc)?[0]
        XCTAssertEqual(expected, actual)
    }

    func test_when_sorting_by_id_ascending_and_rating_descending() throws {
        let expected: [QuerySortDescriptor] = [
            QuerySortDescriptor.init(fieldName: "id", order: .ascending),
            QuerySortDescriptor.init(fieldName: "rating", order: .descending)
        ]
        let actual = try QuerySortBuilder.fromSerializedList(multipleSorting)
        XCTAssertEqual(expected, actual)
    }

    func test_when_bad_input_given() throws {
        XCTAssertThrowsError(
            try QuerySortBuilder.fromSerializedList(badSortingInput)) { error in
            XCTAssertEqual((error as! DataStoreError).errorDescription, "Failed to deserialize sort input from flutter")
            XCTAssertEqual((error as! DataStoreError).recoverySuggestion, "Please create an issue to amplify-flutter repo.")
        }
    }

    func test_when_null_or_empty_input_given() throws {
        XCTAssertEqual(nil, try QuerySortBuilder.fromSerializedList(nil))
        XCTAssertEqual(nil, try QuerySortBuilder.fromSerializedList([]))
    }
}
