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

import com.amazonaws.amplify.amplify_auth_cognito.utils.createAuthUserAttribute
import com.amazonaws.amplify.amplify_auth_cognito.utils.validateUserAttribute
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthUpdateUserAttributesOptions

data class FlutterUpdateUserAttributesRequest(val map: HashMap<String, *>) {

    val attributes: List<AuthUserAttribute> = (map["attributes"] as List<HashMap<*, *>>)
        .map { createAuthUserAttribute(it["userAttributeKey"] as String, it["value"] as String) }

    val options: AWSCognitoAuthUpdateUserAttributesOptions = createOptions(map["options"] as HashMap<String, Any>?)

    private fun createOptions(rawOptions: HashMap<String, *>?): AWSCognitoAuthUpdateUserAttributesOptions {
        val optionsBuilder = AWSCognitoAuthUpdateUserAttributesOptions.builder()
        if (rawOptions?.get("clientMetadata") != null) {
            optionsBuilder.metadata(rawOptions["clientMetadata"] as HashMap<String, String>)
        }
        return optionsBuilder.build()
    }

    companion object {
        private const val validationErrorMessage: String = "UpdateUserAttributesRequest Request malformed."
        fun validate(req: HashMap<String, *>?) {
            if (req == null) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            } else if (!req.containsKey("attributes") || req["attributes"] !is List<*>) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("attributes"))
            } else {
                val attributes = req["attributes"] as List<HashMap<*, *>>
                if (attributes.isEmpty()) {
                    throw InvalidRequestException(validationErrorMessage, "The request must have at least one attribute.")
                } else {
                    attributes.forEach { validateUserAttribute(it, validationErrorMessage) }
                }
            }
        }
    }
}
