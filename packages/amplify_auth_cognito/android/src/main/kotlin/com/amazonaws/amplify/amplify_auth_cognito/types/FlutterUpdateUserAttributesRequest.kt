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

import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException
import com.amplifyframework.auth.AuthUserAttribute

data class FlutterUpdateUserAttributesRequest(val map: HashMap<String, *>) {

    val attributes: List<AuthUserAttribute> = (map["attributes"] as List<HashMap<*, *>>)
            .map { createAuthUserAttribute(it["userAttributeKey"] as String, it["value"] as String) }

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
                    for (attribute in attributes) {
                        if (!attribute.containsKey("value")) {
                            throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("value"))
                        } else if (!attribute.containsKey("userAttributeKey")) {
                            throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("userAttributeKey"))
                        } else if (attribute["value"] !is String) {
                            // Android SDK expects a string for user attr values, regardless of the configuration in cognito
                            throw InvalidRequestException(validationErrorMessage, "Attribute value is not a String.")
                        }
                    }
                }
            }
        }
    }
}
