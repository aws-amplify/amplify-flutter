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
@testable import AmplifyPlugins
@testable import amplify_api

class GraphQLApiUnitTests: XCTestCase {
    typealias ResultType = String
    
    func test_query_success() throws {
        let testRequest: [String: Any] = [
            "document": "test document",
            "variables": ["test key": "test value"]
        ]
        
        class MockApiBridge: ApiBridge {
            override func query<ResultType>(request: GraphQLRequest<ResultType>, listener: GraphQLOperation<ResultType>.ResultListener?) -> GraphQLOperation<ResultType>  {
                XCTAssertEqual("test document", request.document)
                XCTAssertEqual(["test key":"test value"], request.variables as! [String:String])
                
                
                let data: ResultType = "result data" as! ResultType
                let response = GraphQLResponse<ResultType>.success(data)
                listener?(.success(response))
                
                let operationRequest = GraphQLOperationRequest.init(apiName: request.apiName, operationType: GraphQLOperationType.query, document: request.document, responseType: ResultType.self, options: GraphQLOperationRequest.Options())
                return GraphQLOperation<ResultType>(categoryType: .api, eventName: operationRequest.operationType.hubEventName, request: operationRequest)
            }
        }
        
        GraphQLApiModule.query(
            flutterResult: { (result) in
                XCTAssertEqual((result as! [String:Any])["data"] as! String, "result data")
            },
            request: testRequest,
            bridge: MockApiBridge())
        
    }
    
