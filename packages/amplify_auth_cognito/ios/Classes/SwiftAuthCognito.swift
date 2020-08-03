import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSCore

public class SwiftAuthCognito: NSObject, FlutterPlugin {
        
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/auth_cognito", binaryMessenger: registrar.messenger())
    let instance = SwiftAuthCognito()
    registrar.addMethodCallDelegate(instance, channel: channel)
    let authPlugin = AWSCognitoAuthPlugin()
    do {
      try Amplify.add(plugin: authPlugin)
    } catch {
      print("Failed to add AWSCognitoAuthPlugin to Amplify \(error)")
    }
  }


  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
      case "signUp":
        let arguments = call.arguments as! Dictionary<String, AnyObject>
        if (FlutterSignUpRequest.validate(dict: arguments["data"] as! NSMutableDictionary)) {
          let request = FlutterSignUpRequest(dict: arguments["data"] as! NSMutableDictionary)
          onSignUp(flutterResult: result, request: request)
        } else {
          print("SignUp Request was malformed.")
          let errorCode = "UNKNOWN"
            self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
        }
      case "confirmSignUp":
        let arguments = call.arguments as! Dictionary<String, AnyObject>
        if (FlutterConfirmSignUpRequest.validate(dict: arguments["data"] as! NSMutableDictionary)) {
          let  request = FlutterConfirmSignUpRequest(dict: arguments["data"] as! NSMutableDictionary)
          onConfirmSignUp(flutterResult: result, request: request)
        } else {
          print("ConfirmSignUp Request was malformed.")
          let errorCode = "UNKNOWN"
            self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
        }
      case "signIn":
        let arguments = call.arguments as! Dictionary<String, AnyObject>
        if (FlutterSignInRequest.validate(dict: arguments["data"] as! NSMutableDictionary)) {
          let  request = FlutterSignInRequest(dict: arguments["data"] as! NSMutableDictionary)
          onSignIn(flutterResult: result, request: request)
        } else {
          print("SignIn Request was malformed.")
          let errorCode = "UNKNOWN"
            self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
        }
      case "confirmSignIn":
        let arguments = call.arguments as! Dictionary<String, AnyObject>
        if (FlutterConfirmSignInRequest.validate(dict: arguments["data"] as! NSMutableDictionary)) {
          let  request = FlutterConfirmSignInRequest(dict: arguments["data"] as! NSMutableDictionary)
          onConfirmSignIn(flutterResult: result, request: request)
        } else {
          print("ConfirmSignIn Request was malformed.")
          let errorCode = "UNKNOWN"
            self.prepareError(flutterResult: result,  msg: FlutterAuthErrorMessage.MALFORMED.rawValue, errorMap: self.formatErrorMap(errorCode: errorCode))
        }
      case "signOut": 
        let arguments = call.arguments as! Dictionary<String, AnyObject>
        let dict = arguments["data"] != nil && !(arguments["data"] is NSNull) ? arguments["data"] as! NSMutableDictionary : NSMutableDictionary()
        let request = FlutterSignOutRequest(dict: dict)
        onSignOut(flutterResult: result, request: request)
      default:
        result(FlutterMethodNotImplemented)
    }
  }

  

  private func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest) {
    let options = AuthSignUpRequest.Options(userAttributes: request.userAttributes)

    _ = Amplify.Auth.signUp(username: request.getUsername(), password:request.password, options: options) { response in
        switch response {
       case .success:
        let signUpData = FlutterSignUpResult(res: response)
        flutterResult(signUpData.toJSON())
       case .failure(let signUpError):
        print("An error occurred while registering a user")
        if case .service( let localizedError,  let recoverySuggestion, let error) = signUpError {
            let errorCode = error != nil ? "\(error!)" : "UNKNOWN"
            var errorMap: [String: Any] = self.formatErrorMap(errorCode: errorCode, localizedError: localizedError)
            errorMap["PLATFORM_EXCEPTIONS"] = self.platformExceptions(localizedError: localizedError, recoverySuggestion: recoverySuggestion)
            self.prepareError(flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.SIGNUP.rawValue, errorMap: errorMap)
        }
      }
    }
  }

  private func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest) {
    _ = Amplify.Auth.confirmSignUp(for: request.username!, confirmationCode:request.confirmationCode!) { response in
     switch response {
       case .success:
        let signUpData = FlutterSignUpResult(res: response)
        flutterResult(signUpData.toJSON())
        
       case .failure(let signUpError):
        print("An error occurred while registering a user")
        if case .service( let localizedError,  let recoverySuggestion, let error) = signUpError {
            let errorCode = error != nil ? "\(error!)" : "UNKNOWN"
            var errorMap: [String: Any] = self.formatErrorMap(errorCode: errorCode, localizedError: localizedError)
            errorMap["PLATFORM_EXCEPTIONS"] = self.platformExceptions(localizedError: localizedError, recoverySuggestion: recoverySuggestion)
            self.prepareError(flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.SIGNUP.rawValue, errorMap: errorMap)
        }
      }
    }
  }

  private func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {
      _ = Amplify.Auth.signIn(username: request.username!, password:request.password!) { response in
        switch response {
          case .success:
          let signInData = FlutterSignInResult(res: response)
          flutterResult(signInData.toJSON())

          case .failure(let signInError):
          print("An error occurred while initiating auth")
          if case .service( let localizedError,  let recoverySuggestion, let error) = signInError {
              let errorCode = error != nil ? "\(error!)" : "UNKNOWN"
              var errorMap: [String: Any] = self.formatErrorMap(errorCode: errorCode, localizedError: localizedError)
              errorMap["PLATFORM_EXCEPTIONS"] = self.platformExceptions(localizedError: localizedError, recoverySuggestion: recoverySuggestion)
              self.prepareError(flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.SIGNUP.rawValue, errorMap: errorMap)
          }
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
         print("An error occurred while confirming a sign in")
         if case .service( let localizedError,  let recoverySuggestion, let error) = signInError {
             let errorCode = error != nil ? "\(error!)" : "UNKNOWN"
             var errorMap: [String: Any] = self.formatErrorMap(errorCode: errorCode, localizedError: localizedError)
             errorMap["PLATFORM_EXCEPTIONS"] = self.platformExceptions(localizedError: localizedError, recoverySuggestion: recoverySuggestion)
             self.prepareError(flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.SIGNUP.rawValue, errorMap: errorMap)
         }
       }
     }
   }
    
  private func onSignOut(flutterResult: @escaping FlutterResult, request: FlutterSignOutRequest) {
    _ = Amplify.Auth.signOut(options: request.options) { response in
      switch response {
        case .success:
        let signOutData = FlutterSignOutResult(res: response)
        flutterResult(signOutData.toJSON())

        case .failure(let signOutError):
        print("An error occurred while initiating auth")
        if case .service( let localizedError,  let recoverySuggestion, let error) = signOutError {
            let errorCode = error != nil ? "\(error!)" : "UNKNOWN"
            var errorMap: [String: Any] = self.formatErrorMap(errorCode: errorCode, localizedError: localizedError)
            errorMap["PLATFORM_EXCEPTIONS"] = self.platformExceptions(localizedError: localizedError, recoverySuggestion: recoverySuggestion)
            self.prepareError(flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.SIGNUP.rawValue, errorMap: errorMap)
        }
      }
    }
  }

  private func prepareError(flutterResult: FlutterResult, msg: String, errorMap: [String: Any]) {
    flutterResult(FlutterError(
      code: "AmplifyException",
      message: msg,
      details: errorMap))
  }
    
    private func platformExceptions(localizedError: String, recoverySuggestion: String) -> [String: String] {
      var platformDict: [String: String] = [:]
      platformDict["platform"] = "iOS"
      platformDict["localalizedError"] = localizedError
      platformDict["recoverySuggestion"] = recoverySuggestion
      return platformDict
    }
    
  private func formatErrorMap(errorCode: String, localizedError: String = "") -> [String: Any] {
      var errorDict: [String: Any] = [:]
      // should consider doing this with string manipulation, but that could be fragile
      switch errorCode {
        case "invalidParameter":
          errorDict["INVALID_PARAMETER"] = localizedError
        case "usernameExists":
          errorDict["USERNAME_EXISTS"] = localizedError
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
        case "tooManyFailedAttempts":
          errorDict["TOO_MANY_FAILED_ATTEMPTS"] = localizedError
        default:
          errorDict["UNKNOWN"] = "An unrecognized error has occurred. See logs for details."
      }
      return errorDict
  }
}

