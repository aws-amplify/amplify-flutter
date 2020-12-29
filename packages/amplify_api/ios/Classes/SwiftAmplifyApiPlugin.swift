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

public class SwiftAmplifyApiPlugin: NSObject, FlutterPlugin {

    private let restAPIModule: AmplifyRestAPIModule

    private let bridge: ApiBridge

    init(
    restAPIModule: AmplifyRestAPIModule = AmplifyRestAPIModule(),
    bridge: ApiBridge = ApiBridge()
    ){
        self.restAPIModule = restAPIModule

        self.bridge = bridge
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/api", binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyApiPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        do {
            try Amplify.add(plugin: AWSAPIPlugin())
            print("Successfully added API Plugin")
        } catch {
            print("Failed to add Amplify API Plugin \(error)")
        }
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        innerHandle(method: call.method, callArgs: call.arguments as Any, result: result)
    }

    // Create separate method to allow unit testing as we cannot mock "FlutterMethodCall"
    public func innerHandle(method: String, callArgs: Any, result: @escaping FlutterResult){

        // Rest API
        if(method == "cancel"){
            restAPIModule.onCancel(flutterResult: result, cancelToken: callArgs as! String)
            return
        }

        // Rest API check
        var arguments: [String: Any]

        do {
            try arguments = checkArguments(args: callArgs as Any)
        } catch {
            let errorMap = FlutterApiErrorUtils.createErrorMap(localizedError: "\(error.localizedDescription).\nAn unrecognized error has occurred", recoverySuggestion: "See logs for details")
            FlutterApiErrorUtils.createFlutterError(flutterResult: result, msg: FlutterApiErrorMessage.MALFORMED.rawValue, errorMap: errorMap)
            return
        }

        //let arguments = call.arguments as! Dictionary<String,AnyObject>
        switch method {
            case "get": restAPIModule.onGet(flutterResult: result, arguments: arguments)
            case "post": restAPIModule.onPost(flutterResult: result, arguments: arguments)
            case "put": restAPIModule.onPut(flutterResult: result, arguments: arguments)
            case "delete": restAPIModule.onDelete(flutterResult: result, arguments: arguments)
            case "head": restAPIModule.onHead(flutterResult: result, arguments: arguments)
            case "patch": restAPIModule.onPatch(flutterResult: result, arguments: arguments)

            case "query":
                FlutterGraphQLApiModule.query(flutterResult: result, request: arguments, bridge: bridge)
            case "mutate":
                FlutterGraphQLApiModule.mutate(flutterResult: result, request: arguments, bridge: bridge)
            default:
                result(FlutterMethodNotImplemented)
        }
    }
    private func checkArguments(args: Any) throws -> [String: Any] {

        guard let res = args as? [String: Any] else {
            throw DataStoreError.decodingError("Flutter method call arguments are not a map.",
                                               "Check the values that are being passed from Dart.")
        }
        return res
    }


    // ====== GraphQL ======
    func query(flutterResult: @escaping FlutterResult, request: [String: Any]) {
        do  {
            let document = try FlutterApiRequestUtils.getGraphQLDocument(methodChannelRequest: request)
            let variables = try FlutterApiRequestUtils.getVariables(methodChannelRequest: request)

            let request = GraphQLRequest<String>(document: document,
                                                 variables: variables,
                                                 responseType: String.self)

            Amplify.API.query(request: request) { result in
                switch result {
                case .success(let response):
                    switch response {
                    case .success(let data):
                        let result: [String: Any] = [
                            "data": data,
                            "errors": []
                        ]
                        print("GraphQL query operation succeeded with response : \(result)")
                        flutterResult(result)
                    case .failure(let errorResponse):
                        FlutterApiResponseUtils.handleGraphQLErrorResponse(flutterResult: flutterResult, errorResponse: errorResponse, failureMessage: FlutterApiErrorMessage.QUERY_FAILED.rawValue)
                    }
                case .failure(let apiError):
                    print("GraphQL query operation failed: \(apiError)")
                    FlutterApiErrorUtils.handleAPIError(flutterResult: flutterResult, error: apiError, msg: FlutterApiErrorMessage.QUERY_FAILED.rawValue)
                }}

        } catch let error as APIError {
            print("Failed to parse query arguments with \(error)")
            FlutterApiErrorUtils.handleAPIError(flutterResult: flutterResult, error: error, msg: FlutterApiErrorMessage.MALFORMED.rawValue)
        }
        catch {
            print("An unexpected error occured when parsing query arguments: \(error)")
            let errorMap = FlutterApiErrorUtils.createErrorMap(localizedError: "\(error.localizedDescription).\nAn unrecognized error has occurred", recoverySuggestion: "See logs for details")
            FlutterApiErrorUtils.createFlutterError(flutterResult: flutterResult, msg: FlutterApiErrorMessage.MALFORMED.rawValue, errorMap: errorMap)
        }
    }

    func mutate(flutterResult: @escaping FlutterResult, request: [String: Any]) {
        do  {
            let document = try FlutterApiRequestUtils.getGraphQLDocument(methodChannelRequest: request)
            let variables = try FlutterApiRequestUtils.getVariables(methodChannelRequest: request)

            let request = GraphQLRequest<String>(document: document,
                                                 variables: variables,
                                                 responseType: String.self)

            Amplify.API.mutate(request: request) { result in
                switch result {
                case .success(let response):
                    switch response {
                    case .success(let data):
                        let result: [String: Any] = [
                            "data": data,
                            "errors": []
                        ]
                        print("GraphQL mutate operation succeeded with response : \(result)")
                        flutterResult(result)
                    case .failure(let errorResponse):
                        FlutterApiResponseUtils.handleGraphQLErrorResponse(flutterResult: flutterResult, errorResponse: errorResponse, failureMessage: FlutterApiErrorMessage.MUTATE_FAILED.rawValue)
                    }
                case .failure(let apiError):
                    print("GraphQL mutate operation failed: \(apiError)")
                    FlutterApiErrorUtils.handleAPIError(flutterResult: flutterResult, error: apiError, msg: FlutterApiErrorMessage.MUTATE_FAILED.rawValue)
                }
            }
        } catch let error as APIError {
            print("Failed to parse mutate arguments with \(error)")
            FlutterApiErrorUtils.handleAPIError(flutterResult: flutterResult, error: error, msg: FlutterApiErrorMessage.MALFORMED.rawValue)
        }
        catch {
            print("An unexpected error occured when parsing mutate arguments: \(error)")
            let errorMap = FlutterApiErrorUtils.createErrorMap(localizedError: "\(error.localizedDescription).\nAn unrecognized error has occurred", recoverySuggestion: "See logs for details")
            FlutterApiErrorUtils.createFlutterError(flutterResult: flutterResult, msg: FlutterApiErrorMessage.MALFORMED.rawValue, errorMap: errorMap)
        }
    }
}
