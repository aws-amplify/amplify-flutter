//
//  FlutterSignUpResult.swift
//  Amplify
//
//  Created by Noyes, Dustin on 7/20/20.
//
import Flutter
import Foundation
import Amplify

struct FlutterSignUpResult  {
    var isSignUpComplete: Bool
    var signUpStep: String;
    var additionalInfo: [String: String]
    var codeDeliveryDetails: [String: String]

    init(res: AmplifyOperation<AuthSignUpRequest, AuthSignUpResult, AuthError>.OperationResult){
      self.isSignUpComplete = isComplete(res: res)
      self.signUpStep = setState(res: res)
      self.additionalInfo = setAdditionalInfo(res: res)
      self.codeDeliveryDetails = setCodeDeliveryDetails(res: res)
    }
    
    func toJSON() -> Dictionary<String, Any> {
       return [
         "isSignUpComplete": self.isSignUpComplete,
          "nextStep": [
              "signUpStep": self.signUpStep,
              "additionalInfo": self.additionalInfo,
              "codeDeliveryDetails": self.codeDeliveryDetails
          ]
       ]
   }
}

func isComplete(res: AmplifyOperation<AuthSignUpRequest, AuthSignUpResult, AuthError>.OperationResult) -> Bool {
  var complete: Bool = false;
  switch res {
    case .success(let signUpResult):
      complete = signUpResult.isSignupComplete
    case .failure:
      complete = false
  }
  return complete;
}

func setCodeDeliveryDetails(res: AmplifyOperation<AuthSignUpRequest, AuthSignUpResult, AuthError>.OperationResult) -> [String: String] {
    var deliveryMap: [String: String] = [:]
    switch res {
        case .success(let signUpResult):
          if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
            if case let .email(e) = deliveryDetails?.destination {
                  deliveryMap["destination"] = e! as String
                  deliveryMap["attributeName"] = "email"
                  deliveryMap["deliveryMedium"] = "EMAIL"
                }
            
                if case let .phone(e) = deliveryDetails?.destination {
                  deliveryMap["destination"] = e! as String
                  deliveryMap["attributeName"] = "phone"
                }
            
                if case let .sms(e) = deliveryDetails?.destination {
                  deliveryMap["destination"] = e! as String
                  deliveryMap["attributeName"] = "sms"
                  deliveryMap["deliveryMedium"] = "SMS"
                }
            
                if case let .unknown(e) = deliveryDetails?.destination {
                  deliveryMap["destination"] = e! as String
                  deliveryMap["attributeName"] = "unknown"
                }
          }
        case .failure:
            deliveryMap = [:]
    }
    return deliveryMap
}

func setAdditionalInfo(res:  AmplifyOperation<AuthSignUpRequest, AuthSignUpResult, AuthError>.OperationResult) -> [String: String] {
    var infoMap: [String: String] = [:]
    switch res {
        case .success(let signUpResult):
          if case let .confirmUser(_, additionalInfo) = signUpResult.nextStep {
            infoMap = additionalInfo ?? [:]
          }
        case .failure:
            infoMap = [:]
    }
    return infoMap
}

func setState(res: AmplifyOperation<AuthSignUpRequest, AuthSignUpResult, AuthError>.OperationResult) -> String {
    let state: String = "ERROR"
    switch res {
        case .success(let signUpResult):
          if case .done = signUpResult.nextStep {
             return  "DONE"
          }
          if case .confirmUser = signUpResult.nextStep {
            return "CONFIRM_SIGN_UP_STEP"
          }
        case .failure:
           return "ERROR"
    }
    return state
}
