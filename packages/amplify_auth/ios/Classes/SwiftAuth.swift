import Flutter
import UIKit
import Amplify
import AmplifyPlugins

public class SwiftAuth: NSObject, FlutterPlugin {
    
  let standardAttributes = ["address", "birthdate", "email", "family_name", "gender", "given_name", "locale", "middle_name", "name", "nickname", "phone_number", "preferred_username", "picture", "profile", "updated_at", "website", "zoneinfo"]
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/auth", binaryMessenger: registrar.messenger())
    let instance = SwiftAuth()
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
    let options = AuthSignUpRequest.Options(userAttributes: formatUserAttributes(attributes: request.userAttributes))
    let username = getUsername(request: request)

    _ = Amplify.Auth.signUp(username: username, password:request.password!, options: options) { response in
     switch response {
       case .success(let signUpResult):
        if case let .done = signUpResult.nextStep {
            var responseDict: [String: Any] = [:]
            var providerDataDict: [String: Any] = [:]
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
        
            do {
              let json = try JSONSerialization.data(withJSONObject: responseDict, options: JSONSerialization.WritingOptions.prettyPrinted)
              let decoded = try JSONSerialization.jsonObject(with: json, options: [])
                flutterResult(responseDict);
            } catch {
                print("Failed to serialize SignUpResult \(error)")
                flutterResult(FlutterError(code: "AmplifyException",
                        message: "Failed to serialize SignUpResult ",
                        details: error))
            }
        }
       case .failure(let signUpResult):
        print("An error occurred while registering a user")
        if case let .service(ErrorDescription, RecoverySuggestion, Error?) = signUpResult {
            flutterResult(FlutterError(code: "AmplifyException",
                                       message: signUpResult.localizedDescription,
                                       details: signUpResult.errorDescription + " " + signUpResult.recoverySuggestion))
        }
      }
        
    }
  }
    
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
}
