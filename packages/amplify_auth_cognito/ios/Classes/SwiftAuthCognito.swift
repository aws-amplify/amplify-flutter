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
      case "confirmSignUp":
        let arguments = call.arguments as! Dictionary<String, AnyObject>
        let  request = FlutterConfirmSignUpRequest(dict: arguments["data"] as! NSMutableDictionary)
        onConfirmSignUp(flutterResult: result, request: request)
      case "signIn":
        let arguments = call.arguments as! Dictionary<String, AnyObject>
        let request = FlutterSignInRequest(dict: arguments["data"] as! NSMutableDictionary)
        onSignIn(flutterResult: result, request: request);
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

  private func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest) {
    _ = Amplify.Auth.confirmSignUp(for: request.username!, confirmationCode:request.confirmationCode!) { response in
     switch response {
       case .success:
        let signUpData = FlutterSignUpResult(res: response)
        flutterResult(signUpData.toJSON())
        
       case .failure(let signUpError):
        print("An error occurred while registering a user")
        if case .service(_, _, let error) = signUpError {
            let errorCode = error != nil ? "\(error!)" : "UNKNOWN"
            self.prepareError(flutterResult: flutterResult, error: signUpError, msg: self.signUpFailure, errorMap: self.formatErrorMap(errorCode: errorCode ))
        }
      }
    }
  }

    private func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {
        _ = Amplify.Auth.signIn(username: request.username!, password:request.password!) { response in
         switch response {
           case .success(let signInResult):
            var responseDict: [String: Any] = [:]
            var providerDataDict: [String: Any] = [:]
            var nextStepDict: [String: Any] = [:]
            var codeDeliveryDetailsDict: [String: Any] = [:]
            if case .done = signInResult.nextStep {
                responseDict["signInState"] = "DONE"
                flutterResult(responseDict)
             }
            if case let .confirmSignInWithSMSMFACode(deliveryDetails, _) = signInResult.nextStep {
                if case let .sms(e) = deliveryDetails.destination {
                  codeDeliveryDetailsDict["destination"] = e! as String
                  codeDeliveryDetailsDict["attributeName"] = "sms"
                  codeDeliveryDetailsDict["deliveryMedium"] = "SMS"
                }
                responseDict["signInState"] = "CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE"
                nextStepDict["codeDeliveryDetails"] = codeDeliveryDetailsDict
                providerDataDict["nextStep"] = nextStepDict
                responseDict["providerData"] = providerDataDict
            }
            if case .confirmSignInWithCustomChallenge = signInResult.nextStep {
                
            }
            if case .confirmSignInWithNewPassword = signInResult.nextStep {
                
            }
            flutterResult(responseDict)

           case .failure(let signInError):
            print("An error occurred while initiating auth")
            if case .service(_, _, let error) = signInError {
                let errorCode = error != nil ? "\(error!)" : "UNKNOWN"
                self.prepareError(flutterResult: flutterResult, error: signInError, msg: self.signUpFailure, errorMap: self.formatErrorMap(errorCode: errorCode))
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
