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
<<<<<<< HEAD
      case "confirmSignUp":
        let arguments = call.arguments as! Dictionary<String, AnyObject>
        let  request = FlutterConfirmSignUpRequest(dict: arguments["data"] as! NSMutableDictionary)
        onConfirmSignUp(flutterResult: result, request: request)
      case "signIn":
        let arguments = call.arguments as! Dictionary<String, AnyObject>
        let request = FlutterSignInRequest(dict: arguments["data"] as! NSMutableDictionary)
        onSignIn(flutterResult: result, request: request);
=======
        onSignUp(flutterResult: result, request: request)
>>>>>>> amplify_auth
      default:
        result(FlutterMethodNotImplemented)
    }
  }

  private func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest) {
<<<<<<< HEAD
    let options = AuthSignUpRequest.Options(userAttributes: formatUserAttributes(attributes: request.userAttributes))
    let username = getUsername(request: request)

    _ = Amplify.Auth.signUp(username: username, password:request.password!, options: options) { response in
=======
        
    _ = Amplify.Auth.signUp(username: request.getUsername(), password:request.password, options:  AuthSignUpRequest.Options(userAttributes:request.userAttributes)) { response in
>>>>>>> amplify_auth
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

<<<<<<< HEAD
  private func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest) {
    _ = Amplify.Auth.confirmSignUp(for: request.username!, confirmationCode:request.confirmationCode!) { response in
     switch response {
       case .success(let signUpResult):
        if case .done = signUpResult.nextStep {
            var responseDict: [String: Any] = [:]
            let providerDataDict: [String: Any] = [:]
            responseDict["signUpState"] = "DONE"
            responseDict["providerData"] = providerDataDict;
            flutterResult(responseDict)
         }
       case .failure(let signUpError):
        print("An error occurred while registering a user")
        if case .service(_, _, _?) = signUpError {
            self.prepareError(flutterResult: flutterResult, error: signUpError, msg: self.signUpFailure, detail: signUpError.errorDescription)
        }
      }
    }
  }

    private func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {
        _ = Amplify.Auth.signIn(username: request.username!, password:request.password!) { response in
         switch response {
           case .success(let signUpResult):
            if case .done = signUpResult.nextStep {
                var responseDict: [String: Any] = [:]
                let providerDataDict: [String: Any] = [:]
                responseDict["signInState"] = "DONE"
                responseDict["providerData"] = providerDataDict;
                flutterResult(responseDict)
             }
           case .failure(let signUpError):
            print("An error occurred while registering a user")
            if case .service(let errorDescription, let recoverySuggestion, let error?) = signUpError {
                
                self.prepareError(flutterResult: flutterResult, error: signUpError, msg: self.signUpFailure, detail: signUpError.errorDescription)
            }
          }
        }
    }

  private func prepareError(flutterResult: FlutterResult, error: Error, msg: String, detail: String) {
=======
  private func prepareError(flutterResult: FlutterResult, error: Error, msg: String, errorMap: [String: Any]) {
>>>>>>> amplify_auth
        print("\(msg): \(error)?")
        flutterResult(FlutterError(
          code: "AmplifyException",
          message: msg,
          details: errorMap))
    }
<<<<<<< HEAD
    
  private func getUsername(request: FlutterSignUpRequest) -> String {
    var username: String = ""
    if (request.providerOptions?["usernameAttribute"] == nil && request.username != nil) {
        username = request.username!;
    } else {
        if (request.providerOptions?["usernameAttribute"] != nil) {
          if (request.providerOptions?["usernameAttribute"] as! String == "email") {
              username = request.userAttributes["email"]!
          } else {
              username = request.userAttributes["phone_number"]!
          }
        }
    }
    return username;
  }
    
  private func formatUserAttributes(attributes: Dictionary<String, String>) -> [AuthUserAttribute] {
    var formattedAttributes: Array<AuthUserAttribute> = Array()
    for attr in attributes {
      if (standardAttributes.contains(attr.key)) {
        formattedAttributes.append(AuthUserAttribute(.unknown(attr.key), value: attr.value))
      } else {
          formattedAttributes.append(AuthUserAttribute(.custom(attr.key), value: attr.value))
        }
    }
    return formattedAttributes
  }
=======
>>>>>>> amplify_auth
}
