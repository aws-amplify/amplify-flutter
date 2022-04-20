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
import com.amazonaws.amplify.amplify_auth_cognito.utils.createAuthUserAttribute
import com.amazonaws.amplify.amplify_auth_cognito.utils.validateUserAttribute
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthUpdateUserAttributeOptions

data class FlutterUpdateUserAttributeRequest(val map: HashMap<String, *>) {

    val attribute: AuthUserAttribute = createAttribute(map["attribute"] as HashMap<String, *>)
    val options: AWSCognitoAuthUpdateUserAttributeOptions = createOptions(map["options"] as HashMap<String, Any>?)

    private fun createAttribute(@NonNull rawAttribute: HashMap<String, *>): AuthUserAttribute {
        val value = rawAttribute["value"].toString()
        val key: String = rawAttribute["userAttributeKey"] as String
        val attribute: AuthUserAttribute = createAuthUserAttribute(key, value)
        return attribute
    }

    private fun createOptions(rawOptions: HashMap<String, *>?): AWSCognitoAuthUpdateUserAttributeOptions {
        val optionsBuilder = AWSCognitoAuthUpdateUserAttributeOptions.builder()
        if (rawOptions?.get("clientMetadata") != null) {
            optionsBuilder.metadata(rawOptions["clientMetadata"] as HashMap<String, String>)
        }
        return optionsBuilder.build()
    }

    companion object {
        private const val validationErrorMessage: String = "UpdateUserAttributeRequest Request malformed."
        fun validate(req: HashMap<String, *>?) {
            if (req == null) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            } else if (!req.containsKey("attribute") || req["attribute"] !is HashMap<*, *>) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("attribute"))
            } else {
                val attribute = req["attribute"] as HashMap<*, *>
                validateUserAttribute(attribute, validationErrorMessage)
            }
        }
    }
}
