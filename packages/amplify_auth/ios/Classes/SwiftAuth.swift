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
       if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
         print("Delivery details \(String(describing: deliveryDetails))")
        do {
            let jsonEncoder = JSONEncoder()
            let jsonData = try jsonEncoder.encode(signUpResult)
            flutterResult(true)
        } catch {
            flutterResult(false)

        }
       } else {
         flutterResult(true)
       }
       case .failure(let error):
         print("An error occurred while registering a user \(error)")
         flutterResult(false)
      }
    }
  }
    
  private func getUsername(request: FlutterSignUpRequest) -> String {
    var username: String = ""
    if (request.usernameAttribute == nil && request.username != nil) {
        username = request.username!;
    } else {
        if (request.usernameAttribute != nil) {
            if (request.usernameAttribute == "email") {
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
         formattedAttributes.append(AuthUserAttribute(.custom("custom:" + attr.key), value: attr.value))
        }
    }
    return formattedAttributes
  }
}
