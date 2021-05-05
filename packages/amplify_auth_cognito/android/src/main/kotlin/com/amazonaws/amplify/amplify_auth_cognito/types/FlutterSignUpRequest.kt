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

import androidx.annotation.NonNull
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.InvalidRequestException
import com.amplifyframework.AmplifyException
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthSignUpOptions

data class FlutterSignUpRequest(val map: HashMap<String, *>) {
    val username: String = map["username"] as String
    val password: String = map["password"] as String
    val options: AWSCognitoAuthSignUpOptions = formatOptions(map["options"] as HashMap<String, *>)

    private fun formatOptions(@NonNull rawOptions: HashMap<String, *>): AWSCognitoAuthSignUpOptions {
        var options =  AWSCognitoAuthSignUpOptions.builder();
        var authUserAttributes: MutableList<AuthUserAttribute> = mutableListOf();
        var validationData = rawOptions["validationData"] as? MutableMap<String, String>;

        (rawOptions["userAttributes"] as HashMap<String, String>).forEach { (key, value) ->
            var attribute = createAuthUserAttribute(key, value);
            authUserAttributes.add(attribute);
        }
        options.userAttributes(authUserAttributes);

        if (validationData is MutableMap<String, String>) {
            options.validationData(validationData)
        }
        return options.build();
    }

    companion object {
        private const val validationErrorMessage: String = "SignUp Request malformed."
        fun validate(req : HashMap<String, *>?) {
            if (req == null) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format( "request map" ))
            }
            if (req.get("options") == null) {
                throw AmplifyException(validationErrorMessage, ExceptionMessages.missingAttribute.format( "options map" ))
            }
            if (!(req?.get("options") as HashMap<String, String>).containsKey("userAttributes")) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format( "userAttributes" ))
            }
            if (!req.containsKey("password")) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format( "password" ))
            }
        }
    }

}
