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

import com.amazonaws.amplify.amplify_auth_cognito.utils.createAuthUserAttribute
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthConfirmSignInOptions

data class FlutterConfirmSignInRequest(val map: HashMap<String, *>) {
    val confirmationCode: String = map["confirmationCode"] as String
    val options: AWSCognitoAuthConfirmSignInOptions = formatOptions(map["options"] as HashMap<String, *>?)

    private fun formatOptions(rawOptions: HashMap<String, *>?): AWSCognitoAuthConfirmSignInOptions {
        val options = AWSCognitoAuthConfirmSignInOptions.builder()

        if (rawOptions?.get("clientMetadata") != null)
            options.metadata(rawOptions["clientMetadata"] as HashMap<String, String>)

        val rawAttributes = rawOptions?.get("userAttributes") as HashMap<String, String>? ?: emptyMap<String, String>()
        val attributes = rawAttributes.map { (key, value) ->
            createAuthUserAttribute(key, value)
        }

        options.userAttributes(attributes)

        return options.build()
    }

    companion object {
        private const val validationErrorMessage: String = "ConfirmSignIn Request malformed."
        fun validate(req: HashMap<String, *>?) {
            if (req == null || req !is HashMap<String, *>) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            }
        }
    }
}
