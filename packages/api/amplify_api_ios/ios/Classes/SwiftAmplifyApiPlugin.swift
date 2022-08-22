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
    static var methodChannel: FlutterMethodChannel!

    public static func register(with registrar: FlutterPluginRegistrar) {
        methodChannel = FlutterMethodChannel(
            name: "com.amazonaws.amplify/api",
            binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyApiPlugin()

        registrar.addMethodCallDelegate(instance, channel: methodChannel)
        NativeApiBridgeSetup(registrar.messenger(), instance)
    }
   
    public func addPluginAuthProvidersList(_ authProvidersList: [String]) async -> FlutterError? {
        do {
            let authProviders = authProvidersList.compactMap {
                AWSAuthorizationType(rawValue: $0)
            }
            try Amplify.add(
                plugin: AWSAPIPlugin(
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
}
