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

import androidx.annotation.NonNull
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException
import com.amplifyframework.auth.AuthUserAttribute

data class FlutterUpdateUserAttributeRequest(val map: HashMap<String, *>) {

    val attribute: AuthUserAttribute = formatUpdateUserAttribute(map["attribute"] as HashMap<String, *>);

    private fun formatUpdateUserAttribute(@NonNull rawAttribute: HashMap<String, *>): AuthUserAttribute {
        val value = rawAttribute["value"].toString();
        val key: String = rawAttribute["userAttributeKey"] as String;
        val attribute: AuthUserAttribute = createAuthUserAttribute(key, value);
        return attribute;
    }

    companion object {
        private const val validationErrorMessage: String = "UpdateUserAttributeRequest Request malformed."
        fun validate(req : HashMap<String, *>?) {
            if (req == null) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            } else if (!req.containsKey("attribute") || req["attribute"] !is HashMap<*, *>) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format( "attribute" ))
            } else {
                val attribute = req["attribute"] as HashMap<*, *>;
                if (!attribute.containsKey("value")) {
                    throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format( "value" ))
                } else if (!attribute.containsKey("userAttributeKey")) {
                    throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format( "userAttributeKey" ))
                } else if (attribute["value"] !is String) {
                    // Android SDK expects a string for user attr values, regardless of the configuration in cognito
                    throw InvalidRequestException(validationErrorMessage, "Attribute value is not a String.")
                }
            }
        }
    }
}
