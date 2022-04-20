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
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthConfirmSignUpOptions

data class FlutterConfirmSignUpRequest(val map: HashMap<String, *>) {
    val username: String = map["username"] as String
    val confirmationCode: String = map["confirmationCode"] as String
    val options: AWSCognitoAuthConfirmSignUpOptions = formatOptions(map["options"] as HashMap<String, *>?)

    private fun formatOptions(rawOptions: HashMap<String, *>?): AWSCognitoAuthConfirmSignUpOptions {
        val optionsBuilder = AWSCognitoAuthConfirmSignUpOptions.builder()

        if (rawOptions?.get("clientMetadata") != null)
            optionsBuilder.clientMetadata(rawOptions["clientMetadata"] as HashMap<String, String>)

        return optionsBuilder.build()
    }

    companion object {
        private const val validationErrorMessage: String = "ConfirmSignUp Request malformed."
        fun validate(req: HashMap<String, *>?) {
            if (req == null) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            } else {
                if (!req.containsKey("username")) {
                    throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("username"))
                }
                if (!req.containsKey("confirmationCode")) {
                    throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("confirmationCode"))
                }
            }
        }
    }
}
