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

    private func restFunctionHelper(flutterResult: @escaping FlutterResult, request: [String: Any], function: (RESTRequest, RESTOperation.ResultListener?) -> RESTOperation? ){

        if(FlutterRestInputs.validate(map: request)){
            let inputs = FlutterRestInputs(serializedData: request)
            let code = inputs.getCode()
            let restRequest = inputs.getRestRequest()
            
            let restOperation = function(restRequest) { result in
                switch result {
                    case .success(let data):
                        self.prepareRestResponseResult(flutterResult: flutterResult, data: data, code: code)
                    case .failure(let apiError):
                        self.prepareError(flutterResult: flutterResult, error: apiError, msg: "hi", code: code)
                }
            }
            if(restOperation != nil){
                operationsMap[code] = restOperation!
            }
        }
    }

    private func prepareRestResponseResult(flutterResult: @escaping FlutterResult, data: Data, code: String = ""){

        let restResponse : FlutterRestResponse = FlutterRestResponse(data: data)
        flutterResult(restResponse.toValueMap())

        if(!code.isEmpty){
            removeCode(code: code)
        }
    }

    private func prepareError(flutterResult: @escaping FlutterResult, error: AmplifyError, msg: String, code: String = ""){

        flutterResult(FlutterError(
            code: "AmplifyApiRestException: " + (error.underlyingError?.localizedDescription ?? ""),
            message: msg,
            details: error.errorDescription + "\nRecovery Suggestion: " + error.recoverySuggestion
        ))

        if(!code.isEmpty){
            removeCode(code: code)
        }
    }

    private func removeCode(code: String){

        if(operationsMap[code] != nil){
            operationsMap.removeValue(forKey: code)
        }
    }
    
    public func onGet(flutterResult: @escaping FlutterResult, arguments: [String: Any]){
        restFunctionHelper(flutterResult: flutterResult, request: arguments, function: bridge.get)
    }
    public func onPost(flutterResult: @escaping FlutterResult, arguments: [String: Any]){
        restFunctionHelper(flutterResult: flutterResult, request: arguments, function: bridge.post)
    }
    public func onPut(flutterResult: @escaping FlutterResult, arguments: [String: Any]){
        restFunctionHelper(flutterResult: flutterResult, request: arguments, function: bridge.put)
    }
    public func onDelete(flutterResult: @escaping FlutterResult, arguments: [String: Any]){
        restFunctionHelper(flutterResult: flutterResult, request: arguments, function: bridge.delete)
    }

    public func onCancel(flutterResult: @escaping FlutterResult, code: String){

        if(operationsMap[code] != nil){
             operationsMap[code]?.cancel()
             operationsMap.removeValue(forKey: code)
             flutterResult("Operation Canceled")
        }
        else{
            flutterResult(FlutterError(
                            code: "Cancel - RestOperation referenced with code not found",
                            message: "The RestOperation may have already completed or expired and cannot be canceled anymore",
                            details: "Operation does not exist"))
        }
    }
}
