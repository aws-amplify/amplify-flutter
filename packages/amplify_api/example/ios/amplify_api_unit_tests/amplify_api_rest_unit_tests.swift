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

@testable import amplify_api

class amplify_api_rest_tests: XCTestCase {
    
    var pluginUnderTest: SwiftAmplifyApiPlugin = SwiftAmplifyApiPlugin()
    
    func test_get_returns_success() throws {
        class MockApiBridge: APIBridge {
            override func get(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                let data : Data = "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".data(using: .utf8)!
                listener?(.success(data))
                
                return nil
            }
        }
        
        let data : Data = "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".data(using: .utf8)!
        pluginUnderTest = SwiftAmplifyApiPlugin(restAPIModule: AmplifyRestAPIModule(bridge: MockApiBridge()))
        
        pluginUnderTest.innerHandle(
            method: "get",
            callArgs: [
                "restOptions" : [
                    "path" : "/items"
                ],
                "code" : "someCode"
            ],
            result: { (results) in
                XCTAssertEqual((results as! [String:Any])["data"] as! Data, data)
            }
        )
    }

    func test_post_all_inputs_returns_success() throws {
        class MockApiBridge: APIBridge {
            override func put(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                let data : Data = "{\"success\": \"post call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}".data(using: .utf8)!
                listener?(.success(data))
                
                return nil
            }
        }
        
        let data : Data = "{\"success\": \"post call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}".data(using: .utf8)!
        let body : Data = "{\"name\":\"Mow the lawn\"}".data(using: .utf8)!

        
        pluginUnderTest = SwiftAmplifyApiPlugin(restAPIModule: AmplifyRestAPIModule(bridge: MockApiBridge()))
        
        pluginUnderTest.innerHandle(
            method: "put",
            callArgs: [
                "restOptions" : [
                    "path" : "/items",
                    "body" : body,
                    "apiName" : "restapi",
                    "headers" : [
                        "headerA" : "headerValueA",
                        "headerB" : "headerValueB"
                    ],
                    "queryParameters" : [
                        "queryParameterA" : "queryValueA",
                        "queryParameterB" : "queryValueB"
                    ]
                ],
                "code" : "someCode"
            ],
            result: { (results) in
                XCTAssertEqual((results as! [String:Any])["data"] as! Data, data)
            }
        )
    }
    
    func test_delete_returns_success() throws {
        class MockApiBridge: APIBridge {
            override func delete(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                let data : Data = "{\"success\": \"delete call succeed!\",\"url\": \"items\"}".data(using: .utf8)!
                listener?(.success(data))
                
                return nil
            }
        }
        
        let data : Data = "{\"success\": \"delete call succeed!\",\"url\": \"items\"}".data(using: .utf8)!
        pluginUnderTest = SwiftAmplifyApiPlugin(restAPIModule: AmplifyRestAPIModule(bridge: MockApiBridge()))
        
        pluginUnderTest.innerHandle(
            method: "delete",
            callArgs: [
                "restOptions" : [
                    "path" : "/items"
                ],
                "code" : "someCode"
            ],
            result: { (results) in
                XCTAssertEqual((results as! [String:Any])["data"] as! Data, data)
            }
        )
    }

    func test_get_code_error() throws {
        class MockApiBridge: APIBridge {
            override func get(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                let data : Data = "{\"error\":\"get call failed!\"}".data(using: .utf8)!
                listener?(.success(data))
                
                return nil
            }
        }
        
        let data : Data = "{\"error\":\"get call failed!\"}".data(using: .utf8)!
        pluginUnderTest = SwiftAmplifyApiPlugin(restAPIModule: AmplifyRestAPIModule(bridge: MockApiBridge()))
        
        pluginUnderTest.innerHandle(
            method: "get",
            callArgs: [
                "restOptions" : [
                    "path" : "/items"
                ],
                "code" : "someCode"
            ],
            result: { (results) in
                XCTAssertEqual((results as! [String:Any])["data"] as! Data, data)
            }
        )
    }
    
    func test_get_invalid_input_map_error() throws {
        class MockApiBridge: APIBridge {
            override func get(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                let data : Data = "{\"error\":\"get call failed!\"}".data(using: .utf8)!
                listener?(.success(data))
                
                return nil
            }
        }
        
        let data : Data = "{\"error\":\"get call failed!\"}".data(using: .utf8)!
        pluginUnderTest = SwiftAmplifyApiPlugin(restAPIModule: AmplifyRestAPIModule(bridge: MockApiBridge()))
        
        pluginUnderTest.innerHandle(
            method: "get",
            callArgs: [],
            result: { (results) in
                XCTAssertEqual(results as! FlutterError,
                               FlutterError(code: "WrongMapInput", message: "The provided map input was not correct", details: nil)
                )
            }
        )
    }
    
    func test_cancel_get_returns_success() throws {
        class MockApiBridge: APIBridge {
            override func get(request: RESTRequest, listener: ((AmplifyOperation<RESTOperationRequest, Data, APIError>.OperationResult) -> Void)?) -> RESTOperation?{
                
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
        
        pluginUnderTest = SwiftAmplifyApiPlugin(restAPIModule: AmplifyRestAPIModule(bridge: MockApiBridge()))
        
        pluginUnderTest.innerHandle(
            method: "get",
            callArgs: [
                "restOptions" : [
                    "path" : "/items"
                ],
                "code" : "someCode"
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
        
        pluginUnderTest = SwiftAmplifyApiPlugin(restAPIModule: AmplifyRestAPIModule())
        
        pluginUnderTest.innerHandle(
            method: "cancel",
            callArgs: "someCode",
            result: { (results) in
                XCTAssertEqual(results as! FlutterError,
                               FlutterError(code: "Cancel - RestOperation referenced with code not found", message: "The RestOperation may have already completed or expired and cannot be canceled anymore", details: "Operation does not exist")
                )
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
