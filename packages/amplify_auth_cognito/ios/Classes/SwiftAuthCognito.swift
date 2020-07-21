import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import SwiftyJSON

public class SwiftAuthCognito: NSObject, FlutterPlugin {
    
  let signUpFailure = "Amplify SignUp Failed"
    
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
        let request = FlutterSignUpRequest(dict: arguments["data"] as! NSMutableDictionary)
        onSignUp(flutterResult: result, request: request)
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
        if case .service( _,  _, let error) = signUpError {
            let errorCode = error != nil ? "\(error!)" : "UNKNOWN"
            self.prepareError(flutterResult: flutterResult, error: signUpError, msg: self.signUpFailure, errorMap: self.formatErrorMap(errorCode: errorCode))
        }
      }
    }
  }

  private func prepareError(flutterResult: FlutterResult, error: Error, msg: String, errorMap: [String: Any]) {
        print("\(msg): \(error)?")
        
        flutterResult(FlutterError(
          code: "AmplifyException",
          message: msg,
          details: errorMap))
  }
    
    private func formatErrorMap(errorCode: String) -> [String: Any] {
        var errorDict: [String: Any] = [:]
        // should consider doing this with string manipulation, but that could be fragile
        switch errorCode {
          case "invalidParameter":
            errorDict["INVALID_PARAMETER"] = description;
        case "usernameExists":
            errorDict["USERNAME_EXISTS"] = description;
          case "aliasExists":
            errorDict["ALIAS_EXISTS"] = description;
          case "codeDeliveryFailure":
            errorDict["CODE_DELIVERY_FAILURE"] = description
          case "internalError":
            errorDict["INTERNAL_ERROR"] = description
          case "invalidLambdaResponse":
            errorDict["INVALID_LAMBDA_RESPONSE"] = description
          case "invalidPassword":
            errorDict["INVALID_PASSWORD"] = description
          case "notAuthorized":
            errorDict["NOT_AUTHORIZED"] = description
          case "resourceNotFound":
            errorDict["RESOURCE_NOT_FOUND"] = description
          case "tooManyRequests":
            errorDict["TOO_MANY_REQUESTS"] = description
          case "unexpectedLambda":
            errorDict["UNEXPECTED_LAMBDA"] = description
          case "userLambdaValidation":
            errorDict["USER_LAMBDA_VALIDATION"] = description
          case "tooManyFailedAttempts":
            errorDict["TOO_MANY_FAILED_ATTEMPTS"] = description
          default:
            errorDict["UNKNOWN"] = "An unrecognized Sign Up has occurred."
        }
        return errorDict
    }
}

