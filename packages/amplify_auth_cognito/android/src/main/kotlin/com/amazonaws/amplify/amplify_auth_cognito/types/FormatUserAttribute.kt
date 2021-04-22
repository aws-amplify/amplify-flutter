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
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.AuthUserAttributeKey
import java.lang.reflect.Method

fun formatUserAttribute(key: String, value: String): AuthUserAttribute {
    var attributeMethods = AuthUserAttributeKey::class.java.declaredMethods;
    if (!standardAuthAttributes.contains(key)) {
        var customKey: String = if (key.startsWith("custom:")) key else "custom:" + key;
        return AuthUserAttribute(AuthUserAttributeKey.custom(customKey), value)
    } else {
        var t: Method = attributeMethods.asIterable().find { it.name.equals(convertSnakeToCamel(key)) } as Method;
        var attr: AuthUserAttributeKey = t.invoke(null) as AuthUserAttributeKey;
        return AuthUserAttribute(attr, value);
    }
}

// Amplify Android expects camel case, while iOS expects snake.  So at least one plugin implementation should convert.
private fun convertSnakeToCamel(@NonNull string: String): String {
    val camelCase = StringBuilder()
    var prevChar = '$'
    string.forEach {
        if (prevChar.equals('_')) {
            camelCase.append(it.toUpperCase())
        } else if (!it.equals('_')) {
            camelCase.append(it)
        }
        prevChar = it
    }
    return camelCase.toString();
}

private var standardAuthAttributes: Array<String> = arrayOf(
        "address",
        "birthdate",
        "email",
        "family_name",
        "gender",
        "given_name",
        "locale",
        "middle_name",
        "name",
        "nickname",
        "phone_number",
        "preferred_username",
        "picture",
        "profile",
        "updated_at",
        "website",
        "zoneinfo"
)