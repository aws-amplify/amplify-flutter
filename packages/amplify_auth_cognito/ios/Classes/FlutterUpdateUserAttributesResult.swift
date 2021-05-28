
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

struct FlutterUpdateUserAttributesResult {
    var attributes: Dictionary<AuthUserAttributeKey, AuthUpdateAttributeResult>
    
    init(res: AmplifyOperation<AuthUpdateUserAttributesRequest, Dictionary<AuthUserAttributeKey, AuthUpdateAttributeResult>, AuthError>.OperationResult){
        switch res {
        case .success(let resultMap):
            self.attributes = resultMap
        case .failure:
            self.attributes = [:]
        }
    }
    
    func toJSON() -> Dictionary<String, Any> {
        return Dictionary(uniqueKeysWithValues: self.attributes.map { key, value in (key.rawValue, createAttributeJSON(updateResult: value))})
    }
}

func createAttributeJSON(updateResult: AuthUpdateAttributeResult) ->Dictionary<String, Any> {
    return [
        "isUpdated": isUpdated(updateResult: updateResult),
        "nextStep": [
            "updateAttributeStep": setState(updateResult: updateResult),
            "additionalInfo": setAdditionalInfo(updateResult: updateResult),
            "codeDeliveryDetails": setCodeDeliveryDetails(updateResult: updateResult)
        ]]
}

func isUpdated(updateResult: AuthUpdateAttributeResult) -> Bool {
    return updateResult.isUpdated
}

func setCodeDeliveryDetails(updateResult: AuthUpdateAttributeResult) -> [String: String] {
    var deliveryMap: [String: String] = [:]
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
    return deliveryMap
}

func setAdditionalInfo(updateResult:  AuthUpdateAttributeResult) -> [String: String] {
    var infoMap: [String: String] = [:]
    if case let .confirmAttributeWithCode(_, additionalInfo) = updateResult.nextStep {
        infoMap = additionalInfo ?? [:]
    }
    return infoMap
}

func setState(updateResult: AuthUpdateAttributeResult) -> String {
    if case .done = updateResult.nextStep {
        return "DONE"
    }
    if case .confirmAttributeWithCode = updateResult.nextStep {
        return "CONFIRM_ATTRIBUTE_WITH_CODE"
    }
    return "ERROR"
}
