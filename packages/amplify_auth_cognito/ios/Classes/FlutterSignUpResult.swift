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
