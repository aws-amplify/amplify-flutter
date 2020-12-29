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

public class AmplifyRestAPIModule {
    
    private let bridge: APIBridge
    
    private var operationsMap : [String:RESTOperation ] = [String:RESTOperation]()
    
    init(bridge: APIBridge = APIBridge()){
        self.bridge = bridge
    }
    
    private func restFunctionHelper(
        methodName: String,
        flutterResult: @escaping FlutterResult,
        request: [String: Any], function: (RESTRequest, RESTOperation.ResultListener?) -> RESTOperation? ){

        if(FlutterRestInputs.validate(map: request)){
            let inputs = FlutterRestInputs(serializedData: request)
            let cancelToken = inputs.getCancelToken()
            let restRequest = inputs.getRestRequest()
            
            let restOperation = function(restRequest) { result in
                switch result {
                    case .success(let data):
                        self.prepareRestResponseResult(flutterResult: flutterResult, data: data, cancelToken: cancelToken)
                    case .failure(let apiError):
                        FlutterApiErrorUtils.handleAPIError(
                            flutterResult: flutterResult,
                            error: apiError,
                            msg: FlutterApiErrorMessage.stringToAPIRestError(methodName: methodName).rawValue
                        )
                        
                }
            }
            if(restOperation != nil){
                operationsMap[cancelToken] = restOperation!
            }
        }
    }

    private func prepareRestResponseResult(flutterResult: @escaping FlutterResult, data: Data, cancelToken: String = ""){
        if(!cancelToken.isEmpty){
            removeCancelToken(cancelToken: cancelToken)
        }
        
        let restResponse : FlutterRestResponse = FlutterRestResponse(data: data)
        flutterResult(restResponse.toValueMap())
    }

    private func prepareError(flutterResult: @escaping FlutterResult, error: AmplifyError, msg: String, cancelToken: String = ""){
        if(!cancelToken.isEmpty){
            removeCancelToken(cancelToken: cancelToken)
        }

        flutterResult(FlutterError(
            code: "AmplifyApiRestException: " + (error.underlyingError?.localizedDescription ?? ""),
            message: msg,
            details: error.errorDescription + "\nRecovery Suggestion: " + error.recoverySuggestion
        ))
    }

    private func removeCancelToken(cancelToken: String){
        operationsMap.removeValue(forKey: cancelToken)
    }
    
    public func onGet(flutterResult: @escaping FlutterResult, arguments: [String: Any]){
        restFunctionHelper(methodName: "get", flutterResult: flutterResult, request: arguments, function: bridge.get)
    }
    public func onPost(flutterResult: @escaping FlutterResult, arguments: [String: Any]){
        restFunctionHelper(methodName: "post", flutterResult: flutterResult, request: arguments, function: bridge.post)
    }
    public func onPut(flutterResult: @escaping FlutterResult, arguments: [String: Any]){
        restFunctionHelper(methodName: "put", flutterResult: flutterResult, request: arguments, function: bridge.put)
    }
    public func onDelete(flutterResult: @escaping FlutterResult, arguments: [String: Any]){
        restFunctionHelper(methodName: "delete", flutterResult: flutterResult, request: arguments, function: bridge.delete)
    }
    public func onHead(flutterResult: @escaping FlutterResult, arguments: [String: Any]){
        restFunctionHelper(methodName: "head", flutterResult: flutterResult, request: arguments, function: bridge.head)
    }
    public func onPatch(flutterResult: @escaping FlutterResult, arguments: [String: Any]){
        restFunctionHelper(methodName: "patch", flutterResult: flutterResult, request: arguments, function: bridge.patch)
    }

    public func onCancel(flutterResult: @escaping FlutterResult, cancelToken: String){

        if(operationsMap[cancelToken] != nil){
             operationsMap[cancelToken]?.cancel()
             operationsMap.removeValue(forKey: cancelToken)
             flutterResult("Operation Canceled")
        }
        else{
            flutterResult(FlutterError(
                            code: "AmplifyRestAPI-CancelError",
                            message: "RestOperation completed or expired and cannot be canceled anymore",
                            details: "Operation does not exist"))
        }
    }
}
