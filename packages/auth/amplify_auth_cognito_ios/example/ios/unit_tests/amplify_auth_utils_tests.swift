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

import XCTest
import Amplify
@testable import amplify_auth_cognito_ios

class  amplify_auth_utils_tests: XCTestCase {
    
    func test_createAuthUserAttributeKey() {
        
        var attributeKey:AuthUserAttributeKey
        
        // standard attribute
        attributeKey = createAuthUserAttributeKey(keyName: "email")
        XCTAssertEqual(attributeKey, AuthUserAttributeKey.email)
        
        // missing standard attribute
        attributeKey = createAuthUserAttributeKey(keyName: "profile")
        XCTAssertEqual(attributeKey, AuthUserAttributeKey.unknown("profile"))
        
        // custom standard attribute
        attributeKey = createAuthUserAttributeKey(keyName: "key_name")
        XCTAssertEqual(attributeKey, AuthUserAttributeKey.custom("key_name"))
        
        // custom standard attribute w/ "custom:" prepended
        attributeKey = createAuthUserAttributeKey(keyName: "custom:key_name")
        XCTAssertEqual(attributeKey, AuthUserAttributeKey.custom("key_name"))

    }
    
}
