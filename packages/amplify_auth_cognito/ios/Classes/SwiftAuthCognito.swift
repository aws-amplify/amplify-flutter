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

public class SwiftAuthCognito: NSObject, FlutterPlugin, FlutterStreamHandler {
    
    private var authEventSink: FlutterEventSink?
    private var token: UnsubscribeToken?
    private let cognito: AuthCognitoBridge
    
    init(cognito: AuthCognitoBridge = AuthCognitoBridge()) {
        self.cognito = cognito
    }
    
    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        token = Amplify.Hub.listen(to: .auth) { payload in
            switch payload.eventName {
            case HubPayload.EventName.Auth.signedIn:
                let hubEvent: Dictionary<String, Any> = ["eventName" : "SIGNED_IN"]
                events(hubEvent)
            case HubPayload.EventName.Auth.sessionExpired:
                let hubEvent: Dictionary<String, Any> = ["eventName" : "SESSION_EXPIRED"]
                events(hubEvent)
            case HubPayload.EventName.Auth.signedOut:
                let hubEvent: Dictionary<String, Any> = ["eventName" : "SIGNED_OUT"]
                events(hubEvent)
            default:
                break
            }
        }
        return nil
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        if (token != nil) {
            Amplify.Hub.removeListener(token!)
        }
        self.authEventSink = nil
        return nil
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/auth_cognito", binaryMessenger: registrar.messenger())
        let eventChannel = FlutterEventChannel(name: "com.amazonaws.amplify/auth_cognito_events", binaryMessenger: registrar.messenger())
        let instance = SwiftAuthCognito()
        registrar.addMethodCallDelegate(instance, channel: channel)
        let authPlugin = AWSCognitoAuthPlugin()
        eventChannel.setStreamHandler(instance)
        Amplify.Logging.logLevel = .error
        do {
            try Amplify.add(plugin: authPlugin)
        } catch {
            print("Failed to add AWSCognitoAuthPlugin to Amplify \(error)")
        }
    }
    
    private func checkArguments(args: Any) throws -> Dictionary<String, AnyObject> {
        guard let res = args as? Dictionary<String, AnyObject> else {
            throw AuthError.validation("arguments", "Flutter method call arguments are not a map.", "Check the values that are being passed from Dart.")
        }
        return res;
    }
    
    private func checkData(args: Dictionary<String, AnyObject>) throws -> NSMutableDictionary {
        guard let res = args["data"] as? NSMutableDictionary else {
            throw AuthError.validation("arguments", "Flutter method call arguments.data is not a map.", "Check the values that are being passed from Dart.")
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
            return prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: formatErrorMap(errorCode: "validation"))
        }
        switch call.method {
        case "signUp":
            if (FlutterSignUpRequest.validate(dict: data)) {
                let request = FlutterSignUpRequest(dict: data)
                cognito.onSignUp(flutterResult: result, request: request)
            } else {
                let errorCode = "UNKNOWN"
                prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: formatErrorMap(errorCode: errorCode))
            }
        case "confirmSignUp":
            if (FlutterConfirmSignUpRequest.validate(dict: data)) {
                let request = FlutterConfirmSignUpRequest(dict: data)
                cognito.onConfirmSignUp(flutterResult: result, request: request)
            } else {
                let errorCode = "UNKNOWN"
                prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: formatErrorMap(errorCode: errorCode))
            }
        case "resendSignUpCode":
            if (FlutterResendSignUpCodeRequest.validate(dict: data)) {
                let request = FlutterResendSignUpCodeRequest(dict: data)
                cognito.onResendSignUpCode(flutterResult: result, request: request)
            } else {
                let errorCode = "UNKNOWN"
                prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: formatErrorMap(errorCode: errorCode))
            }
        case "signIn":
            if (FlutterSignInRequest.validate(dict: data)) {
                let request = FlutterSignInRequest(dict: data)
                cognito.onSignIn(flutterResult: result, request: request)
            } else {
                let errorCode = "UNKNOWN"
                prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: formatErrorMap(errorCode: errorCode))
            }
        case "signInWithWebUI":
            if (FlutterSignInWithWebUIRequest.validate(dict: data)) {
            let request = FlutterSignInWithWebUIRequest(dict: data)
                cognito.onSignInWithWebUI(flutterResult: result, request: request)
            } else {
                let errorCode = "UNKNOWN"
                prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: formatErrorMap(errorCode: errorCode))
            }
        case "confirmSignIn":
            if (FlutterConfirmSignInRequest.validate(dict: data)) {
                let request = FlutterConfirmSignInRequest(dict: data)
                cognito.onConfirmSignIn(flutterResult: result, request: request)
            } else {
                let errorCode = "UNKNOWN"
                prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: formatErrorMap(errorCode: errorCode))
            }
        case "signOut":
            let request = FlutterSignOutRequest(dict: data)
            cognito.onSignOut(flutterResult: result, request: request)
        case "updatePassword":
            if (FlutterUpdatePasswordRequest.validate(dict: data)) {
                let  request = FlutterUpdatePasswordRequest(dict: data)
                cognito.onUpdatePassword(flutterResult: result, request: request)
            } else {
                let errorCode = "UNKNOWN"
                prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: formatErrorMap(errorCode: errorCode))
            }
        case "resetPassword":
            if (FlutterResetPasswordRequest.validate(dict: data)) {
                let request = FlutterResetPasswordRequest(dict: data)
                cognito.onResetPassword(flutterResult: result, request: request)
            } else {
                let errorCode = "UNKNOWN"
                prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: formatErrorMap(errorCode: errorCode))
            }
        case "confirmPassword":
            if (FlutterConfirmPasswordRequest.validate(dict: data)) {
                let request = FlutterConfirmPasswordRequest(dict: data)
                cognito.onConfirmPassword(flutterResult: result, request: request)
            } else {
                let errorCode = "UNKNOWN"
                prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: formatErrorMap(errorCode: errorCode))
            }
        case "fetchAuthSession":
            let request = FlutterFetchSessionRequest(dict: data)
            cognito.onFetchSession(flutterResult: result, request: request)
        case "getCurrentUser":
            cognito.onGetCurrentUser(flutterResult: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    static func logErrorContents(messages: Array<String>) {
        messages.forEach {
            log.error($0)
        }
    }
}

extension SwiftAuthCognito: DefaultLogger { }