    func test_query_api_error() throws {
        let testRequest: [String: Any] = [
            "document": "test document",
            "variables": ["test key":"test value"]
        ]
        
        class MockApiBridge: ApiBridge {
            override func query<ResultType>(request: GraphQLRequest<ResultType>, listener: GraphQLOperation<ResultType>.ResultListener?) -> GraphQLOperation<ResultType>  {
                XCTAssertEqual("test document", request.document)
                XCTAssertEqual(["test key":"test value"], request.variables as! [String:String])
                
                listener?(.failure(APIError.invalidConfiguration("test error", "test recovery suggestion")))
                
                let operationRequest = GraphQLOperationRequest.init(apiName: request.apiName, operationType: GraphQLOperationType.query, document: request.document, responseType: ResultType.self, options: GraphQLOperationRequest.Options())
                return GraphQLOperation<ResultType>(categoryType: .api, eventName: operationRequest.operationType.hubEventName, request: operationRequest)
            }
        }
        
        
        GraphQLApiModule.query(
            flutterResult: { (result) -> Void in
                if let exception = result as? FlutterError {
                    XCTAssertEqual("AmplifyException", exception.code)
                    XCTAssertEqual(FlutterApiErrorMessage.QUERY_FAILED.rawValue, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual(
                        ["platform": "iOS", "localizedErrorMessage": "test error", "recoverySuggestion": "test recovery suggestion"],
                        errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
                } else {
                    XCTFail()
                }
            },
            request: testRequest,
            bridge: MockApiBridge()
        )
        
    }
    
    func test_query_malformed_request_error() throws {
        let testRequest: [String: Any] = [:]
        
        class MockApiBridge: ApiBridge {
            override func query<ResultType>(request: GraphQLRequest<ResultType>, listener: GraphQLOperation<ResultType>.ResultListener?) -> GraphQLOperation<ResultType>  {
                
                XCTFail("The ApiBridge should not be called if the request is malformed")
                
                let operationRequest = GraphQLOperationRequest.init(apiName: request.apiName, operationType: GraphQLOperationType.query, document: request.document, responseType: ResultType.self, options: GraphQLOperationRequest.Options())
                return GraphQLOperation<ResultType>(categoryType: .api, eventName: operationRequest.operationType.hubEventName, request: operationRequest)
            }
        }
        
        
        GraphQLApiModule.query(
            flutterResult: { (result) -> Void in
                if let exception = result as? FlutterError {
                    XCTAssertEqual("AmplifyException", exception.code)
                    XCTAssertEqual(FlutterApiErrorMessage.MALFORMED.rawValue, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual(
                        ["platform": "iOS", "localizedErrorMessage": "The graphQL document request argument was not passed as a String", "recoverySuggestion": "The request should include the graphQL document as a String"],
                        errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
                } else {
                    XCTFail()
                }
            },
            request: testRequest,
            bridge: MockApiBridge()
        )
        
    }
    
    func test_mutate_success() throws {
        let testRequest: [String: Any] = [
            "document": "test document",
            "variables": ["test key":"test value"]
        ]
        
        class MockApiBridge: ApiBridge {
            override func mutate<ResultType>(request: GraphQLRequest<ResultType>, listener: GraphQLOperation<ResultType>.ResultListener?) -> GraphQLOperation<ResultType>  {
                XCTAssertEqual("test document", request.document)
                XCTAssertEqual(["test key":"test value"], request.variables as! [String:String])
                
                let data: ResultType = "result data" as! ResultType
                let response = GraphQLResponse<ResultType>.success(data)
                listener?(.success(response))
                
                let operationRequest = GraphQLOperationRequest.init(apiName: request.apiName, operationType: GraphQLOperationType.mutation, document: request.document, responseType: ResultType.self, options: GraphQLOperationRequest.Options())
                return GraphQLOperation<ResultType>(categoryType: .api, eventName: operationRequest.operationType.hubEventName, request: operationRequest)
            }
        }
        
        GraphQLApiModule.mutate(flutterResult: { (result) in
            XCTAssertEqual((result as! [String:Any])["data"] as! String, "result data")
        },
        request: testRequest,
        bridge: MockApiBridge()
        )
        
    }
    
    func test_mutate_api_error() throws {
        let testRequest: [String: Any] = [
            "document": "test document",
            "variables": ["test key":"test value"]
        ]
        
        class MockApiBridge: ApiBridge {
            override func mutate<ResultType>(request: GraphQLRequest<ResultType>, listener: GraphQLOperation<ResultType>.ResultListener?) -> GraphQLOperation<ResultType>  {
                XCTAssertEqual("test document", request.document)
                XCTAssertEqual(["test key":"test value"], request.variables as! [String:String])
                
                listener?(.failure(APIError.invalidConfiguration("test error", "test recovery suggestion")))
                
                let operationRequest = GraphQLOperationRequest.init(apiName: request.apiName, operationType: GraphQLOperationType.query, document: request.document, responseType: ResultType.self, options: GraphQLOperationRequest.Options())
                return GraphQLOperation<ResultType>(categoryType: .api, eventName: operationRequest.operationType.hubEventName, request: operationRequest)
            }
        }
        
        
        GraphQLApiModule.mutate(
            flutterResult: { (result) -> Void in
                if let exception = result as? FlutterError {
                    XCTAssertEqual("AmplifyException", exception.code)
                    XCTAssertEqual(FlutterApiErrorMessage.MUTATE_FAILED.rawValue, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual(
                        ["platform": "iOS", "localizedErrorMessage": "test error", "recoverySuggestion": "test recovery suggestion"],
                        errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
                } else {
                    XCTFail()
                }
            },
            request: testRequest,
            bridge: MockApiBridge()
        )
        
    }
    
    func test_mutate_malformed_request_error() throws {
        let testRequest: [String: Any] = [:]
        
        class MockApiBridge: ApiBridge {
            override func mutate<ResultType>(request: GraphQLRequest<ResultType>, listener: GraphQLOperation<ResultType>.ResultListener?) -> GraphQLOperation<ResultType>  {
                
                XCTFail("The ApiBridge should not be called if the request is malformed")
                
                let operationRequest = GraphQLOperationRequest.init(apiName: request.apiName, operationType: GraphQLOperationType.mutation, document: request.document, responseType: ResultType.self, options: GraphQLOperationRequest.Options())
                return GraphQLOperation<ResultType>(categoryType: .api, eventName: operationRequest.operationType.hubEventName, request: operationRequest)
            }
        }
        
        
        GraphQLApiModule.mutate(
            flutterResult: { (result) -> Void in
                if let exception = result as? FlutterError {
                    XCTAssertEqual("AmplifyException", exception.code)
                    XCTAssertEqual(FlutterApiErrorMessage.MALFORMED.rawValue, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual(
                        ["platform": "iOS", "localizedErrorMessage": "The graphQL document request argument was not passed as a String", "recoverySuggestion": "The request should include the graphQL document as a String"],
                        errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
                } else {
                    XCTFail()
                }
            },
            request: testRequest,
            bridge: MockApiBridge()
        )
        
    }
    
}
