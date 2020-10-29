//
//  DataStorePluginUnitTests.swift
//  amplify_datastore_unit_tests
//
//  Created by Gupta, Praveen on 10/28/20.
//

import XCTest
import Amplify
@testable import AmplifyPlugins
@testable import amplify_datastore

let testSchema: ModelSchema = ModelSchema.init(name: "Post")
let amplifySuccessResults: [SerializedModel] =
    (try! readJsonArray(filePath: "2_results") as! [[String: Any]]).map { (serializedModel) in
        SerializedModel.init(
            id: serializedModel["id"] as! String,
            map: getJSONValue(serializedModel["serializedData"] as! [String : Any]))
    }
let id: QueryField = field("id")
let title: QueryField = field("title")
let rating: QueryField = field("rating")
let created: QueryField = field("created")


class DataStorePluginUnitTests: XCTestCase {
    
    var pluginUnderTest: SwiftAmplifyDataStorePlugin = SwiftAmplifyDataStorePlugin()
    var flutterModelSchemaRegistration: FlutterModels = FlutterModels()
    
    
    
    override func setUpWithError() throws {
        flutterModelSchemaRegistration.addModelSchema(modelName: "Post", modelSchema: testSchema)
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_query_success_result_with_query_parameters() throws {
        
        class MockDataStoreBridge: DataStoreBridge {
            override func onQuery<M: Model>(_ modelType: M.Type,
                                            modelSchema: ModelSchema,
                                            where predicate: QueryPredicate? = nil,
                                            sort sortInput: [QuerySortDescriptor]? = nil,
                                            paginate paginationInput: QueryPaginationInput? = nil,
                                            completion: DataStoreCallback<[M]>) throws {
                // Validations that we called the native library correctly
                XCTAssert(SerializedModel.self == modelType)
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertEqual(
                    id.eq("123").or(rating.ge(4).and(not(created.eq("2020-02-20T20:20:20-08:00")))),
                    predicate as! QueryPredicateGroup
                )
                XCTAssertEqual(
                    [
                        QuerySortDescriptor(fieldName: "id", order: .ascending),
                        QuerySortDescriptor(fieldName: "created", order: .descending)
                    ],
                    sortInput)
                XCTAssertEqual(
                    QueryPaginationInput.page(2, limit: 8),
                    paginationInput)
                
                // Return from the mock
                completion(.success(amplifySuccessResults as! [M]))
            }
        }
        
        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)
        pluginUnderTest.onQuery(
            args: try readJsonMap(filePath: "model_name_with_all_query_parameters") as [String: AnyObject],
            flutterResult: { (results) -> Void in
                if let results = results as? [[String: Any]] {
                    // Result #1 (Any/AnyObject is not equatable so we iterate over fields we know)
                    XCTAssertEqual("4281dfba-96c8-4a38-9a8e-35c7e893ea47", results[0]["id"] as! String)
                    XCTAssertEqual("Post", results[0]["modelName"] as! String)
                    XCTAssertEqual("4281dfba-96c8-4a38-9a8e-35c7e893ea47", (results[0]["serializedData"] as! [String: Any])["id"] as! String)
                    XCTAssertEqual("Title 1", (results[0]["serializedData"] as! [String: Any])["title"] as! String)
                    XCTAssertEqual(4, (results[0]["serializedData"] as! [String: Any])["rating"] as? Double) // Fixme, manually testing results in int
                    
                    // Result #2
                    XCTAssertEqual("43036c6b-8044-4309-bddc-262b6c686026", results[1]["id"] as! String)
                    XCTAssertEqual("Post", results[1]["modelName"] as! String)
                    XCTAssertEqual("43036c6b-8044-4309-bddc-262b6c686026", (results[1]["serializedData"] as! [String: Any])["id"] as! String)
                    XCTAssertEqual("Title 2", (results[1]["serializedData"] as! [String: Any])["title"] as! String)
                    XCTAssertEqual("2020-02-20T20:20:20-08:00", (results[1]["serializedData"] as! [String: Any])["created"] as! String)
                } else {
                    XCTFail()
                }
            })
    }
    
    func test_query_failure_called_with_no_query_parameters() throws {
        
        class MockDataStoreBridge: DataStoreBridge {
            override func onQuery<M: Model>(_ modelType: M.Type,
                                            modelSchema: ModelSchema,
                                            where predicate: QueryPredicate? = nil,
                                            sort sortInput: [QuerySortDescriptor]? = nil,
                                            paginate paginationInput: QueryPaginationInput? = nil,
                                            completion: DataStoreCallback<[M]>) throws {
                // Validations that we called the native library correctly (i.e. valid defaults in this case)
                XCTAssert(SerializedModel.self == modelType)
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertEqual( QueryPredicateConstant.all, predicate as! QueryPredicateConstant)
                XCTAssertNil(sortInput)
                XCTAssertEqual(QueryPaginationInput.firstPage, paginationInput)
                
                // Return errors from the mock
                completion(.failure(causedBy: DataStoreError.invalidCondition("test error", "test recovery suggestion", nil)))
            }
        }
        
        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)
        pluginUnderTest.onQuery(
            args: try readJsonMap(filePath: "only_model_name") as [String: AnyObject],
            flutterResult: { (results) -> Void in
                if let exception = results as? FlutterError {
                    // Result #1 (Any/AnyObject is not equatable so we iterate over fields we know)
                    XCTAssertEqual("AmplifyException", exception.code)
                    XCTAssertEqual(FlutterDataStoreErrorMessage.QUERY_FAILED.rawValue, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual("test error", errorMap["invalidCondition"] as? String)
                    XCTAssertEqual(
                        ["platform": "iOS", "localizedErrorMessage": "test error", "recoverySuggestion": "test recovery suggestion"],
                        errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
                } else {
                    XCTFail()
                }
            })
    }
}

private func getJSONValue(_ jsonDict: [String: Any]) -> [String: JSONValue]{
    guard let jsonData = try? JSONSerialization.data(withJSONObject: jsonDict) else {
        print("JSON error")
        return [:]
    }
    guard let jsonValue = try? JSONDecoder().decode(Dictionary<String, JSONValue>.self,
                                                    from: jsonData) else {
        print("JSON error")
        return [:]
    }
    return jsonValue
}

private func readJsonMap(filePath: String) throws -> [String: Any] {
    if let object = try readJson(filePath: filePath) as? [String: Any] {
        return object
    } else {
        throw NSError(domain: NSURLErrorDomain, code: NSURLErrorCannotDecodeRawData, userInfo: nil)
    }
}

private func readJsonArray(filePath: String) throws -> [Any] {
    if let object = try readJson(filePath: filePath) as? [Any] {
        return object
    } else {
        throw NSError(domain: NSURLErrorDomain, code: NSURLErrorCannotDecodeRawData, userInfo: nil)
    }
}

private func readJson(filePath: String) throws -> Any {
    do {
        let bundle = Bundle(for: QueryPredicateBuilderUnitTests.self)
        if let file = bundle.url(forResource: filePath, withExtension: "json") {
            let data = try Data(contentsOf: file)
            return try JSONSerialization.jsonObject(with: data, options: [])
        } else {
            throw NSError(domain: NSURLErrorDomain, code: NSURLErrorCannotOpenFile, userInfo: nil)
        }
    } catch {
        print(error.localizedDescription)
        throw error
    }
}
