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
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthConfirmResetPasswordOptions

data class FlutterConfirmResetPasswordRequest(val map: HashMap<String, *>) {
    // username only present because it is a required value for iOS
    val username: String = map["username"] as String
    val newPassword: String = map["newPassword"] as String
    val confirmationCode: String = map["confirmationCode"] as String
    val options: AWSCognitoAuthConfirmResetPasswordOptions = createOptions(map["options"] as HashMap<String, Any>?)

    private fun createOptions(rawOptions: HashMap<String, *>?): AWSCognitoAuthConfirmResetPasswordOptions {
        val optionsBuilder = AWSCognitoAuthConfirmResetPasswordOptions.builder()
        if (rawOptions?.get("clientMetadata") != null) {
            optionsBuilder.metadata(rawOptions["clientMetadata"] as HashMap<String, String>)
        }
        return optionsBuilder.build()
    }

    companion object {
        private const val validationErrorMessage: String = "ConfirmResetPassword Request malformed."
        fun validate(req: HashMap<String, *>?) {
            if (req == null || req !is HashMap<String, *>) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            } else if (req != null) {
                if (!req.containsKey("newPassword")) {
                    throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("newPassword"))
                }
                if (!req.containsKey("confirmationCode")) {
                    throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("confirmationCode"))
                }
            }
        }
    }
}
