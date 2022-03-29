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

import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthResetPasswordOptions

data class FlutterResetPasswordRequest(val map: HashMap<String, *>) {
    val username: String = map["username"] as String
    val options: AWSCognitoAuthResetPasswordOptions = createOptions(map["options"] as HashMap<String, Any>?)

    private fun createOptions(rawOptions: HashMap<String, *>?): AWSCognitoAuthResetPasswordOptions {
        val optionsBuilder = AWSCognitoAuthResetPasswordOptions.builder()
        if (rawOptions?.get("clientMetadata") != null) {
            optionsBuilder.metadata(rawOptions["clientMetadata"] as HashMap<String, String>)
        }
        return optionsBuilder.build()
    }

    companion object {
        private const val validationErrorMessage: String = "ResetPassword Request malformed."
        fun validate(req: HashMap<String, *>?) {
            if (req == null || req !is HashMap<String, *>) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            } else if (req != null) {
                if (!req.containsKey("username") && req["username"] != "") {
                    throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("username"))
                }
            }
        }
    }
}
