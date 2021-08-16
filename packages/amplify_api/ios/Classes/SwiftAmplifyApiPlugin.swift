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

import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import amplify_core
import AWSPluginsCore

public class SwiftAmplifyApiPlugin: NSObject, FlutterPlugin {
    
    private let bridge: ApiBridge
    private let graphQLSubscriptionsStreamHandler: GraphQLSubscriptionsStreamHandler
    
    init(
        bridge: ApiBridge = ApiBridge(),
        graphQLSubscriptionsStreamHandler: GraphQLSubscriptionsStreamHandler = GraphQLSubscriptionsStreamHandler()
    ){
        self.bridge = bridge
        self.graphQLSubscriptionsStreamHandler = graphQLSubscriptionsStreamHandler
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let methodchannel = FlutterMethodChannel(name: "com.amazonaws.amplify/api", binaryMessenger: registrar.messenger())
        let eventchannel = FlutterEventChannel(name: "com.amazonaws.amplify/api_observe_events", binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyApiPlugin()
        eventchannel.setStreamHandler(instance.graphQLSubscriptionsStreamHandler)
        registrar.addMethodCallDelegate(instance, channel: methodchannel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        innerHandle(method: call.method, callArgs: call.arguments as Any, result: result)
    }
    
    // Create separate method to allow unit testing as we cannot mock "FlutterMethodCall"
    public func innerHandle(method: String, callArgs: Any, result: @escaping FlutterResult){
        do {
            if(method == "cancel"){
                let cancelToken = try FlutterApiRequest.getCancelToken(args: callArgs)
                onCancel(flutterResult: result, cancelToken: cancelToken)
                return
            }
            else if(method == "addPlugin"){
                do {
                    try Amplify.add(
                        plugin: AWSAPIPlugin(
                            sessionFactory: FlutterURLSessionBehaviorFactory(),
                            apiAuthProviderFactory: FlutterAuthProviders()))
                    result(true)
                } catch let error{
                    if(error is APIError){
                        let apiError = error as! APIError

                        ErrorUtil.postErrorToFlutterChannel(
                            result: result,
                            errorCode: "APIException",
                            details: [
                                "message" : apiError.errorDescription,
                                "recoverySuggestion" : apiError.recoverySuggestion,
                                "underlyingError": apiError.underlyingError != nil ? apiError.underlyingError!.localizedDescription : ""
                            ]
                        )
                    } else if(error is ConfigurationError) {
                        let configError = error as! ConfigurationError
                        
                        var errorCode = "APIException"
                        if case .amplifyAlreadyConfigured = configError {
                            errorCode = "AmplifyAlreadyConfiguredException"
                        }
                        ErrorUtil.postErrorToFlutterChannel(
                            result: result,
                            errorCode: errorCode,
                            details: [
                                "message" : configError.errorDescription,
                                "recoverySuggestion" : configError.recoverySuggestion,
                                "underlyingError": configError.underlyingError != nil ? configError.underlyingError!.localizedDescription : ""
                            ]
                        )
                    } else{
                        print("Failed to add Amplify API Plugin \(error)")
                        result(false)
                    }
                }
                return
            }
            
            let arguments = try FlutterApiRequest.getMap(args: callArgs)
            
            // Update tokens if included in request.
            if let tokens = arguments["tokens"] as? [[String: Any?]] {
                try updateTokens(tokens)
            }
            
            switch method {
            case "get": FlutterRestApi.get(flutterResult: result, arguments: arguments, bridge: bridge)
            case "post": FlutterRestApi.post(flutterResult: result, arguments: arguments, bridge: bridge)
            case "put": FlutterRestApi.put(flutterResult: result, arguments: arguments, bridge: bridge)
            case "delete": FlutterRestApi.delete(flutterResult: result, arguments: arguments, bridge: bridge)
            case "head": FlutterRestApi.head(flutterResult: result, arguments: arguments, bridge: bridge)
            case "patch": FlutterRestApi.patch(flutterResult: result, arguments: arguments, bridge: bridge)
            case "query":
                FlutterGraphQLApi.query(flutterResult: result, request: arguments, bridge: bridge)
            case "mutate":
                FlutterGraphQLApi.mutate(flutterResult: result, request: arguments, bridge: bridge)
            case "subscribe":
                FlutterGraphQLApi.subscribe(
                    flutterResult: result,
                    request: arguments, bridge: bridge,
                    graphQLSubscriptionsStreamHandler: graphQLSubscriptionsStreamHandler
                )
            case "updateTokens":
                guard let tokens = arguments["tokens"] as? [[String: Any?]] else {
                    throw APIError.unknown("Invalid token map provided",
                                           "Provide tokens in the \"tokens\" field",
                                           nil)
                }
                try updateTokens(tokens)
                result(nil)
            default:
                result(FlutterMethodNotImplemented)
            }
        } catch let error {
            print("Failed to parse query arguments with \(error)")
            FlutterApiErrorHandler.handleApiError(error: APIError(error: error), flutterResult: result)
        }
    }
    
    public func onCancel(flutterResult: @escaping FlutterResult, cancelToken: String){
        if(OperationsManager.containsOperation(cancelToken: cancelToken)){
            OperationsManager.cancelOperation(cancelToken: cancelToken)
            flutterResult("Operation Canceled")
        }
        else{
            flutterResult(FlutterError(
                            code: "AmplifyAPI-CancelError",
                            message: "The Operation may have already been completed or expired and cannot be canceled anymore",
                            details: "Operation does not exist"))
        }
    }
    
    private func updateTokens(_ tokens: [[String: Any?]]) throws {
        for tokenMap in tokens {
            guard let type = tokenMap["type"] as? String,
                  let awsAuthType = AWSAuthorizationType(rawValue: type),
                  let token = tokenMap["token"] as? String? else {
                throw APIError.unknown(
                    "Invalid arguments",
                    "A valid AWSAuthorizationType and token entry are required",
                    nil)
            }
            FlutterAuthProviders.setToken(type: awsAuthType, token: token)
        }
    }
    
}
