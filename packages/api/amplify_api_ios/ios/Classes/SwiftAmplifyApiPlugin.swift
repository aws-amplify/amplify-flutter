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

import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import amplify_flutter_ios
import AWSPluginsCore

public class SwiftAmplifyApiPlugin: NSObject, FlutterPlugin, NativeApiBridge {
    private let bridge: ApiBridge
    private let graphQLSubscriptionsStreamHandler: GraphQLSubscriptionsStreamHandler
    static var methodChannel: FlutterMethodChannel!

    init(
        bridge: ApiBridge = ApiBridge(),
        graphQLSubscriptionsStreamHandler: GraphQLSubscriptionsStreamHandler = GraphQLSubscriptionsStreamHandler()
    ) {
        self.bridge = bridge
        self.graphQLSubscriptionsStreamHandler = graphQLSubscriptionsStreamHandler
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        methodChannel = FlutterMethodChannel(
            name: "com.amazonaws.amplify/api",
            binaryMessenger: registrar.messenger())
        let eventchannel = FlutterEventChannel(
            name: "com.amazonaws.amplify/api_observe_events",
            binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyApiPlugin()
        eventchannel.setStreamHandler(instance.graphQLSubscriptionsStreamHandler)
        registrar.addMethodCallDelegate(instance, channel: methodChannel)
        NativeApiBridgeSetup(registrar.messenger(), instance)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let result = AtomicResult(result, call.method)

        innerHandle(method: call.method, callArgs: call.arguments as Any, result: result)
    }

    // Create separate method to allow unit testing as we cannot mock "FlutterMethodCall"
    public func innerHandle(method: String, callArgs: Any, result: @escaping FlutterResult) {
        do {
            if method == "cancel"{
                let cancelToken = try FlutterApiRequest.getCancelToken(args: callArgs)
                onCancel(flutterResult: result, cancelToken: cancelToken)
                return
            }

            let arguments = try FlutterApiRequest.getMap(args: callArgs)

            try innerHandle(method: method, arguments: arguments, result: result)
        } catch {
            print("Failed to parse query arguments with \(error)")
            FlutterApiErrorHandler.handleApiError(error: APIError(error: error), flutterResult: result)
        }
    }
    
    public func addPluginAuthProvidersList(_ authProvidersList: [String]) async -> FlutterError? {
        do {
            let authProviders = authProvidersList.compactMap {
                AWSAuthorizationType(rawValue: $0)
            }
            try Amplify.add(
                plugin: AWSAPIPlugin(
                    sessionFactory: FlutterURLSessionBehaviorFactory(),
                    apiAuthProviderFactory: FlutterAuthProviders(authProviders)))
            return nil
        } catch let apiError as APIError {
            return FlutterError(
                code: "APIException",
                message: apiError.localizedDescription,
                details: [
                    "message": apiError.errorDescription,
                    "recoverySuggestion": apiError.recoverySuggestion,
                    "underlyingError": apiError.underlyingError?.localizedDescription ?? ""
                ]
            )
        } catch let configError as ConfigurationError {
            var errorCode = "APIException"
            if case .amplifyAlreadyConfigured = configError {
                errorCode = "AmplifyAlreadyConfiguredException"
            }
            return FlutterError(
                code: errorCode,
                message: configError.localizedDescription,
                details: [
                    "message": configError.errorDescription,
                    "recoverySuggestion": configError.recoverySuggestion,
                    "underlyingError": configError.underlyingError?.localizedDescription ?? ""
                ]
            )
        } catch let e {
            return FlutterError(
                code: "UNKNOWN",
                message: e.localizedDescription,
                details: nil
            )
        }
    }

    private func innerHandle(
        method: String,
        arguments: [String: Any],
        result: @escaping FlutterResult
    ) throws {
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
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    public func onCancel(flutterResult: @escaping FlutterResult, cancelToken: String) {
        if OperationsManager.containsOperation(cancelToken: cancelToken) {
            OperationsManager.cancelOperation(cancelToken: cancelToken)
            flutterResult("Operation Canceled")
        } else {
            flutterResult(FlutterError(
                            code: "AmplifyAPI-CancelError",
                            message: """
                            The Operation may have already been completed or expired and cannot \
                            be canceled anymore
                            """,
                            details: "Operation does not exist"))
        }
    }
}
