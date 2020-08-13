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
    
    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        _ = Amplify.Hub.listen(to: .auth) { payload in
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
        return self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: "validation"))
    }
    switch call.method {
      case "signUp":
        if (FlutterSignUpRequest.validate(dict: data)) {
          let request = FlutterSignUpRequest(dict: data)
          onSignUp(flutterResult: result, request: request)
        } else {
          let errorCode = "UNKNOWN"
            self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
        }
      case "confirmSignUp":
        if (FlutterConfirmSignUpRequest.validate(dict: data)) {
          let request = FlutterConfirmSignUpRequest(dict: data)
          onConfirmSignUp(flutterResult: result, request: request)
        } else {
          let errorCode = "UNKNOWN"
            self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
        }
       case "resendSignUpCode":
          if (FlutterResendSignUpCodeRequest.validate(dict: data)) {
            let request = FlutterResendSignUpCodeRequest(dict: data)
            onResendSignUpCode(flutterResult: result, request: request)
          } else {
            let errorCode = "UNKNOWN"
              self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
          }
      case "signIn":
        if (FlutterSignInRequest.validate(dict: data)) {
          let request = FlutterSignInRequest(dict: data)
          onSignIn(flutterResult: result, request: request)
        } else {
          let errorCode = "UNKNOWN"
            self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
        }
      case "confirmSignIn":
        if (FlutterConfirmSignInRequest.validate(dict: data)) {
          let request = FlutterConfirmSignInRequest(dict: data)
          onConfirmSignIn(flutterResult: result, request: request)
        } else {
          let errorCode = "UNKNOWN"
            self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
        }
      case "signOut":
        let request = FlutterSignOutRequest(dict: data)
        onSignOut(flutterResult: result, request: request)
      case "updatePassword":
        if (FlutterUpdatePasswordRequest.validate(dict: data)) {
          let  request = FlutterUpdatePasswordRequest(dict: data)
          onUpdatePassword(flutterResult: result, request: request)
        } else {
          let errorCode = "UNKNOWN"
            self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
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
        case "fetchAuthSession":
            let request = FlutterFetchSessionRequest(dict: data)
            onFetchSession(flutterResult: result, request: request)
        default:
          result(FlutterMethodNotImplemented)
    }
  }

  private func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest) {
    let options = AuthSignUpRequest.Options(userAttributes: request.userAttributes)

    _ = Amplify.Auth.signUp(username: request.username, password:request.password, options: options) { response in
        switch response {
       case .success:
         let signUpData = FlutterSignUpResult(res: response)
         flutterResult(signUpData.toJSON())
       case .failure(let signUpError):
         self.handleAuthError(error: signUpError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.SIGNUP.rawValue)
      }
    }
  }

  private func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest) {
    _ = Amplify.Auth.confirmSignUp(for: request.username, confirmationCode:request.confirmationCode) { response in
     switch response {
       case .success:
         let signUpData = FlutterSignUpResult(res: response)
         flutterResult(signUpData.toJSON())
        
       case .failure(let signUpError):
         self.handleAuthError(error: signUpError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.CONFIRM_SIGNUP.rawValue)
      }
    }
  }
    
  private func onResendSignUpCode(flutterResult: @escaping FlutterResult, request: FlutterResendSignUpCodeRequest) {
    _ = Amplify.Auth.resendSignUpCode(for: request.username) { response in
      switch response {
          case .success:
            let resendData = FlutterResendSignUpCodeResult(res: response)
            flutterResult(resendData.toJSON())
          case .failure(let signUpError):
            self.handleAuthError(error: signUpError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.RESEND_SIGNUP.rawValue)
      }
    }
  }

  private func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {
    _ = Amplify.Auth.signIn(username: request.username, password:request.password) { response in
      switch response {
        case .success:
        let signInData = FlutterSignInResult(res: response)
        flutterResult(signInData.toJSON())
          case .failure(let signInError):
          self.handleAuthError(error: signInError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.SIGNIN.rawValue)
        }
     }
  }
    
  private func onConfirmSignIn(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignInRequest) {
    _ = Amplify.Auth.confirmSignIn(challengeResponse: request.confirmationCode) { response in
     switch response {
       case .success:
         let signInData = FlutterSignInResult(res: response)
         flutterResult(signInData.toJSON())
       case .failure(let signInError):
         self.handleAuthError(error: signInError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.CONFIRM_SIGNIN.rawValue)
       }
     }
   }
    
  private func onSignOut(flutterResult: @escaping FlutterResult, request: FlutterSignOutRequest) {
    _ = Amplify.Auth.signOut(options: request.options) { response in
      switch response {
        case .success:
          let emptyMap: Dictionary<String, Any> = [:]
          flutterResult(emptyMap)

        case .failure(let signOutError):
        self.handleAuthError(error: signOutError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.SIGNOUT.rawValue)
      }
    }
  }
    
  private func onUpdatePassword(flutterResult: @escaping FlutterResult, request: FlutterUpdatePasswordRequest) {
    _ = Amplify.Auth.update(oldPassword: request.oldPassword, to: request.newPassword) { response in
     switch response {
       case .success:
        let emptyMap: Dictionary<String, Any> = [:]
        flutterResult(emptyMap)
        
       case .failure(let updatePasswordError):
        self.handleAuthError(error: updatePasswordError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.UPDATE_PASSWORD.rawValue)
      }
    }
  }
    
    private func onResetPassword(flutterResult: @escaping FlutterResult, request: FlutterResetPasswordRequest) {
        _ = Amplify.Auth.resetPassword(for: request.username) { response in
       switch response {
         case .success:
          let resetData = FlutterResetPasswordResult(res: response)
          flutterResult(resetData.toJSON())
          
         case .failure(let resetPasswordError):
          self.handleAuthError(error: resetPasswordError, flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.RESET_PASSWORD.rawValue)
        }
      }
    }

    private func onConfirmPassword(flutterResult: @escaping FlutterResult, request: FlutterConfirmPasswordRequest) {
        _ = Amplify.Auth.confirmResetPassword(for: request.username, with: request.newPassword, confirmationCode: request.confirmationCode) { response in
       switch response {
         case .success:
           let emptyMap: Dictionary<String, Any> = [:]
           flutterResult(emptyMap)
          
         case .failure(let resetPasswordError):
          self.handleAuthError(error: resetPasswordError, flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.RESET_PASSWORD.rawValue)
        }
      }
    }
    
    private func onFetchSession(flutterResult: @escaping FlutterResult, request: FlutterFetchSessionRequest) {
      _ = Amplify.Auth.fetchAuthSession { result in
        do {
            if (request.getAWSCredentials) {
                let sessionData = try FlutterFetchCognitoSessionResult(res: result)
                flutterResult(sessionData.toJSON())
            } else {
                let sessionData = try FlutterFetchSessionResult(res: result)
                flutterResult(sessionData.toJSON())
            }

        } catch {
            self.handleAuthError(error: error as! AuthError, flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.FETCH_SESSION.rawValue)
        }
      }
    }
    
    private func handleAuthError(error: AuthError, flutterResult: FlutterResult, msg: String){
        if case .service( let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "unknown"
          logErrorConents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .configuration(let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "configuration"
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .unknown(let localizedError, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "unknown"
          logErrorConents(messages: [localizedError, "unknown error"])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: "An unknown error has occurred.")
        }
        if case .invalidState(let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "invalidState"
          logErrorConents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .notAuthorized(let localizedError,  let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "notAuthorized"
          logErrorConents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .validation(let field, let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "validation"
          logErrorConents(messages: [field, localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .signedOut(let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "signedOut"
          logErrorConents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
        if case .sessionExpired(let localizedError, let recoverySuggestion, let error) = error {
          let errorCode = error != nil ? "\(error!)" : "sessionExpired"
          logErrorConents(messages: [localizedError, recoverySuggestion, errorCode])
          formatError(flutterResult: flutterResult, errorCode: errorCode, msg: msg, localizedError: localizedError, recoverySuggestion: recoverySuggestion)
        }
    }
    
    private func formatError(flutterResult: FlutterResult, errorCode: String, msg: String, localizedError: String, recoverySuggestion: String) {
      var errorMap: [String: Any] = formatErrorMap(errorCode: errorCode, localizedError: localizedError)
      errorMap["PLATFORM_EXCEPTIONS"] = platformExceptions(localizedError: localizedError, recoverySuggestion: recoverySuggestion)
      prepareError(flutterResult: flutterResult,  msg: msg, errorMap: errorMap)
    }
    
    private func logErrorConents(messages: Array<String>) {
      messages.forEach {
        log.error($0)
      }
    }

    private func prepareError(flutterResult: FlutterResult, msg: String, errorMap: [String: Any]) {
      flutterResult(FlutterError(
        code: "AmplifyException",
        message: msg,
        details: errorMap)
      )
    }
    
    private func platformExceptions(localizedError: String, recoverySuggestion: String) -> [String: String] {
      var platformDict: [String: String] = [:]
      platformDict["platform"] = "iOS"
      platformDict["localizedErrorMessage"] = localizedError
      platformDict["recoverySuggestion"] = recoverySuggestion
      return platformDict
    }
    
  private func formatErrorMap(errorCode: String, localizedError: String = "") -> [String: Any] {
      var errorDict: [String: Any] = [:]
      switch errorCode {
        case "codeExpired":
          errorDict["CODE_EXPIRED"] = localizedError
        case "codeMismatch":
          errorDict["CODE_MISMATCH"] = localizedError
        case "invalidParameter":
          errorDict["INVALID_PARAMETER"] = localizedError
        case "mfaMethodNotFound":
          errorDict["MFA_METHOD_NOT_FOUND"] = localizedError
        case "passwordResetRequired":
          errorDict["PASSWORD_RESET_REQUIRED"] = localizedError
        case "softwareTokenMFANotEnabled":
          errorDict["SOFTWARE_TOKEN_MFA_NOT_FOUND"] = localizedError
        case "usernameExists":
          errorDict["USERNAME_EXISTS"] = localizedError
        case "userNotConfirmed":
          errorDict["USER_NOT_CONFIRMED"] = localizedError
        case "userNotFound":
          errorDict["USER_NOT_FOUND"] = localizedError
        case "aliasExists":
          errorDict["ALIAS_EXISTS"] = localizedError
        case "codeDeliveryFailure":
          errorDict["CODE_DELIVERY_FAILURE"] = localizedError
        case "internalError":
          errorDict["INTERNAL_ERROR"] = localizedError
        case "invalidLambdaResponse":
          errorDict["INVALID_LAMBDA_RESPONSE"] = localizedError
        case "invalidPassword":
          errorDict["INVALID_PASSWORD"] = localizedError
        case "notAuthorized":
          errorDict["NOT_AUTHORIZED"] = localizedError
        case "resourceNotFound":
          errorDict["RESOURCE_NOT_FOUND"] = localizedError
        case "tooManyRequests":
          errorDict["TOO_MANY_REQUESTS"] = localizedError
        case "unexpectedLambda":
          errorDict["UNEXPECTED_LAMBDA"] = localizedError
        case "userLambdaValidation":
          errorDict["USER_LAMBDA_VALIDATION"] = localizedError
        case "requestLimitExceeded":
          errorDict["REQUEST_LIMIT_EXCEEDED"] = localizedError
        case "tooManyFailedAttempts":
          errorDict["TOO_MANY_FAILED_ATTEMPTS"] = localizedError
        case "invalidState":
          errorDict["INVALID_STATE"] = localizedError
        case "signedOut":
          errorDict["SIGNED_OUT"] = localizedError
        case "configuration":
          errorDict["CONFIGURATION"] = localizedError
        case "validation":
          errorDict["VALIDATION"] = localizedError
        default:
          errorDict["UNKNOWN"] = "An unrecognized error has occurred. See logs for details."
      }
      return errorDict
  }
}

extension SwiftAuthCognito: DefaultLogger { }
