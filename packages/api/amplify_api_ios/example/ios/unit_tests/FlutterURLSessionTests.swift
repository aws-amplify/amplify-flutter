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

import Foundation
import XCTest
import Combine
@testable import Amplify
import AmplifyPlugins
@testable import amplify_api_ios

typealias MockObserver = PassthroughSubject<Never, Never>

struct HTTPStatusResponse: Codable {
    let code: Int
    let description: String
}

extension RESTOperationType: CaseIterable {
    public static var allCases: [RESTOperationType] = [
        .get,
        .post,
        .put,
        .patch,
        .head,
        .delete
    ]
}

class MockSessionDelegate: URLSessionBehaviorDelegate {
    let subject: MockObserver
    
    init(subject: MockObserver) {
        self.subject = subject
    }
    
    func urlSessionBehavior(_ session: URLSessionBehavior, dataTaskBehavior: URLSessionDataTaskBehavior, didCompleteWithError error: Error?) {
        subject.send(completion: .finished)
    }
    
    func urlSessionBehavior(_ session: URLSessionBehavior, dataTaskBehavior: URLSessionDataTaskBehavior, didReceive data: Data) {}
}

class FlutterURLSessionTests: XCTestCase {
    static let sessionFactory = FlutterURLSessionBehaviorFactory()
    
    
    let testBody = "{\"test\":\"test\"}"
    let httpStatusHeaders = [ "Accept": "application/json" ]
    
    var cancellables = Set<AnyCancellable>()
    
    var awsPlugin: AWSAPIPlugin!
    var flutterPlugin: SwiftAmplifyApiPlugin!
    
    override static func setUp() {
        Amplify.reset()
    }

    override static func tearDown() {
        Amplify.reset()
    }

    override func setUp() {
        cancellables = []
    }
    
    override func setUpWithError() throws {
        Amplify.reset()
        flutterPlugin = SwiftAmplifyApiPlugin()
        awsPlugin = AWSAPIPlugin(sessionFactory: FlutterURLSessionTests.sessionFactory)
        let config = """
        {
            "UserAgent": "aws-amplify-cli/2.0",
            "Version": "1.0",
            "api": {
                "plugins": {
                    "awsAPIPlugin": {
                        "mockAPI": {
                            "endpointType": "REST",
                            "endpoint": "https://httpstat.us",
                            "region": "us-west-2",
                            "authorizationType": "NONE"
                        }
                    }
                }
            }
        }
        """.data(using: .utf8)!
        let amplifyConfig = try JSONDecoder().decode(AmplifyConfiguration.self, from: config)
        try Amplify.add(plugin: awsPlugin)
        try Amplify.configure(amplifyConfig)
    }
    
    private func makeOperation() -> RESTOperation {
        MockRESTOperation(request: RESTRequest(), operationType: .get, result: .empty)
    }
    
    private func willThrow(_ statusCode: Int) -> Bool { !(200 ..< 300).contains(statusCode) }
    
