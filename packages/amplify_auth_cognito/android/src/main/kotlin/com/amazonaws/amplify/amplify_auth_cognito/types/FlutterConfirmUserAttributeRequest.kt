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

import com.amplifyframework.auth.AuthUserAttributeKey
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException

data class FlutterConfirmUserAttributeRequest(val map: HashMap<String, *>) {
    val attributeKey: AuthUserAttributeKey = createAuthUserAttributeKey(map["attributeKey"] as String);
    val confirmationCode: String = map["confirmationCode"] as String;

    companion object {
        private const val validationErrorMessage: String = "ConfirmUserAttribute Request malformed."
        fun validate(req : HashMap<String, *>?) {
            if (req == null || req !is HashMap<String, *>) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            } else if (!req.containsKey("attributeKey")) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format( "attributeKey" ))
            } else if (!req.containsKey("confirmationCode")) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format( "confirmationCode" ))
            }
        }
    }
}