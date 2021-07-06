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

func serializeAuthUpdateAttributeResult(result: AuthUpdateAttributeResult?) -> Dictionary<String, Any> {
    return [
        "isUpdated": result?.isUpdated ?? false,
        "nextStep": serializeAuthUpdateAttributeStep(nextStep: result?.nextStep)
    ]
}

private func serializeAuthUpdateAttributeStep(nextStep: AuthUpdateAttributeStep?) -> Dictionary<String, Any> {
    var serializedNextStep: Dictionary<String, Any> = [:]
    serializedNextStep["updateAttributeStep"] = serializeUpdateAttributeStep(nextStep: nextStep)
    if case let .confirmAttributeWithCode(deliveryDetails, additionalInfo) = nextStep {
        serializedNextStep["additionalInfo"] = additionalInfo ?? [:]
        serializedNextStep["codeDeliveryDetails"] = serializeAuthCodeDeliveryDetails(deliveryDetails: deliveryDetails)
    }
    return serializedNextStep
}

private func serializeUpdateAttributeStep(nextStep: AuthUpdateAttributeStep?) -> String {
    if case .done = nextStep {
        return "DONE"
    }
    if case .confirmAttributeWithCode = nextStep {
        return "CONFIRM_ATTRIBUTE_WITH_CODE"
    }
    return "ERROR"
}
