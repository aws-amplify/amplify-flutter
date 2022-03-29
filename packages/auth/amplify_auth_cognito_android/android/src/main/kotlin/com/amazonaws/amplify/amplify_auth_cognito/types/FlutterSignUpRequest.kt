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

@file:Suppress("UNCHECKED_CAST")

package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amazonaws.amplify.amplify_auth_cognito.utils.createAuthUserAttribute
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthSignUpOptions

data class FlutterSignUpRequest(val map: HashMap<String, *>) {
    val username: String = map["username"] as String
    val password: String = map["password"] as String
    val options: AWSCognitoAuthSignUpOptions = formatOptions(map["options"] as HashMap<String, *>?)

    private fun formatOptions(rawOptions: HashMap<String, *>?): AWSCognitoAuthSignUpOptions {
        val optionsBuilder = AWSCognitoAuthSignUpOptions.builder()
        if (rawOptions != null) {
            val attributeData = rawOptions["userAttributes"] as? MutableMap<String, String>
            val clientMetadata = rawOptions["clientMetadata"] as? MutableMap<String, String>
            val validationData = rawOptions["validationData"] as? MutableMap<String, String>

            if (attributeData is MutableMap<String, String>) {
                val authUserAttributes: List<AuthUserAttribute> = attributeData.map { (key, value) ->
                    createAuthUserAttribute(key, value)
                }
                optionsBuilder.userAttributes(authUserAttributes)
            }

            if (validationData is MutableMap<String, String>) {
                optionsBuilder.validationData(validationData)
            }

            if (clientMetadata is MutableMap<String, String>) {
                optionsBuilder.clientMetadata(clientMetadata)
            }
        }
        return optionsBuilder.build()
    }

    companion object {
        private const val validationErrorMessage: String = "SignUp Request malformed."
        fun validate(req: HashMap<String, *>?) {
            if (req == null) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            }
            if (!req.containsKey("password")) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("password"))
            }
        }
    }
}
