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
import AWSCore

public class SwiftAuthCognito: NSObject, FlutterPlugin {
    
    
    private var authEventSink: FlutterEventSink?
    private var token: UnsubscribeToken?
    private let cognito: AuthCognitoBridge
    private let authCognitoHubEventStreamHandler: AuthCognitoHubEventStreamHandler?
    var errorHandler = AuthErrorHandler()
    
    init(cognito: AuthCognitoBridge = AuthCognitoBridge(),
         authCognitoHubEventStreamHandler: AuthCognitoHubEventStreamHandler = AuthCognitoHubEventStreamHandler()) {
        self.cognito = cognito
        self.authCognitoHubEventStreamHandler = authCognitoHubEventStreamHandler
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/auth_cognito", binaryMessenger: registrar.messenger())
        let eventChannel = FlutterEventChannel(name: "com.amazonaws.amplify/auth_cognito_events", binaryMessenger: registrar.messenger())
        let instance = SwiftAuthCognito()
        registrar.addMethodCallDelegate(instance, channel: channel)
        let authPlugin = AWSCognitoAuthPlugin()
        eventChannel.setStreamHandler(instance.authCognitoHubEventStreamHandler)
        Amplify.Logging.logLevel = .error
        do {
            try Amplify.add(plugin: authPlugin)
        } catch {
            print("Failed to add AWSCognitoAuthPlugin to Amplify \(error)")
        }
    }
    
    private func checkArguments(args: Any) throws -> Dictionary<String, AnyObject> {
        guard let res = args as? Dictionary<String, AnyObject> else {
            throw AmplifyFlutterValidationException(errorDescription:  "Flutter method call arguments.data is not a map.", recoverySuggestion: "Check the values that are being passed from Dart.")
        }
        return res;
    }
    
    private func checkData(args: Dictionary<String, AnyObject>) throws -> NSMutableDictionary {
        guard let res = args["data"] as? NSMutableDictionary else {
            throw AmplifyFlutterValidationException(errorDescription:  "Flutter method call arguments.data is not a map.", recoverySuggestion: "Check the values that are being passed from Dart.")
        }
        return res;
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        var arguments: Dictionary<String, AnyObject> = [:]
        var data: NSMutableDictionary = [:]
        do {
            try arguments = checkArguments(args: call.arguments as Any)
            try data = checkData(args: arguments)
        } catch {
            self.errorHandler.prepareGenericException(flutterResult: result, underlyingError: error)
        }
        switch call.method {
        case "signUp":
            do {
                try FlutterSignUpRequest.validate(dict: data)
                let request = FlutterSignUpRequest(dict: data)
                cognito.onSignUp(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, underlyingError: error)
            }
        case "confirmSignUp":
            do {
                try FlutterConfirmSignUpRequest.validate(dict: data)
                let request = FlutterConfirmSignUpRequest(dict: data)
                cognito.onConfirmSignUp(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, underlyingError: error)
            }
        case "resendSignUpCode":
            do {
                try FlutterResendSignUpCodeRequest.validate(dict: data)
                let request = FlutterResendSignUpCodeRequest(dict: data)
                cognito.onResendSignUpCode(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, underlyingError: error)
            }
        case "signIn":
            do {
                try FlutterSignInRequest.validate(dict: data)
                let request = FlutterSignInRequest(dict: data)
                cognito.onSignIn(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, underlyingError: error)
            }
        case "confirmSignIn":
            do {
                try FlutterConfirmSignInRequest.validate(dict: data)
                let request = FlutterConfirmSignInRequest(dict: data)
                cognito.onConfirmSignIn(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, underlyingError: error)
            }
        case "signOut":
            let request = FlutterSignOutRequest(dict: data)
            cognito.onSignOut(flutterResult: result, request: request)
        case "updatePassword":
            do {
                try FlutterUpdatePasswordRequest.validate(dict: data)
                let request = FlutterUpdatePasswordRequest(dict: data)
                cognito.onUpdatePassword(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, underlyingError: error)
            }
        case "resetPassword":
            do {
                try FlutterResetPasswordRequest.validate(dict: data)
                let request = FlutterResetPasswordRequest(dict: data)
                cognito.onResetPassword(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, underlyingError: error)
            }
        case "confirmPassword":
            do {
                try FlutterConfirmPasswordRequest.validate(dict: data)
                let request = FlutterConfirmPasswordRequest(dict: data)
                cognito.onConfirmPassword(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, underlyingError: error)
            }
        case "fetchAuthSession":
            let request = FlutterFetchSessionRequest(dict: data)
            cognito.onFetchSession(flutterResult: result, request: request)
        case "getCurrentUser":
            cognito.onGetCurrentUser(flutterResult: result)
        case "signInWithWebUI":
            do {
                try FlutterSignInWithWebUIRequest.validate(dict: data)
                let request = FlutterSignInWithWebUIRequest(dict: data)
                if request.provider == nil {
                    cognito.onSignInWithWebUI(flutterResult: result)
                } else {
                    cognito.onSignInWithSocialWebUI(flutterResult: result, request: request)
                }
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, underlyingError: error)
            }
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}

extension SwiftAuthCognito: DefaultLogger { }
