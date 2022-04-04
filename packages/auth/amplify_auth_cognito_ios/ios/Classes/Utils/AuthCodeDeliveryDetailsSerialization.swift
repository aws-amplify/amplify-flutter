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

func serializeAuthCodeDeliveryDetails(deliveryDetails: AuthCodeDeliveryDetails) -> [String: String] {
    var deliveryMap: [String: String] = [:]
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
    return deliveryMap
}
