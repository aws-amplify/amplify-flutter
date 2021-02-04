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

import com.amazonaws.amplify.amplify_core.exception.FlutterValidationException

data class FlutterSignInWithWebUIRequest(val map: HashMap<String, *>) {
    val provider: String? = map?.get("authProvider") as String?;
    companion object {
        private var allowedProviders: Array<String> = arrayOf("login_with_amazon", "google", "facebook")
        private const val validationErrorMessage: String = "SignInWithWebUI Request malformed."

        fun validate(req : HashMap<String, *>?) {
            val provider: String? = req?.get("authProvider") as String?;
            if (provider != null) {
                if (!allowedProviders.contains(provider)) {
                    throw FlutterValidationException(validationErrorMessage, "You have passed an AuthProvider that is not supported.")
                }
            }
        }
    }
}
