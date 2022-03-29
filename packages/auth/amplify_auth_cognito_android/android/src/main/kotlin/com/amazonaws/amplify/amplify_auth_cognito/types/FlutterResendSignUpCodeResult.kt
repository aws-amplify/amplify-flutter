package com.amazonaws.amplify.amplify_auth_cognito.types

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

import com.amplifyframework.auth.result.AuthSignUpResult

// Note: this class exposes only codeDeliveryDetails for parity with other platforms

data class FlutterResendSignUpCodeResult(private var raw: AuthSignUpResult) {
    val codeDeliveryDetails: Map<String, Any> = setCodeDeliveryDetails()
    private fun setCodeDeliveryDetails(): Map<String, Any> {
        return mapOf(
            "destination" to (raw.nextStep.codeDeliveryDetails?.destination ?: ""),
            "deliveryMedium" to (raw.nextStep.codeDeliveryDetails?.deliveryMedium?.name ?: ""),
            "attributeName" to (raw.nextStep.codeDeliveryDetails?.attributeName ?: "")
        )
    }

    fun toValueMap(): Map<String, Any> {
        return mapOf(
            "codeDeliveryDetails" to this.codeDeliveryDetails
        )
    }
}
