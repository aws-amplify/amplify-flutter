
/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

struct FlutterUpdateUserAttributeResult {
    var result: AuthUpdateAttributeResult?

    init(res: AmplifyOperation<AuthUpdateUserAttributeRequest, AuthUpdateAttributeResult, AuthError>.OperationResult){
      self.isUpdated = isComplete(res: res)
      self.updateAttributeStep = setState(res: res)
      self.additionalInfo = setAdditionalInfo(res: res)
      self.codeDeliveryDetails = setCodeDeliveryDetails(res: res)
    }

    func toJSON() -> Dictionary<String, Any> {
      var result: Dictionary<String, Any> = ["isUpdated": self.isUpdated]
      var nextStep: Dictionary<String, Any> = ["updateAttributeStep": self.updateAttributeStep]

      if (!self.codeDeliveryDetails.isEmpty) {
        nextStep["codeDeliveryDetails"] = self.codeDeliveryDetails
      }

      if (!self.additionalInfo.isEmpty) {
        nextStep["additionalInfo"] = self.additionalInfo
      }

      result["nextStep"] = nextStep

      return result
    }
}

func isComplete(res: AmplifyOperation<AuthUpdateUserAttributeRequest, AuthUpdateAttributeResult, AuthError>.OperationResult) -> Bool {
  var complete: Bool = false;
  switch res {
    case .success(let signUpResult):
      complete = signUpResult.isUpdated
    case .failure:
      complete = false
  }
  return complete;
}

func setCodeDeliveryDetails(res: AmplifyOperation<AuthUpdateUserAttributeRequest, AuthUpdateAttributeResult, AuthError>.OperationResult) -> [String: String] {
    var deliveryMap: [String: String] = [:]
    switch res {
        case .success(let updateResult):
          if case let .confirmAttributeWithCode(deliveryDetails, _) = updateResult.nextStep {
            if case let .email(e) = deliveryDetails.destination {
              deliveryMap["destination"] = e! as String
              deliveryMap["attributeName"] = "email"
              deliveryMap["deliveryMedium"] = "EMAIL"
            }

            if case let .phone(e) = deliveryDetails.destination {
              deliveryMap["destination"] = e! as String
              deliveryMap["attributeName"] = "phone"
            }

            if case let .sms(e) = deliveryDetails.destination {
              deliveryMap["destination"] = e! as String
              deliveryMap["attributeName"] = "sms"
              deliveryMap["deliveryMedium"] = "SMS"
            }

            if case let .unknown(e) = deliveryDetails.destination {
              deliveryMap["destination"] = e! as String
              deliveryMap["attributeName"] = "unknown"
            }
          }
        case .failure:
            deliveryMap = [:]
    }
    return deliveryMap
}

func setAdditionalInfo(res:  AmplifyOperation<AuthUpdateUserAttributeRequest, AuthUpdateAttributeResult, AuthError>.OperationResult) -> [String: String] {
    var infoMap: [String: String] = [:]
    switch res {
        case .success(let updateResult):
          if case let .confirmAttributeWithCode(_, additionalInfo) = updateResult.nextStep {
            infoMap = additionalInfo ?? [:]
          }
        case .failure:
            infoMap = [:]
    }
    return infoMap
}

func setState(res: AmplifyOperation<AuthUpdateUserAttributeRequest, AuthUpdateAttributeResult, AuthError>.OperationResult) -> String {
    let state: String = "ERROR"
    switch res {
        case .success(let updateResult):
          if case .done = updateResult.nextStep {
             return  "DONE"
          }
          if case .confirmAttributeWithCode = updateResult.nextStep {
            return "CONFIRM_ATTRIBUTE_WITH_CODE"
          }
        case .failure:
            self.result = nil
        }
    }

    func toJSON() -> Dictionary<String, Any> {
        return serializeAuthUpdateAttributeResult(result: self.result)
    }
}
