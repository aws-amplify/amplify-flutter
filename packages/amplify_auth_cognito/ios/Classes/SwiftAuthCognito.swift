import Flutter
import UIKit
import Amplify
import AmplifyPlugins

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
        
    _ = Amplify.Auth.signUp(username: request.getUsername(), password:request.password, options:  AuthSignUpRequest.Options(userAttributes:request.userAttributes)) { response in
     switch response {
       case .success(let signUpResult):
        if case .done = signUpResult.nextStep {
            var responseDict: [String: Any] = [:]
            let providerDataDict: [String: Any] = [:]
            responseDict["signUpState"] = "DONE"
            responseDict["providerData"] = providerDataDict;
            flutterResult(responseDict)
         }
         if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
            /* 
               The following code is accounting for the fact that swift auth types
               currently don't conform to codeable, as well as mismatches between ios
               and android response data/enums.  If swift auth types were to become codeable,
               we could potentially deal with mismatches on the dart side and simply serialize
               the whole response type here.

               TODO: IMPROVE THIS
            */
            var responseDict: [String: Any] = [:]
            var providerDataDict: [String: Any] = [:]
            var nextStepDict: [String: Any] = [:]
            var codeDeliveryDetailsDict: [String: Any] = [:]
            responseDict["signUpState"] = "CONFIRM_SIGN_UP_STEP"

            
            if case let .email(e) = deliveryDetails?.destination {
              codeDeliveryDetailsDict["destination"] = e! as String
              codeDeliveryDetailsDict["attributeName"] = "email"
              codeDeliveryDetailsDict["deliveryMedium"] = "EMAIL"
            }
        
            if case let .phone(e) = deliveryDetails?.destination {
              codeDeliveryDetailsDict["destination"] = e! as String
              codeDeliveryDetailsDict["attributeName"] = "phone"
            }
        
            if case let .sms(e) = deliveryDetails?.destination {
              codeDeliveryDetailsDict["destination"] = e! as String
              codeDeliveryDetailsDict["attributeName"] = "sms"
              codeDeliveryDetailsDict["deliveryMedium"] = "SMS"
            }
        
            if case let .unknown(e) = deliveryDetails?.destination {
              codeDeliveryDetailsDict["destination"] = e! as String
              codeDeliveryDetailsDict["attributeName"] = "unknown"
            }
        
            nextStepDict["codeDeliveryDetails"] = codeDeliveryDetailsDict
            providerDataDict["nextStep"] = nextStepDict
            responseDict["providerData"] = providerDataDict
        
            flutterResult(responseDict);
        }
       case .failure(let signUpError):
        print("An error occurred while registering a user")
        if case .service(let description, let suggestion, let error?) = signUpError {
          var errorDict: [String: Any] = [:]
          // should consider doing this with string manipulation, but that could be fragile
          switch "\(error)" {
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
          self.prepareError(flutterResult: flutterResult, error: signUpError, msg: self.signUpFailure, errorMap: errorDict)
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
}
