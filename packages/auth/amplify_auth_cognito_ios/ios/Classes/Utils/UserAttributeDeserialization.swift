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

import Foundation
import Amplify

func createAuthUserAttribute(key: String, value: String) -> AuthUserAttribute {
    let authUserAttributeKey = createAuthUserAttributeKey(keyName: key);
    return AuthUserAttribute(authUserAttributeKey, value: value)
}

func createAuthUserAttributeKey(keyName: String) -> AuthUserAttributeKey {
    switch keyName {
    case "address":
        return AuthUserAttributeKey.address
    case "birthdate":
        return AuthUserAttributeKey.birthDate
    case "email":
        return AuthUserAttributeKey.email
    case "family_name":
        return AuthUserAttributeKey.familyName
    case "gender":
        return AuthUserAttributeKey.gender
    case "given_name":
        return AuthUserAttributeKey.givenName
    case "locale":
        return AuthUserAttributeKey.locale
    case "middle_name":
        return AuthUserAttributeKey.middleName
    case "name":
        return AuthUserAttributeKey.name
    case "nickname":
        return AuthUserAttributeKey.nickname
    case "phone_number":
        return AuthUserAttributeKey.phoneNumber
    case "picture":
        return AuthUserAttributeKey.picture
    case "preferred_username":
        return AuthUserAttributeKey.preferredUsername
    default:
        // amplify-ios does not currently include enums for these keyNames
        let unknownKeys = ["profile", "updated_at", "website", "zoneinfo"]
        if (unknownKeys.contains(keyName)) {
            return AuthUserAttributeKey.unknown(keyName)
        } else {
            // amplify-ios prepends 'custom:' to custom keys
            let customKeyPrefix = "custom:"
            let customKeyName = keyName.starts(with: customKeyPrefix) ? String(keyName.dropFirst(customKeyPrefix.count)) : keyName
            return AuthUserAttributeKey.custom(customKeyName)
        }
    }
}
