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
    var signUpState: String
    var additionalInfo: [String: String]
    var codeDeliveryDetails: [String: String]

    init(res: AmplifyOperation<AuthSignUpRequest, AuthSignUpResult, AuthError>.OperationResult){
      self.signUpState = setState(res: res)
      self.additionalInfo = setAdditionalInfo(res: res)
      self.codeDeliveryDetails = setCodeDeliveryDetails(res: res)
    }
    
    func toJSON() -> Dictionary<String, Any> {
       return [
         "signUpState": self.signUpState,
         "providerData": [
            "nextStep": [
                "additionalInfo": self.additionalInfo,
                "codeDeliveryDetails": self.codeDeliveryDetails
            ]
         ]

       ]
   }
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

func formatProviderData(res: AmplifyOperation<AuthSignUpRequest, AuthSignUpResult, AuthError>.OperationResult) -> NSMutableDictionary {
    let responseDict: NSMutableDictionary = [:]
    let providerDataDict: NSMutableDictionary = [:]
    let nextStepDict: NSMutableDictionary = [:]
    let codeDeliveryDetailsDict: NSMutableDictionary = [:]
    
    switch res {
        case .success(let signUpResult):
          if case .done = signUpResult.nextStep {
            responseDict["signUpState"] = "DONE"
            providerDataDict["isSignUpComplete"] = true
            responseDict["providerData"] = providerDataDict;
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
        
            return responseDict;
        }
        case .failure:
              responseDict["signUpState"] = "ERROR"
              return responseDict
    }
    
    return responseDict
}

