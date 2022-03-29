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

package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amazonaws.amplify.amplify_auth_cognito.setNextStep
import com.amplifyframework.auth.result.AuthSignInResult

data class FlutterSignInResult(private val raw: AuthSignInResult) {
    val isSignedIn: Boolean = raw.isSignInComplete
    val nextStep: Map<String, Any> = setNextStep(
        "signInStep",
        raw.nextStep.signInStep.toString(),
        raw.nextStep.codeDeliveryDetails,
        raw.nextStep.additionalInfo
    )

    fun toValueMap(): Map<String, Any> {
        return mapOf(
            "isSignedIn" to this.isSignedIn,
            "nextStep" to this.nextStep
        )
    }
}
