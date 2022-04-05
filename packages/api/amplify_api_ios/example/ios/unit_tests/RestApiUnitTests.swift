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

@testable import amplify_api_ios

class RestApiUnitTests: XCTestCase {
    
    var pluginUnderTest: SwiftAmplifyApiPlugin = SwiftAmplifyApiPlugin()
    
    func test_get_returns_success() throws {
        class MockApiBridge: ApiBridge {
            static let body = "{\"success\":\"get call succeed!\",\"url\":\"/items\"}"
            
            override func get(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
                
                XCTAssertEqual(request.path, "/items")
                
                return MockRESTOperation(
                    request: request,
                    operationType: .get,
                    result: MockAPIResponse(statusCode: 200, body: MockApiBridge.body))
            }
        }
        
        let data: Data = MockApiBridge.body.data(using: .utf8)!
        
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
        
        class MockApiBridge: ApiBridge {
            static let body = "{\"success\": \"post call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}"
            
            static let flutterData : FlutterStandardTypedData = FlutterStandardTypedData.init(bytes : "{\"name\":\"Mow the lawn\"}".data(using: .utf8)!)

            static let headers = [
                "headerA" : "headerValueA",
                "headerB" : "headerValueB"
            ]
            static let queryParameters = [
                "queryParameterA" : "queryValueA",
                "queryParameterB" : "queryValueB"
            ]
            
            override func put(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
                
                XCTAssertEqual(request.path, "/items")
                XCTAssertEqual(request.body, MockApiBridge.flutterData.data)
                XCTAssertEqual(request.apiName, "restapi")
                XCTAssertTrue(MockApiBridge.headers.allSatisfy { request.headers?[$0.key] == $0.value })
                XCTAssertEqual(request.queryParameters, MockApiBridge.queryParameters)
                
                return MockRESTOperation(
                    request: request,
                    operationType: .put,
                    result: MockAPIResponse(statusCode: 200, body: MockApiBridge.body))
            }
        }
        
        let data: Data = MockApiBridge.body.data(using: .utf8)!

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
            static let body = "{\"success\": \"delete call succeed!\",\"url\": \"items\"}"
            
            override func delete(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
                
                XCTAssertEqual(request.path, "/items")
                
                return MockRESTOperation(
                    request: request,
                    operationType: .delete,
                    result: MockAPIResponse(statusCode: 200, body: MockApiBridge.body))
            }
        }
        
        let data : Data = MockApiBridge.body.data(using: .utf8)!
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
            override func get(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
                
                XCTAssertEqual(request.path, "/items")

                let headers = [ "key": "value" ]
                
                return MockRESTOperation(
                    request: request,
                    operationType: .get,
                    result: MockAPIResponse(statusCode: 400, body: "", headers: headers))
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
                
                let apiException = results as! [String: Any]
                
                XCTAssertEqual(apiException["statusCode"]! as! Int, 400)
                XCTAssertEqual(apiException["headers"]! as! [String: String], [ "key": "value" ])
            }
        )
    }
    
    func test_get_invalid_input_map_error() throws {
        class MockApiBridge: ApiBridge {
            override func get(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
                // This should not be called
                XCTAssertTrue(false, "This code should not run")
                
                return MockRESTOperation(
                    request: request,
                    operationType: .get,
                    result: .empty)
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
            override func get(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
                
                XCTAssertEqual(request.path, "/items")
                
                return MockRESTOperation(
                    request: request,
                    operationType: .get,
                    result: .empty)
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
            override func get(request: RESTRequest, listener: RESTOperation.ResultListener?) -> RESTOperation {
                
                XCTAssertEqual(request.path, "/items")
                
                return MockRESTOperation(
                    request: request,
                    operationType: .get,
                    result: .empty)
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

struct MockAPIResponse {
    static let empty = MockAPIResponse(statusCode: 200, body: "")
    
    let statusCode: Int
    let headers: [String: String]?
    let data: Data
    
    init(statusCode: Int, body: String, headers: [String: String]? = nil) {
        self.statusCode = statusCode
        self.headers = headers
        self.data = body.data(using: .utf8)!
    }
    
    var asOperationResult: Result<Data, APIError> {
        if statusCode < 200 || statusCode > 299 {
            return .failure(.httpStatusError(statusCode, HTTPURLResponse(
                                                            url: URL(string: "dummyURL")!,
                                                            statusCode: statusCode,
                                                            httpVersion: nil,
                                                            headerFields: headers)!))
        }
        return .success(data)
    }
}

class MockRESTOperation: AmplifyOperation<RESTOperationRequest, Data, APIError>, RESTOperation {
    let result: MockAPIResponse
    
    override func main() {
        if isCancelled {
            finish()
            return
        }
        
        dispatch(result: result.asOperationResult)
        finish()
    }

    private init(request: RESTOperationRequest, result: MockAPIResponse) {
        self.result = result
        super.init(categoryType: .api,
                   eventName: request.operationType.hubEventName,
                   request: request)
    }
    
    convenience init(request: RESTRequest, operationType: RESTOperationType, result: MockAPIResponse) {
        let restOperationRequest = RESTOperationRequest(
            request: request,
            operationType: operationType)
        self.init(request: restOperationRequest, result: result)
    }
}

extension RESTOperationRequest {
    init(request: RESTRequest, operationType: RESTOperationType) {
        self = RESTOperationRequest(apiName: request.apiName,
                                    operationType: operationType,
                                    path: request.path,
                                    headers: request.headers,
                                    queryParameters: request.queryParameters,
                                    body: request.body,
                                    options: RESTOperationRequest.Options())
    }
}
