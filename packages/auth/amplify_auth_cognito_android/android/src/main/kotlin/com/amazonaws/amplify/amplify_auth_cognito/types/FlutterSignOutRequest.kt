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
import com.amplifyframework.auth.cognito.options.AWSCognitoAuthSignOutOptions

data class FlutterSignOutRequest(val map: HashMap<String, *>) {
    val options: AWSCognitoAuthSignOutOptions = createOptions(map["options"] as HashMap<*, *>?)

    private fun createOptions(rawOptions: HashMap<*, *>?): AWSCognitoAuthSignOutOptions {
        val globalSignOut = rawOptions?.get("globalSignOut") as Boolean? ?: false
        return AWSCognitoAuthSignOutOptions.builder().globalSignOut(globalSignOut).build()
    }

    companion object {
        private const val validationErrorMessage: String = "SignOut Request malformed."
        fun validate(req: HashMap<String, *>?) {
            if (req == null) {
                throw InvalidRequestException(validationErrorMessage, ExceptionMessages.missingAttribute.format("request map"))
            }
        }
    }
}
