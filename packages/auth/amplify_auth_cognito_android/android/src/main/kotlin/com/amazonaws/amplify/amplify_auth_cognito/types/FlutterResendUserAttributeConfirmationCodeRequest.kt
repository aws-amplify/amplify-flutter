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

import com.amazonaws.amplify.amplify_auth_cognito.utils.createAuthUserAttributeKey
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthResendUserAttributeConfirmationCodeOptions

data class FlutterResendUserAttributeConfirmationCodeRequest(val map: HashMap<String, *>) {
    val userAttributeKey: AuthUserAttributeKey = createAuthUserAttributeKey(map["userAttributeKey"] as String)
    val options: AWSCognitoAuthResendUserAttributeConfirmationCodeOptions = createOptions(map["options"] as HashMap<String, Any>?)

    private fun createOptions(rawOptions: HashMap<String, *>?): AWSCognitoAuthResendUserAttributeConfirmationCodeOptions {
        val optionsBuilder = AWSCognitoAuthResendUserAttributeConfirmationCodeOptions.builder()
        if (rawOptions?.get("clientMetadata") != null) {
            optionsBuilder.metadata(rawOptions["clientMetadata"] as HashMap<String, String>)
        }
        return optionsBuilder.build()
    }

    companion object {
        private const val validationErrorMessage: String = "ResendUserAttributeConfirmationCode Request malformed."
        fun validate(req: HashMap<String, *>?) {
            if (req == null) {
                throw InvalidRequestException(FlutterResendUserAttributeConfirmationCodeRequest.validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            } else if (!req.containsKey("userAttributeKey")) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("userAttributeKey"))
            }
        }
    }
}
