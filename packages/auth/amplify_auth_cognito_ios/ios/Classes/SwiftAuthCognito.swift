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
import amplify_core

public class SwiftAuthCognito: NSObject, FlutterPlugin {
    
    private var authEventSink: FlutterEventSink?
    private var token: UnsubscribeToken?
    private let cognito: AuthCognitoBridge
    private let authCognitoHubEventStreamHandler: AuthCognitoHubEventStreamHandler?
    private let nullaryMethods: Set<String> = ["deleteUser"]
    var errorHandler = AuthErrorHandler()
    
    /// Handles calls to the Devices API.
    private let deviceHandler: DeviceHandler
    
    init(cognito: AuthCognitoBridge = AuthCognitoBridge(),
         authCognitoHubEventStreamHandler: AuthCognitoHubEventStreamHandler = AuthCognitoHubEventStreamHandler()) {
        self.cognito = cognito
        self.authCognitoHubEventStreamHandler = authCognitoHubEventStreamHandler
        self.deviceHandler = DeviceHandler(errorHandler: errorHandler)
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/auth_cognito", binaryMessenger: registrar.messenger())
        let eventChannel = FlutterEventChannel(name: "com.amazonaws.amplify/auth_cognito_events", binaryMessenger: registrar.messenger())
        let instance = SwiftAuthCognito()
        registrar.addMethodCallDelegate(instance, channel: channel)
        let authPlugin = AWSCognitoAuthPlugin()
        eventChannel.setStreamHandler(instance.authCognitoHubEventStreamHandler)
        Amplify.Logging.logLevel = .error
    }
    
    private func checkArguments(args: Any) throws -> Dictionary<String, AnyObject> {
        guard let res = args as? Dictionary<String, AnyObject> else {
            throw InvalidRequestError.auth(comment: "Flutter method call could not be cast.",
                                              suggestion: "arguments is not a Dictionary<String, AnyObject>")
        }
        return res;
    }
    
    private func checkData(args: Dictionary<String, AnyObject>) throws -> NSMutableDictionary {
        guard let res = args["data"] as? NSMutableDictionary else {
            throw InvalidRequestError.auth(comment:  "Flutter method call could not be cast",
                                              suggestion: "arguments['data'] is not a NSMutableDictionary")
        }
        return res;
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let result = AtomicResult(result, call.method)

        if(call.method == "addPlugin"){
            do {
                try Amplify.add(plugin: AWSCognitoAuthPlugin() )
                result(true)
            } catch let error{
                if(error is AuthError){
                    let authError = error as! AuthError

                    ErrorUtil.postErrorToFlutterChannel(
                        result: result,
                        errorCode: "AuthException",
                        details: [
                            "message" : authError.errorDescription,
                            "recoverySuggestion" : authError.recoverySuggestion,
                            "underlyingError": authError.underlyingError != nil ? authError.underlyingError!.localizedDescription : ""
                        ]
                    )
                } else if(error is ConfigurationError) {
                    let configError = error as! ConfigurationError
                    
                    var errorCode = "AuthException"
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
                    print("Failed to add Amplify Auth Plugin \(error)")
                    result(false)
                }
            }
            return
        }
        
        if (DeviceHandler.canHandle(call.method)) {
            deviceHandler.handle(call, result: result)
            return
        }
        
        var arguments: Dictionary<String, AnyObject> = [:]
        var data: NSMutableDictionary = [:]
    
        if (!nullaryMethods.contains(call.method)) {
            do {
                try arguments = checkArguments(args: call.arguments as Any)
                try data = checkData(args: arguments)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        }

        switch call.method {
        case "signUp":
            do {
                try FlutterSignUpRequest.validate(dict: data)
                let request = FlutterSignUpRequest(dict: data)
                cognito.onSignUp(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "confirmSignUp":
            do {
                try FlutterConfirmSignUpRequest.validate(dict: data)
                let request = FlutterConfirmSignUpRequest(dict: data)
                cognito.onConfirmSignUp(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "resendSignUpCode":
            do {
                try FlutterResendSignUpCodeRequest.validate(dict: data)
                let request = FlutterResendSignUpCodeRequest(dict: data)
                cognito.onResendSignUpCode(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "signIn":
            do {
                let request = FlutterSignInRequest(dict: data)
                cognito.onSignIn(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "confirmSignIn":
            do {
                try FlutterConfirmSignInRequest.validate(dict: data)
                let request = FlutterConfirmSignInRequest(dict: data)
                cognito.onConfirmSignIn(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "signOut":
            // signOut has no validation as there are no required params
            let request = FlutterSignOutRequest(dict: data)
            cognito.onSignOut(flutterResult: result, request: request)
        case "updatePassword":
            do {
                try FlutterUpdatePasswordRequest.validate(dict: data)
                let request = FlutterUpdatePasswordRequest(dict: data)
                cognito.onUpdatePassword(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "resetPassword":
            do {
                try FlutterResetPasswordRequest.validate(dict: data)
                let request = FlutterResetPasswordRequest(dict: data)
                cognito.onResetPassword(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "confirmResetPassword":
            do {
                try FlutterConfirmResetPasswordRequest.validate(dict: data)
                let request = FlutterConfirmResetPasswordRequest(dict: data)
                cognito.onConfirmResetPassword(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "fetchAuthSession":
            let request = FlutterFetchSessionRequest(dict: data)
            cognito.onFetchSession(flutterResult: result, request: request)
        case "getCurrentUser":
            cognito.onGetCurrentUser(flutterResult: result)
        case "fetchUserAttributes":
            cognito.onFetchUserAttributes(flutterResult: result)
        case "signInWithWebUI":
            do {
                try FlutterSignInWithWebUIRequest.validate(dict: data)
                let request = FlutterSignInWithWebUIRequest(dict: data)
                if request.provider == nil {
                    cognito.onSignInWithWebUI(flutterResult: result, request: request)
                } else {
                    cognito.onSignInWithSocialWebUI(flutterResult: result, request: request)
                }
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "updateUserAttribute":
            do {
                try FlutterUpdateUserAttributeRequest.validate(dict: data)
                let request = FlutterUpdateUserAttributeRequest(dict: data)
                cognito.onUpdateUserAttribute(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "updateUserAttributes":
            do {
                try FlutterUpdateUserAttributesRequest.validate(dict: data)
                let request = FlutterUpdateUserAttributesRequest(dict: data)
                cognito.onUpdateUserAttributes(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "confirmUserAttribute":
            do {
                try FlutterConfirmUserAttributeRequest.validate(dict: data)
                let request = FlutterConfirmUserAttributeRequest(dict: data)
                cognito.onConfirmUserAttribute(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "resendUserAttributeConfirmationCode":
            do {
                try FlutterResendUserAttributeConfirmationCodeRequest.validate(dict: data)
                let request = FlutterResendUserAttributeConfirmationCodeRequest(dict: data)
                cognito.onResendUserAttributeConfirmationCode(flutterResult: result, request: request)
            } catch {
                self.errorHandler.prepareGenericException(flutterResult: result, error: error)
            }
        case "deleteUser":
            cognito.onDeleteUser(flutterResult: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}

extension SwiftAuthCognito: DefaultLogger { }
