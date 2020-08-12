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

struct FlutterResendSignUpCodeResult  {
    var codeDeliveryDetails: [String: String]

    init(res: AmplifyOperation<AuthResendSignUpCodeRequest, AuthCodeDeliveryDetails, AuthError>.OperationResult){
      self.codeDeliveryDetails = setCodeDeliveryDetails(res: res)
    }
    
    func toJSON() -> Dictionary<String, Any> {
      return ["codeDeliveryDetails": self.codeDeliveryDetails]
    }
}


func setCodeDeliveryDetails(res: AmplifyOperation<AuthResendSignUpCodeRequest, AuthCodeDeliveryDetails, AuthError>.OperationResult) -> [String: String] {
    var deliveryMap: [String: String] = [:]
    switch res {
        case .success(let codeDeliveryDetails):
            if case let .email(e) = codeDeliveryDetails.destination {
              deliveryMap["destination"] = e! as String
              deliveryMap["attributeName"] = "email"
              deliveryMap["deliveryMedium"] = "EMAIL"
            }
            
            if case let .phone(e) = codeDeliveryDetails.destination {
              deliveryMap["destination"] = e! as String
              deliveryMap["attributeName"] = "phone"
            }
            
            if case let .sms(e) = codeDeliveryDetails.destination {
              deliveryMap["destination"] = e! as String
              deliveryMap["attributeName"] = "sms"
              deliveryMap["deliveryMedium"] = "SMS"
            }
            
            if case let .unknown(e) = codeDeliveryDetails.destination {
              deliveryMap["destination"] = e! as String
              deliveryMap["attributeName"] = "unknown"
            }
        case .failure:
            deliveryMap = [:]
    }
    return deliveryMap
}
