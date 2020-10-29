//
//  QueryPredicateBuilderUnitTests.swift
//  amplify_datastore_unit_tests
//
//  Created by Gupta, Praveen on 10/27/20.
//

import XCTest
import Amplify
@testable import amplify_datastore

class QueryPredicateBuilderUnitTests: XCTestCase {
    
    private let id: QueryField = field("id")
    private let title: QueryField = field("title")
    private let rating: QueryField = field("rating")
    private let created: QueryField = field("created")
    
    func test_when_id_not_equals() throws {
        XCTAssertEqual(
            id.ne("123"),
            try QueryPredicateBuilder.fromSerializedMap(serializedMap: readJson(filePath: "id_not_equals")) as! QueryPredicateOperation
        )
    }
    
    func test_when_rating_greater_or_equal() throws {
        XCTAssertEqual(
            rating.ge(4),
            try QueryPredicateBuilder.fromSerializedMap(
                serializedMap: readJson(filePath: "rating_greater_or_equal")) as! QueryPredicateOperation)
    }
    
    func test_complex_nested_and_or() throws {
        XCTAssertEqual(
            rating.le(4).and(id.contains("abc").or(title.beginsWith("def"))),
            try QueryPredicateBuilder.fromSerializedMap(
                serializedMap: readJson(filePath: "complex_nested")) as! QueryPredicateGroup)
    }
    
    func test_when_group_with_only_and() throws {
        XCTAssertEqual(
            rating.between(start: 1, end: 4)
                .and(id.contains("abc"))
                .and(title.beginsWith("def"))
                .and(created.eq("2020-02-20T20:20:20-08:00")),
            try QueryPredicateBuilder.fromSerializedMap(
                serializedMap: readJson(filePath: "group_with_only_and")) as! QueryPredicateGroup)
    }
    
    func test_when_mixed_and_or() throws {
        XCTAssertEqual(
            rating.lt(4).and(id.contains("abc")).or(title.contains("def")),
            try QueryPredicateBuilder.fromSerializedMap(
                serializedMap: readJson(filePath:
                                            "group_mixed_and_or")) as! QueryPredicateGroup)
    }
    
    func test_when_rating_gt_but_not_eq() throws {
        XCTAssertEqual(
            rating.gt(4).and(not(rating.eq(1))),
            try QueryPredicateBuilder.fromSerializedMap(
                serializedMap: readJson(filePath: "mixed_with_not")) as! QueryPredicateGroup)
    }
    
    func test_when_negate_complex_predicate() throws {
        XCTAssertEqual(
            not(
                rating.eq(1).and(rating.eq(4).or(title.contains("crap")))),
            try QueryPredicateBuilder.fromSerializedMap(
                serializedMap: readJson(filePath: "negate_complex_predicate")) as! QueryPredicateGroup)
    }
    
    func test_when_operands_are_bool_and_double() throws {
        XCTAssertEqual(
            rating.eq(1.3).and(created.eq(1)), // TODO FIXME: bool are represented as integers in Json deserialization
            try QueryPredicateBuilder.fromSerializedMap(
                serializedMap: readJson(filePath: "bool_and_double_operands")) as! QueryPredicateGroup)
    }
    
    func test_when_no_input_given_results_in_all_predicate() throws {
        XCTAssertEqual(
            QueryPredicateConstant.all,
            try QueryPredicateBuilder.fromSerializedMap(serializedMap: nil) as! QueryPredicateConstant
        )
    }
    
    private func readJson(filePath: String) throws -> [String: AnyObject] {
        do {
            let bundle = Bundle(for: QueryPredicateBuilderUnitTests.self)
            if let file = bundle.url(forResource: filePath, withExtension: "json") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                if let object = json as? [String: AnyObject] {
                    return object
                } else if let object = json as? [Any] {
                    print("json is an array")
                    print(object)
                } else {
                    print("JSON is invalid")
                }
            } else {
                print("no file")
            }
        } catch {
            print(error.localizedDescription)
        }
        throw NSError(domain: NSURLErrorDomain, code: NSURLErrorCannotOpenFile, userInfo: nil)
    }
}
