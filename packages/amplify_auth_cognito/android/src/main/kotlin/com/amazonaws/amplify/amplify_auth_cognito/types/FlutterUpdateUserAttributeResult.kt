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

package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amplifyframework.auth.result.AuthUpdateAttributeResult
import com.google.gson.Gson

data class FlutterUpdateUserAttributeResult(private val raw: AuthUpdateAttributeResult) {
    val isUpdated: Boolean = raw.isUpdated
    val nextStep: Map<String, Any> = setNextStep();

    private fun setNextStep(): Map<String, Any> {
        return mapOf(
            "updateAttributeStep" to raw.nextStep.updateAttributeStep.toString(),
            "additionalInfo" to Gson().toJson(raw.nextStep.additionalInfo),
            "codeDeliveryDetails" to mapOf(
                "destination" to (raw.nextStep.codeDeliveryDetails?.destination ?: ""),
                "deliveryMedium" to (raw.nextStep.codeDeliveryDetails?.deliveryMedium?.name ?: ""),
                "attributeName" to (raw.nextStep.codeDeliveryDetails?.attributeName ?: "")
            )
        )
    }

    fun toValueMap(): Map<String, Any> {
        return mapOf(
            "isUpdated" to this.isUpdated,
            "nextStep" to this.nextStep
        )
    }
}
