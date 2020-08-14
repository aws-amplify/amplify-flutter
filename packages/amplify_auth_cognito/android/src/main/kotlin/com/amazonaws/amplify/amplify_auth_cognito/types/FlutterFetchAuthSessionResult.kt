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

package com.amazonaws.amplify.amplify_auth_cognito.types

import androidx.annotation.Nullable
import com.amazonaws.auth.AWSCredentials
import com.amplifyframework.auth.AuthSession
import com.amplifyframework.auth.cognito.AWSCognitoAuthSession
import com.amplifyframework.auth.cognito.AWSCognitoUserPoolTokens
import com.amplifyframework.auth.result.AuthSessionResult
import com.amplifyframework.auth.result.AuthSignInResult
import com.google.gson.Gson

data class FlutterFetchAuthSessionResult(@Nullable public var raw: AuthSession) {
  val isSignedIn: Boolean = raw.isSignedIn;

  fun getResult(): Map<String, Any> {
    return mapOf(
      "isSignedIn" to this.isSignedIn
    )
  }
}