    private func runMockTest(statusCode: Int, method: RESTOperationType, body: String? = nil) {
        let cancelToken = "\(statusCode).\(method.rawValue)"
        let operation = makeOperation()
        OperationsManager.addOperation(cancelToken: cancelToken, operation: operation)
        
        let url = URL(string: "https://httpstat.us/\(statusCode)")!
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.allHTTPHeaderFields = [
            FlutterApiRequest.cancelTokenHeader: cancelToken
        ]
        if let body = body {
            request.httpBody = body.data(using: .utf8)!
        }
        let subject = PassthroughSubject<Never, Never>()
        let delegate = MockSessionDelegate(subject: subject)
        let session = FlutterURLSessionTests.sessionFactory.makeSession(withDelegate: delegate)
        let task = session.dataTaskBehavior(with: request)
        task.resume()
        
        let expectation = XCTestExpectation()
        
        subject
            .sink { completion in
                guard let response = OperationsManager.getResponse(for: cancelToken) else {
                    XCTFail("No response found for operation")
                    return
                }
                XCTAssertEqual(response.statusCode, statusCode)
                XCTAssertTrue(!response.allHeaderFields.isEmpty)
                expectation.fulfill()
            } receiveValue: { _ in }
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 5)
    }
    
    private func runAWSTest(statusCode: Int, method: RESTOperationType, body: String? = nil) {
        let cancelToken = "\(statusCode).\(method.rawValue)"
        var data: Data? = nil
        if let body = body {
            data = body.data(using: .utf8)!
        }
        let headers = [
            FlutterApiRequest.cancelTokenHeader: cancelToken
        ].merging(httpStatusHeaders) { current, _ in
            current
        }
        let request = RESTRequest(
            apiName: "mockAPI",
            path: "/\(statusCode)",
            headers: headers,
            body: data)
        let operation: RESTOperation
        switch method {
        case .get:
            operation = awsPlugin.get(request: request)
        case .put:
            operation = awsPlugin.put(request: request)
        case .post:
            operation = awsPlugin.post(request: request)
        case .patch:
            operation = awsPlugin.patch(request: request)
        case .delete:
            operation = awsPlugin.delete(request: request)
        case .head:
            operation = awsPlugin.head(request: request)
        }
        
        OperationsManager.addOperation(cancelToken: cancelToken, operation: operation)
        defer {
            OperationsManager.removeOperation(cancelToken: cancelToken)
        }
        
        let metadataExpectation = expectation(description: "REST request completes with headers and status code")
        var dataExpectation: XCTestExpectation? = nil
        if method != .head {
            dataExpectation = expectation(description: "REST request completes with data")
        }
        operation
            .resultPublisher
            .sink { completion in
                if case let .failure(error) = completion {
                    guard self.willThrow(statusCode),
                          case let .httpStatusError(_, response) = error else {
                        XCTFail("Unexpected error: \(error)")
                        return
                    }
                    XCTAssertEqual(response.statusCode, statusCode)
                    XCTAssertTrue(!response.allHeaderFields.isEmpty)
                    if let dataExpectation = dataExpectation {
                        guard let awsHttpResponse = response as? AWSHTTPURLResponse,
                              let data = awsHttpResponse.body else {
                            XCTFail("Bad response: \(response)")
                            return
                        }
                        guard let httpStatusResponse = try? JSONDecoder().decode(HTTPStatusResponse.self, from: data) else {
                            XCTFail("Bad response: \(String(data: data, encoding: .utf8)!)")
                            return
                        }
                        XCTAssertEqual(httpStatusResponse.code, statusCode)
                        dataExpectation.fulfill()
                    }
                } else {
                    guard let response = OperationsManager.getResponse(for: cancelToken) else {
                        XCTFail("No response found for operation")
                        return
                    }
                    XCTAssertEqual(response.statusCode, statusCode)
                    XCTAssertTrue(!response.allHeaderFields.isEmpty)
                }
                metadataExpectation.fulfill()
            } receiveValue: { data in
                if let dataExpectation = dataExpectation {
                    guard let httpStatusResponse = try? JSONDecoder().decode(HTTPStatusResponse.self, from: data) else {
                        XCTFail("Bad response: \(String(data: data, encoding: .utf8)!)")
                        return
                    }
                    XCTAssertEqual(httpStatusResponse.code, statusCode)
                    dataExpectation.fulfill()
                }
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 10)
    }
    
    private func runFlutterTest(statusCode: Int, method: RESTOperationType, body: String? = nil) {
        let cancelToken = "\(statusCode).\(method.rawValue)"
        var restOptions: [String: Any] = [
            "path": "/\(statusCode)",
            "headers": httpStatusHeaders
        ]
        if let body = body {
            restOptions["body"] = body.data(using: .utf8)!
        }
        let restRequest: [String: Any] = [
            "restOptions": restOptions,
            "cancelToken": cancelToken
        ]
        let methodCall = FlutterMethodCall(
            methodName: method.rawValue.lowercased(),
            arguments: restRequest)
        
        let resultExpectation = expectation(description: "Flutter Method Call completes with RestResponse")
        let flutterResult: FlutterResult = { (value: Any?) in
            guard let responseData = value as? [String: Any?] else {
                XCTFail("Invalid response: \(String(describing: value))")
                return
            }
            XCTAssertEqual(responseData["statusCode"] as! Int, statusCode)
            
            let resultData = responseData["data"] as? Data
            switch method {
            case .head:
                XCTAssertTrue(resultData.isEmpty)
            default:
                XCTAssertNotNil(resultData)
                
                guard let resultHttpStatus = try? JSONDecoder().decode(HTTPStatusResponse.self, from: resultData!) else {
                    XCTFail("Invalid response data: \(String(data: resultData!, encoding: .utf8) ?? "")")
                    return
                }
                XCTAssertEqual(resultHttpStatus.code, statusCode)
            }
            
            let resultHeaders = responseData["headers"] as? [String: String]
            XCTAssertNotNil(resultHeaders)
            XCTAssertTrue(!resultHeaders!.isEmpty)
            
            resultExpectation.fulfill()
        }
        
        flutterPlugin.handle(methodCall, result: flutterResult)
        
        waitForExpectations(timeout: 10)
    }
    
    private func runForAllVerbs(_ test: (RESTOperationType, String?) -> ()) {
        for method in RESTOperationType.allCases {
            switch method {
            case .post, .put, .patch:
                test(method, testBody)
            default:
                test(method, nil)
            }
        }
    }
    
    func test_session_records_success_response() {
        runForAllVerbs { method, body in
            runMockTest(statusCode: 200, method: method, body: body)
        }
    }
    
    func test_session_records_failure_response() {
        runForAllVerbs { method, body in
            runMockTest(statusCode: 400, method: method, body: body)
        }
    }
    
    func test_aws_operation_records_success_response() {
        runForAllVerbs { method, body in
            runAWSTest(statusCode: 200, method: method, body: body)
        }
    }
    
    func test_aws_operation_records_failure_response() {
        runForAllVerbs { method, body in
            runAWSTest(statusCode: 400, method: method, body: body)
        }
    }
    
    func test_flutter_receives_success_response() {
        runForAllVerbs { method, body in
            runFlutterTest(statusCode: 200, method: method, body: body)
        }
    }
    
    func test_flutter_receives_error_response() {
        runForAllVerbs { method, body in
            runFlutterTest(statusCode: 400, method: method, body: body)
        }
    }
    
    func test_concurrent_operations() {
        let cancelToken = "cancelToken"
        let operation = makeOperation()
        DispatchQueue.concurrentPerform(iterations: 100) { i in
            if i.isMultiple(of: 2) {
                OperationsManager.addOperation(cancelToken: cancelToken, operation: operation)
            } else {
                _ = OperationsManager.containsOperation(cancelToken: cancelToken)
            }
        }
        XCTAssertTrue(OperationsManager.containsOperation(cancelToken: cancelToken))
        DispatchQueue.concurrentPerform(iterations: 100) { i in
            if i.isMultiple(of: 2) {
                OperationsManager.removeOperation(cancelToken: cancelToken)
            } else {
                _ = OperationsManager.getResponse(for: cancelToken)
            }
        }
        XCTAssertFalse(OperationsManager.containsOperation(cancelToken: cancelToken))
    }
}
