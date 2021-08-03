
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

import Foundation
import Amplify
import AmplifyPlugins
import amplify_core

struct FlutterSignUpRequest {
    var username: String
    var password: String
    var options: AuthSignUpRequest.Options?
    init(dict: NSMutableDictionary){
        self.username = dict["username"] as! String
        self.password = dict["password"] as! String
        self.options = createOptions(options: dict["options"] as? Dictionary<String, Any>)
    }
    
    private func createOptions(options: Dictionary<String, Any>?) -> AuthSignUpRequest.Options? {
        var userAttributes: [AuthUserAttribute]? = nil
        var pluginOptions: AWSAuthSignUpOptions? = nil
        if (options?["userAttributes"] is Dictionary<String, String>) {
            let rawAttributes = options!["userAttributes"] as! Dictionary<String, String>
            userAttributes = createAuthUserAttributes(rawAttributes: rawAttributes)
        }
        
        if (options?["clientMetadata"] is Dictionary<String, String> || options?["validationData"] is Dictionary<String, String>) {
            pluginOptions = AWSAuthSignUpOptions(
                validationData: options?["validationData"] as? [String: String],
                metadata: options?["clientMetadata"] as? [String : String]
            )
        }
        return AuthSignUpRequest.Options(userAttributes: userAttributes, pluginOptions: pluginOptions)
    }
    
    private func createAuthUserAttributes(rawAttributes: Dictionary<String, String>) -> [AuthUserAttribute] {
        return rawAttributes.map { attr in
            createAuthUserAttribute(key: attr.key, value: attr.value)
        }
    }
    
    static func validate(dict: NSMutableDictionary) throws {
        let validationErrorMessage = "SignUp Request malformed."
        if (dict["password"] == nil) {
            throw InvalidRequestError.auth(comment: validationErrorMessage,
                                           suggestion: String(format: ErrorMessages.missingAttribute, "password "))
        }
    }
}
