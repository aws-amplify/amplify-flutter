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
import com.amazonaws.amplify.amplify_auth_cognito.types.createAuthUserAttribute
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.AuthUserAttributeKey

data class FlutterUpdateUserAttributeRequest(val map: HashMap<String, *>) {

    val attribute: AuthUserAttribute = formatUpdateUserAttribute(map["attribute"] as HashMap<String, *>);

    fun formatUpdateUserAttribute(@NonNull rawAttribute: HashMap<String, *>): AuthUserAttribute {
        var value = rawAttribute["value"].toString();
        var key: String = rawAttribute["userAttributeKey"] as String;
        var attribute: AuthUserAttribute = createAuthUserAttribute(key, value);
        return attribute;
    }

    companion object {
        private const val validationErrorMessage: String = "UpdateUserAttributeRequest Request malformed."
        fun validate(req : HashMap<String, *>?) {
            if (req == null || req !is HashMap<String, *>) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            } else if (!req.containsKey("attribute")) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format( "attribute" ))
            } else {
                var attribute = req["attribute"] as HashMap<String, *>;
                if (attribute["value"] !is Int && attribute["value"] !is String) {
                    throw InvalidRequestException(validationErrorMessage, "Attribute value is not a Number or a String.")
                }
            }
        }
    }
}
