/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
@testable import amplify_datastore

class QueryPredicateBuilderUnitTests: XCTestCase {
    private let id: QueryField = field("id")
    private let title: QueryField = field("title")
    private let rating: QueryField = field("rating")
    private let created: QueryField = field("created")
    private let inventoryProductID: QueryField = field("productID")
    private let inventoryName: QueryField = field("name")
    private let inventoryWarehouseID: QueryField = field("warehouseID")
    private let inventoryRegion: QueryField = field("region")
    private let hasManyParent: QueryField = field("hasManyParent")

    func test_when_id_not_equals() throws {
        XCTAssertEqual(
            id.ne("123"),
            try QueryPredicateBuilder.fromSerializedMap(readJsonMap(filePath: "id_not_equals")) as! QueryPredicateOperation
        )
    }

    func test_when_rating_greater_or_equal() throws {
        XCTAssertEqual(
            rating.ge(4),
            try QueryPredicateBuilder.fromSerializedMap(
                readJsonMap(filePath: "rating_greater_or_equal")) as! QueryPredicateOperation)
    }

    func test_complex_nested_and_or() throws {
        XCTAssertEqual(
            rating.le(4).and(id.contains("abc").or(title.beginsWith("def"))),
            try QueryPredicateBuilder.fromSerializedMap(
                readJsonMap(filePath: "complex_nested")) as! QueryPredicateGroup)
    }

    func test_when_group_with_only_and() throws {
        XCTAssertEqual(
            rating.between(start: 1, end: 4)
                .and(id.contains("abc"))
                .and(title.beginsWith("def"))
                .and(created.eq("2020-02-20T20:20:20-08:00")),
            try QueryPredicateBuilder.fromSerializedMap(
                readJsonMap(filePath: "group_with_only_and")) as! QueryPredicateGroup)
    }

    func test_when_mixed_and_or() throws {
        XCTAssertEqual(
            rating.lt(4).and(id.contains("abc")).or(title.contains("def")),
            try QueryPredicateBuilder.fromSerializedMap(
                readJsonMap(filePath:
                                            "group_mixed_and_or")) as! QueryPredicateGroup)
    }

    func test_when_rating_gt_but_not_eq() throws {
        XCTAssertEqual(
            rating.gt(4).and(not(rating.eq(1))),
            try QueryPredicateBuilder.fromSerializedMap(
                readJsonMap(filePath: "mixed_with_not")) as! QueryPredicateGroup)
    }

    func test_when_negate_complex_predicate() throws {
        XCTAssertEqual(
            not(
                rating.eq(1).and(rating.eq(4).or(title.contains("crap")))),
            try QueryPredicateBuilder.fromSerializedMap(
                readJsonMap(filePath: "negate_complex_predicate")) as! QueryPredicateGroup)
    }

    func test_when_operands_are_bool_and_double() throws {
        XCTAssertEqual(
            rating.eq(1.3).and(created.eq(1)), // TODO FIXME: bool are represented as integers in Json deserialization
            try QueryPredicateBuilder.fromSerializedMap(
                readJsonMap(filePath: "bool_and_double_operands")) as! QueryPredicateGroup)
    }

    func test_when_no_input_given_results_in_all_predicate() throws {
        XCTAssertEqual(
            QueryPredicateConstant.all,
            try QueryPredicateBuilder.fromSerializedMap(nil) as! QueryPredicateConstant
        )
    }

    func test_when_query_predicate_all_used() throws {
        XCTAssertEqual(
            QueryPredicateConstant.all,
            try QueryPredicateBuilder.fromSerializedMap(
                readJsonMap(filePath: "query_predicate_constant_all")
            ) as! QueryPredicateConstant
        )
    }

    func test_when_equals_model_identifier_used() throws {
        XCTAssertEqual(
            inventoryProductID.eq("product-id")
                .and(inventoryName.eq("product-name"))
                .and(inventoryWarehouseID.eq("warehouse-id"))
                .and(inventoryRegion.eq("some region")),
            try QueryPredicateBuilder.fromSerializedMap(readJsonMap(filePath: "model_identifier_equals"))  as! QueryPredicateGroup
        )
    }

    func test_when_not_equals_model_identifier_used() throws {
        XCTAssertEqual(
            inventoryProductID.ne("product-id")
                .and(inventoryName.ne("product-name"))
                .and(inventoryWarehouseID.ne("warehouse-id"))
                .and(inventoryRegion.ne("some region")),
            try QueryPredicateBuilder.fromSerializedMap(readJsonMap(filePath: "model_identifier_not_equals"))  as! QueryPredicateGroup
        )
    }

    func test_when_group_not_equals_model_identifier_used() throws {
        XCTAssertEqual(
            not(
                inventoryProductID.eq("product-id")
                    .and(inventoryName.eq("product-name"))
                    .and(inventoryWarehouseID.eq("warehouse-id"))
                    .and(inventoryRegion.eq("some region"))
            ),
            try QueryPredicateBuilder.fromSerializedMap(readJsonMap(filePath: "model_identifier_group_not_equals"))  as! QueryPredicateGroup
        )
    }

    func test_when_group_equals_model_identifier_used() throws {
        XCTAssertEqual(
            not(
                inventoryProductID.ne("product-id")
                    .and(inventoryName.ne("product-name"))
                    .and(inventoryWarehouseID.ne("warehouse-id"))
                    .and(inventoryRegion.ne("some region"))
            ),
            try QueryPredicateBuilder.fromSerializedMap(readJsonMap(filePath: "model_identifier_group_equals"))  as! QueryPredicateGroup
        )
    }

    func test_when_query_associated_model_identifier_used() throws {
        XCTAssertEqual(
            hasManyParent.eq(
                FlutterSerializedModel.Identifier.make(
                    fields: [
                        (name: "id", value: "parent-id"),
                        (name: "name", value: "parent-name")
                    ]
                ).stringValue
            ),
            try QueryPredicateBuilder.fromSerializedMap(readJsonMap(filePath: "relation_model_identifier_equals"))  as! QueryPredicateOperation
        )
    }
}
