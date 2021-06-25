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

import com.amazonaws.amplify.amplify_auth_cognito.setNextStep
import com.amplifyframework.auth.result.AuthUpdateAttributeResult

data class FlutterUpdateUserAttributeResult(private val raw: AuthUpdateAttributeResult) {
    val isUpdated: Boolean = raw.isUpdated
    val nextStep: Map<String, Any> = setNextStep(
            "updateAttributeStep",
            raw.nextStep.updateAttributeStep.toString(),
            raw.nextStep.codeDeliveryDetails,
            raw.nextStep.additionalInfo)

    fun toValueMap(): Map<String, Any> {
        return serializeAuthUpdateAttributeResult(result)
    }
}
