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

package com.amazonaws.amplify.amplify_auth_cognito

import com.amplifyframework.auth.AuthCodeDeliveryDetails
import com.google.gson.Gson

fun setNextStep(resultKey: String, resultValue: String, codeDeliveryDetails: AuthCodeDeliveryDetails?, additionalInfo: Map<String, String>?): Map<String, Any> {
    val result = mutableMapOf<String, Any>(resultKey to resultValue)
    val codeDeliveryDetailsResult = mutableMapOf<String, String?>()

    if (codeDeliveryDetails is AuthCodeDeliveryDetails) {
        codeDeliveryDetailsResult.putAll(
            mapOf(
                "destination" to codeDeliveryDetails.destination,
                "deliveryMedium" to codeDeliveryDetails.deliveryMedium.name
            )
        )
        if (codeDeliveryDetails.attributeName != null) {
            codeDeliveryDetailsResult["attributeName"] = codeDeliveryDetails.attributeName
        }
    }

    if (codeDeliveryDetailsResult.isNotEmpty()) {
        result["codeDeliveryDetails"] = codeDeliveryDetailsResult
    }

    if (additionalInfo?.isNotEmpty() == true) {
        result["additionalInfo"] = additionalInfo
    }

    return result
}
