/*
 * Copyright 2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import AWSCore
import amplify_core

@testable import amplify_api

class RestApiUnitTests: XCTestCase {
    
    var pluginUnderTest: SwiftAmplifyApiPlugin = SwiftAmplifyApiPlugin()
    
    func test_get_returns_success() throws {
        class MockApiBridge: ApiBridge {
            override func get(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                
                XCTAssertEqual(request.path, "/items")
                
                let data : Data = "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".data(using: .utf8)!
                listener?(.success(data))
                
                return nil
            }
        }
        
        let data : Data = "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".data(using: .utf8)!
        pluginUnderTest = SwiftAmplifyApiPlugin(bridge: MockApiBridge())
        
        pluginUnderTest.innerHandle(
            method: "get",
            callArgs: [
                "restOptions" : [
                    "path" : "/items"
                ],
                "cancelToken" : "someCode"
            ],
            result: { (results) in
                XCTAssertEqual((results as! [String:Any])["data"] as! Data, data)
            }
        )
    }

    func test_post_all_inputs_returns_success() throws {
        
        let data : Data = "{\"success\": \"post call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}".data(using: .utf8)!
        
        class MockApiBridge: ApiBridge {
            
            static let flutterData : FlutterStandardTypedData = FlutterStandardTypedData.init(bytes : "{\"name\":\"Mow the lawn\"}".data(using: .utf8)!)

            static let headers = [
                "headerA" : "headerValueA",
                "headerB" : "headerValueB"
            ]
            static let queryParameters = [
                "queryParameterA" : "queryValueA",
                "queryParameterB" : "queryValueB"
            ]
            
            override func put(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                
                XCTAssertEqual(request.path, "/items")
                XCTAssertEqual(request.body, MockApiBridge.flutterData.data)
                XCTAssertEqual(request.apiName, "restapi")
                XCTAssertEqual(request.headers, MockApiBridge.headers)
                XCTAssertEqual(request.queryParameters, MockApiBridge.queryParameters)

                
                let data : Data = "{\"success\": \"post call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}".data(using: .utf8)!
                listener?(.success(data))
                
                return nil
            }
        }

        pluginUnderTest = SwiftAmplifyApiPlugin(bridge: MockApiBridge())
        
        pluginUnderTest.innerHandle(
            method: "put",
            callArgs: [
                "restOptions" : [
                    "path" : "/items",
                    "body" : MockApiBridge.flutterData,
                    "apiName" : "restapi",
                    "headers" : MockApiBridge.headers,
                    "queryParameters" : MockApiBridge.queryParameters
                ],
                "cancelToken" : "someCode"
            ],
            result: { (results) in
                XCTAssertEqual((results as! [String:Any])["data"] as! Data, data)
            }
        )
    }
    
    func test_delete_returns_success() throws {
        class MockApiBridge: ApiBridge {
            override func delete(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                
                XCTAssertEqual(request.path, "/items")

                let data : Data = "{\"success\": \"delete call succeed!\",\"url\": \"items\"}".data(using: .utf8)!
                listener?(.success(data))
                
                return nil
            }
        }
        
        let data : Data = "{\"success\": \"delete call succeed!\",\"url\": \"items\"}".data(using: .utf8)!
        pluginUnderTest = SwiftAmplifyApiPlugin(bridge: MockApiBridge())
        
        pluginUnderTest.innerHandle(
            method: "delete",
            callArgs: [
                "restOptions" : [
                    "path" : "/items"
                ],
                "cancelToken" : "someCode"
            ],
            result: { (results) in
                XCTAssertEqual((results as! [String:Any])["data"] as! Data, data)
            }
        )
    }

    func test_get_status_code_error() throws {
        
        
        class MockApiBridge: ApiBridge {
            override func get(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                
                XCTAssertEqual(request.path, "/items")

                listener?(.failure(APIError.httpStatusError(400, HTTPURLResponse())))
                
                return nil
            }
        }
        
        pluginUnderTest = SwiftAmplifyApiPlugin(bridge: MockApiBridge())
        
        pluginUnderTest.innerHandle(
            method: "get",
            callArgs: [
                "restOptions" : [
                    "path" : "/items"
                ],
                "cancelToken" : "someCode"
            ],
            result: { (results) in
                
                let apiException = results as! FlutterError
                
                XCTAssertEqual(apiException.code, "ApiException")
                XCTAssertEqual(apiException.message, ErrorMessages.defaultFallbackErrorMessage)
                
                let errorMap: [String: String] = apiException.details as! [String : String]
                let referenceError = APIError.httpStatusError(400, HTTPURLResponse())

                XCTAssertEqual(referenceError.errorDescription, errorMap["message"])
                XCTAssertEqual(referenceError.recoverySuggestion, errorMap["recoverySuggestion"])
            }
        )
    }
    
    func test_get_invalid_input_map_error() throws {
        class MockApiBridge: ApiBridge {
            override func get(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                // This should not be called
                XCTAssertTrue(false, "This code should not run")
                
                return nil
            }
        }
        
        pluginUnderTest = SwiftAmplifyApiPlugin(bridge: MockApiBridge())
        
        pluginUnderTest.innerHandle(
            method: "get",
            callArgs: [],
            result: { (results) in
                let apiException = results as! FlutterError
                
                XCTAssertEqual(apiException.code, "ApiException")
                XCTAssertEqual(apiException.message, ErrorMessages.defaultFallbackErrorMessage)
                
                let errorMap = (apiException.details as! [String: String])
                
                XCTAssertEqual("The FlutterMethodCall argument was not passed as a dictionary", errorMap["message"])
                XCTAssertEqual("The request should include the FlutterMethodCall argument as a [String: Any] dictionary", errorMap["recoverySuggestion"])
            }
        )
    }
    
    func test_cancel_get_returns_success() throws {
        class MockApiBridge: ApiBridge {
            override func get(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                
                XCTAssertEqual(request.path, "/items")
                
                let request = RESTOperationRequest(apiName: request.apiName,
                                                           operationType: .get,
                                                           path: request.path,
                                                           queryParameters: request.queryParameters,
                                                           body: request.body,
                                                           options: RESTOperationRequest.Options())
                let operation = MockAPIOperation(request: request)
                return operation
            }
        }
        
        pluginUnderTest = SwiftAmplifyApiPlugin(bridge: MockApiBridge())
        
        pluginUnderTest.innerHandle(
            method: "get",
            callArgs: [
                "restOptions" : [
                    "path" : "/items"
                ],
                "cancelToken" : "someCode"
            ],
            result: { (results) in
                XCTFail()
            }
        )
        
        pluginUnderTest.innerHandle(
            method: "cancel",
            callArgs: "someCode",
            result: { (results) in
                XCTAssertEqual(results as! String, "Operation Canceled")
            }
        )

    }
    
    func test_cancel_get_returns_error() throws {
        
        pluginUnderTest = SwiftAmplifyApiPlugin()
        
        pluginUnderTest.innerHandle(
            method: "cancel",
            callArgs: "nonexistentCode",
            result: { (results) in
                let errorResult = results as! FlutterError
                
                XCTAssertEqual(errorResult.code, "AmplifyAPI-CancelError")
                XCTAssertEqual(errorResult.message,"The Operation may have already been completed or expired and cannot be canceled anymore")
                XCTAssertEqual(errorResult.details as! String, "Operation does not exist")
            }
        )

    }
    
    func test_multiple_cancel_success() throws {
        class MockApiBridge: ApiBridge {
            override func get(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                
                XCTAssertEqual(request.path, "/items")
                
                let request = RESTOperationRequest(apiName: request.apiName,
                                                           operationType: .get,
                                                           path: request.path,
                                                           queryParameters: request.queryParameters,
                                                           body: request.body,
                                                           options: RESTOperationRequest.Options())
                let operation = MockAPIOperation(request: request)
                return operation
            }
        }
        
        pluginUnderTest = SwiftAmplifyApiPlugin(bridge: MockApiBridge())
        
        pluginUnderTest.innerHandle(
            method: "get",
            callArgs: [
                "restOptions" : [
                    "path" : "/items"
                ],
                "cancelToken" : "someCode"
            ],
            result: { (results) in
                XCTFail()
            }
        )
        
        pluginUnderTest.innerHandle(
            method: "cancel",
            callArgs: "someCode",
            result: { (results) in
                XCTAssertEqual(results as! String, "Operation Canceled")
            }
        )
        
        pluginUnderTest.innerHandle(
            method: "cancel",
            callArgs: "nonexistentCode",
            result: { (results) in
                let errorResult = results as! FlutterError
                
                XCTAssertEqual(errorResult.code, "AmplifyAPI-CancelError")
                XCTAssertEqual(errorResult.message,"The Operation may have already been completed or expired and cannot be canceled anymore")
                XCTAssertEqual(errorResult.details as! String, "Operation does not exist")
            }
        )

    }
}

class MockAPIOperation: AmplifyOperation<RESTOperationRequest, Data, APIError>, RESTOperation {
    override func pause() {
    }

    override func resume() {
    }

    init(request: Request) {
        super.init(categoryType: .api,
                   eventName: request.operationType.hubEventName,
                   request: request)
    }
}
