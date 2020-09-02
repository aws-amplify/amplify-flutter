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
      case "resetPassword":
          if (FlutterResetPasswordRequest.validate(dict: data)) {
            let request = FlutterResetPasswordRequest(dict: data)
            onResetPassword(flutterResult: result, request: request)
          } else {
            let errorCode = "UNKNOWN"
              self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
          }
        case "confirmPassword":
          if (FlutterConfirmPasswordRequest.validate(dict: data)) {
            let request = FlutterConfirmPasswordRequest(dict: data)
            onConfirmPassword(flutterResult: result, request: request)
          } else {
            let errorCode = "UNKNOWN"
              self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
          }
        case "signInWithWebUI":
          if (FlutterSignInWithWebUIRequest.validate(dict: data)) {
            let request = FlutterSignInWithWebUIRequest(dict: data)
            onSignInWithWebUI(flutterResult: result, request: request)
          } else {
            let errorCode = "UNKNOWN"
              self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
          }
        case "fetchAuthSession":
            let request = FlutterFetchSessionRequest(dict: data)
            onFetchSession(flutterResult: result, request: request)
        case "getCurrentUser":
            onGetCurrentUser(flutterResult: result)
        default:
          result(FlutterMethodNotImplemented)
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
    
    private func onSignInWithWebUI(flutterResult: @escaping FlutterResult, request: FlutterSignInWithWebUIRequest) {
        
        if(request.provider == nil) {
          Amplify.Auth.signInWithWebUI(presentationAnchor: UIApplication.shared.keyWindow!) { result in
            switch result {
            case .success:
              flutterResult(true)
            case .failure(let error):
              self.handleAuthError(error: error , flutterResult: flutterResult, msg: FlutterAuthErrorMessage.SIGNIN_WITH_WEBUI.rawValue)
            }
          }
        } else {
            Amplify.Auth.signInWithWebUI(for: request.provider!, presentationAnchor: UIApplication.shared.keyWindow!) { result in
              switch result {
              case .success:
                flutterResult(true)
              case .failure(let error):
                self.handleAuthError(error: error , flutterResult: flutterResult, msg: FlutterAuthErrorMessage.SIGNIN_WITH_WEBUI.rawValue)
              }
            }
        }
    }
    
    private func onSignInWithWebUI(flutterResult: @escaping FlutterResult, request: FlutterSignInWithWebUIRequest) {
        Amplify.Auth.signInWithWebUI(presentationAnchor: self.view.window!) { result in
            switch result {
            case .success:
                print("Sign in succeeded")
            case .failure(let error):
                print("Sign in failed \(error)")
            }
        }
    }
    
    private func handleAuthError(error: AuthError, flutterResult: FlutterResult, msg: String){
        if case .service( let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "unknown"
          logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .configuration(let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "configuration"
          logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .unknown(let localizedError, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "unknown"
          logErrorContents(messages: [localizedError, "unknown error"])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: "An unknown error has occurred.")
        }
        if case .invalidState(let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "invalidState"
          logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .notAuthorized(let localizedError,  let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "notAuthorized"
          logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .validation(let field, let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "validation"
          logErrorContents(messages: [field, localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .signedOut(let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "signedOut"
          logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .sessionExpired(let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "sessionExpired"
          logErrorContents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
    }
}

extension SwiftAuthCognito: DefaultLogger { }
