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

import Foundation
import Amplify

struct FlutterSignInResult  {
    var isSignedIn: Bool
    var signInStep: String
    var additionalInfo: [String: String]
    var codeDeliveryDetails: [String: String]

    init(res: AmplifyOperation<AuthSignInRequest, AuthSignInResult, AuthError>.OperationResult){
      self.isSignedIn = isComplete(res: res)
      self.signInStep = setState(res: res)
      self.additionalInfo = setAdditionalInfo(res: res)
      self.codeDeliveryDetails = setCodeDeliveryDetails(res: res)
    }
    
    func toJSON() -> Dictionary<String, Any> {
      return [
        "isSignedIn": self.isSignedIn,
        "nextStep": [
            "signInStep": self.signInStep,
            "additionalInfo": self.additionalInfo,
            "codeDeliveryDetails": self.codeDeliveryDetails
        ]
      ]
   }
}

func isComplete(res: AmplifyOperation<AuthSignInRequest, AuthSignInResult, AuthError>.OperationResult) -> Bool {
  var complete: Bool = false;
  switch res {
    case .success(let signInResult):
      complete = signInResult.isSignedIn
    case .failure:
      complete = false
  }
  return complete;
}

func setCodeDeliveryDetails(res: AmplifyOperation<AuthSignInRequest, AuthSignInResult, AuthError>.OperationResult) -> [String: String] {
    var deliveryMap:[String: String] = [:]
    switch res {
        case .success(let signInResult):
          if case let .confirmSignInWithSMSMFACode(deliveryDetails, _) = signInResult.nextStep {
            if case let .sms(e) = deliveryDetails.destination {
              deliveryMap["destination"] = e! as String
              deliveryMap["attributeName"] = ""
              deliveryMap["deliveryMedium"] = "SMS"
            }
          }
          if case .resetPassword(_) = signInResult.nextStep {
            deliveryMap = ["deliveryMedium" : "UNKNOWN"]
          }
          if case .confirmSignInWithCustomChallenge(_) = signInResult.nextStep {
            deliveryMap = [:] 
          }
          if case .confirmSignInWithNewPassword(_) = signInResult.nextStep {
            deliveryMap = [:] 
          }
          if case .done = signInResult.nextStep {
            deliveryMap = [:] 
          }
        case .failure:
            deliveryMap = [:]
    }
    return deliveryMap
}

func setAdditionalInfo(res:  AmplifyOperation<AuthSignInRequest, AuthSignInResult, AuthError>.OperationResult) -> [String: String] {
    var infoMap: [String: String] = [:]
    switch res {
        case .success(let signInResult):
          if case let .confirmSignInWithSMSMFACode(_, additionalInfo) = signInResult.nextStep {
            infoMap = additionalInfo ?? [:]
          }
          if case let .resetPassword(additionalInfo) = signInResult.nextStep {
            infoMap = additionalInfo ?? [:]
          }
          if case let .confirmSignInWithCustomChallenge(additionalInfo) = signInResult.nextStep {
            infoMap = additionalInfo ?? [:]
          }
          if case let .confirmSignInWithNewPassword(additionalInfo) = signInResult.nextStep {
            infoMap = additionalInfo ?? [:]
          }
          if case .done = signInResult.nextStep {
            infoMap =  [:]
          }
        case .failure:
            infoMap = [:]
    }
    return infoMap
}

func setState(res: AmplifyOperation<AuthSignInRequest, AuthSignInResult, AuthError>.OperationResult) -> String {
    let state: String = "ERROR"
    switch res {
        case .success(let signInResult):
          if case .done = signInResult.nextStep {
             return  "DONE"
          }
          if case .confirmSignInWithSMSMFACode = signInResult.nextStep {
            return "CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE"
          }
          if case .confirmSignInWithNewPassword = signInResult.nextStep {
            return "CONFIRM_SIGN_IN_WITH_NEW_PASSWORD"
          }
          if case .confirmSignInWithCustomChallenge = signInResult.nextStep {
            return "CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE"
          }
          if case .resetPassword = signInResult.nextStep {
            return "RESET_PASSWORD"
          }
        case .failure:
           return "ERROR"
    }
    return state
}
