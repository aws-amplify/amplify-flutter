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

import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSCore

public enum FlutterRestApi {
    private static func restFunctionHelper(
        methodName: String,
        flutterResult: @escaping FlutterResult,
        request: [String: Any],
        function: (RESTRequest, RESTOperation.ResultListener?) -> RESTOperation
    ) {
        do {
            let cancelToken = try FlutterApiRequest.getCancelToken(methodChannelRequest: request)
            let restRequest = try FlutterApiRequest.getRestRequest(methodChannelRequest: request,
                                                                   cancelToken: cancelToken)

            let restOperation = function(restRequest) { result in
                switch result {
                case .success(let data):
                    guard let urlResponse = OperationsManager.getResponse(for: cancelToken) else {
                        FlutterApiErrorHandler.handleApiError(
                            error: APIError.operationError(
                                "No response from server.",
                                "Try sending your request again."),
                            flutterResult: flutterResult)
                        return
                    }
                    let statusCode = urlResponse.statusCode
                    let headers = urlResponse.allHeaderFields

                    OperationsManager.removeOperation(cancelToken: cancelToken)

                    self.prepareRestResponseResult(
                        flutterResult: flutterResult,
                        statusCode: statusCode,
                        data: data,
                        headers: headers)
                case .failure(let apiError):
                    OperationsManager.removeOperation(cancelToken: cancelToken)

                    guard case let .httpStatusError(statusCode, httpResponse) = apiError else {
                        FlutterApiErrorHandler.handleApiError(error: apiError, flutterResult: flutterResult)
                        return
                    }
                    var body: Data?
                    if let awsResponse = httpResponse as? AWSHTTPURLResponse {
                        body = awsResponse.body
                    }
                    self.prepareRestResponseResult(
                        flutterResult: flutterResult,
                        statusCode: statusCode,
                        data: body,
                        headers: httpResponse.allHeaderFields)
                }
            }

            OperationsManager.addOperation(cancelToken: cancelToken, operation: restOperation)
        } catch let error as APIError {
            print("Failed to parse query arguments with \(error)")
            FlutterApiErrorHandler.handleApiError(error: error, flutterResult: flutterResult)
        } catch {
            print("An unexpected error occured when parsing query arguments: \(error)")
            FlutterApiErrorHandler.handleApiError(error: APIError(error: error), flutterResult: flutterResult)
        }
    }

    private static func prepareRestResponseResult(
        flutterResult: @escaping FlutterResult,
        statusCode: Int,
        data: Data?,
        headers: [AnyHashable: Any]
    ) {
        let restResponse = FlutterSerializedRestResponse(statusCode: statusCode, headers: headers, data: data)
        flutterResult(restResponse.toValueMap())
    }

    public static func get(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge) {
        restFunctionHelper(methodName: "get",
                           flutterResult: flutterResult,
                           request: arguments,
                           function: bridge.get)
    }

    public static func post(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge) {
        restFunctionHelper(methodName: "post",
                           flutterResult: flutterResult,
                           request: arguments,
                           function: bridge.post)
    }

    public static func put(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge) {
        restFunctionHelper(methodName: "put",
                           flutterResult: flutterResult,
                           request: arguments,
                           function: bridge.put)
    }

    public static func delete(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge) {
        restFunctionHelper(methodName: "delete",
                           flutterResult: flutterResult,
                           request: arguments,
                           function: bridge.delete)
    }

    public static func head(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge) {
        restFunctionHelper(methodName: "head",
                           flutterResult: flutterResult,
                           request: arguments,
                           function: bridge.head)
    }

    public static func patch(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge) {
        restFunctionHelper(methodName: "patch",
                           flutterResult: flutterResult,
                           request: arguments,
                           function: bridge.patch)
    }
}
