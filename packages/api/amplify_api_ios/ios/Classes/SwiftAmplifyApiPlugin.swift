// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import amplify_flutter_ios
import AWSPluginsCore

public class SwiftAmplifyApiPlugin: NSObject, FlutterPlugin, NativeApiBridge {
    /// Configured via `pigeon` and supports getting auth tokens from Dart when using OIDC/Lambda
    /// auth modes with Datastore until Datastore implemented in Dart.
    static var nativeApiPlugin: NativeApiPlugin!
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        nativeApiPlugin = NativeApiPlugin(binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyApiPlugin()

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
