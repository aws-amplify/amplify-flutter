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

package com.amazonaws.amplify.amplify_auth_cognito.utils

import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.AuthUserAttributeKey

fun createAuthUserAttribute(key: String, value: String): AuthUserAttribute {
    val authUserAttributeKey: AuthUserAttributeKey = createAuthUserAttributeKey(key)
    return AuthUserAttribute(authUserAttributeKey, value)
}

fun createAuthUserAttributeKey(keyName: String): AuthUserAttributeKey {
    when (keyName) {
        "address" -> return AuthUserAttributeKey.address()
        "birthdate" -> return AuthUserAttributeKey.birthdate()
        "email" -> return AuthUserAttributeKey.email()
        "family_name" -> return AuthUserAttributeKey.familyName()
        "gender" -> return AuthUserAttributeKey.gender()
        "given_name" -> return AuthUserAttributeKey.givenName()
        "locale" -> return AuthUserAttributeKey.locale()
        "middle_name" -> return AuthUserAttributeKey.middleName()
        "name" -> return AuthUserAttributeKey.name()
        "nickname" -> return AuthUserAttributeKey.nickname()
        "phone_number" -> return AuthUserAttributeKey.phoneNumber()
        "picture" -> return AuthUserAttributeKey.picture()
        "preferred_username" -> return AuthUserAttributeKey.preferredUsername()
        "profile" -> return AuthUserAttributeKey.profile()
        "updated_at" -> return AuthUserAttributeKey.updatedAt()
        "website" -> return AuthUserAttributeKey.website()
        "zoneinfo" -> return AuthUserAttributeKey.zoneInfo()
        else -> return createCustomAuthUserAttributeKey(keyName)
    }
}

private fun createCustomAuthUserAttributeKey(keyName: String): AuthUserAttributeKey {
    val customKey: String = if (keyName.startsWith("custom:")) keyName else "custom:$keyName"
    return AuthUserAttributeKey.custom(customKey)
}
