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

import Foundation

import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSCore

public class FlutterRestApi {

    private static func restFunctionHelper(
        methodName: String,
        flutterResult: @escaping FlutterResult,
        request: [String: Any], function: (RESTRequest, RESTOperation.ResultListener?) -> RESTOperation? ){
        do {
            let cancelToken = try FlutterApiRequest.getCancelToken(methodChannelRequest: request)
            let restRequest = try FlutterApiRequest.getRestRequest(methodChannelRequest: request)
             
            let restOperation = function(restRequest) { result in
                switch result {
                    case .success(let data):
                        self.prepareRestResponseResult(flutterResult: flutterResult, data: data, cancelToken: cancelToken)
                    case .failure(let apiError):
                        FlutterApiError.handleAPIError(
                            flutterResult: flutterResult,
                            error: apiError,
                            msg: FlutterApiErrorMessage.stringToAPIRestError(methodName: methodName).rawValue
                        )
                }
            }
            if(restOperation != nil){
                OperationsManager.addOperation(cancelToken: cancelToken, operation: restOperation!)
            }
        } catch let error as APIError {
            print("Failed to parse query arguments with \(error)")
            FlutterApiError.handleAPIError(flutterResult: flutterResult, error: error, msg: FlutterApiErrorMessage.MALFORMED.rawValue)
        } catch {
            print("An unexpected error occured when parsing query arguments: \(error)")
            let errorMap = FlutterApiError.createErrorMap(localizedError: "\(error.localizedDescription).\nAn unrecognized error has occurred", recoverySuggestion: "See logs for details")
            FlutterApiError.postFlutterError(flutterResult: flutterResult, msg: FlutterApiErrorMessage.MALFORMED.rawValue, errorMap: errorMap)
        }
    }

    private static func prepareRestResponseResult(flutterResult: @escaping FlutterResult, data: Data, cancelToken: String = ""){
        if(!cancelToken.isEmpty){
            OperationsManager.removeOperation(cancelToken: cancelToken)
        }
        
        let restResponse : FlutterSerializedRestResponse = FlutterSerializedRestResponse(data: data)
        flutterResult(restResponse.toValueMap())
    }
    
    public static func onGet(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge){
        restFunctionHelper(methodName: "get", flutterResult: flutterResult, request: arguments, function: bridge.get)
    }
    public static func onPost(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge){
        restFunctionHelper(methodName: "post", flutterResult: flutterResult, request: arguments, function: bridge.post)
    }
    public static func onPut(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge){
        restFunctionHelper(methodName: "put", flutterResult: flutterResult, request: arguments, function: bridge.put)
    }
    public static func onDelete(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge){
        restFunctionHelper(methodName: "delete", flutterResult: flutterResult, request: arguments, function: bridge.delete)
    }
    public static func onHead(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge){
        restFunctionHelper(methodName: "head", flutterResult: flutterResult, request: arguments, function: bridge.head)
    }
    public static func onPatch(flutterResult: @escaping FlutterResult, arguments: [String: Any], bridge: ApiBridge){
        restFunctionHelper(methodName: "patch", flutterResult: flutterResult, request: arguments, function: bridge.patch)
    }
    
}
