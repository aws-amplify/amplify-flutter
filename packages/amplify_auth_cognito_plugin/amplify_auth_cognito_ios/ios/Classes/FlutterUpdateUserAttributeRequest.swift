
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
import AmplifyPlugins
import amplify_core

struct FlutterUpdateUserAttributeRequest {
    var attribute: AuthUserAttribute!
    var options: AuthUpdateUserAttributeRequest.Options?
    
    init(dict: NSMutableDictionary) {
        self.attribute = self.createAttribute(rawAttribute: dict["attribute"] as! Dictionary<String, Any>)
        self.options = createOptions(options: dict["options"] as! Dictionary<String, Any>?)
    }
    
    func createAttribute(rawAttribute: Dictionary<String, Any>) -> AuthUserAttribute {
        let key = rawAttribute["userAttributeKey"] as! String
        let value = rawAttribute["value"] as! String
        return createAuthUserAttribute(key: key, value: value)
    }
    
    func createOptions(options: Dictionary<String, Any>?) -> AuthUpdateUserAttributeOperation.Request.Options {
      let pluginOptions = AWSUpdateUserAttributeOptions(
          metadata: options?["clientMetadata"] as? [String : String]
      )
      return AuthUpdateUserAttributeOperation.Request.Options(pluginOptions: pluginOptions)
    }
    
    static func validate(dict: NSMutableDictionary) throws {
        let validationErrorMessage = "UpdateUserAttributeRequest Request malformed."
        if (dict["attribute"] == nil || !(dict["attribute"] is Dictionary<String, Any>)) {
            throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "attribute"))
        } else {
            let attributeMap = dict["attribute"] as! Dictionary<String, Any>;
            if (attributeMap["userAttributeKey"] == nil) {
                throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "userAttributeKey"))
            } else if (attributeMap["value"] == nil) {
                throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "value"))
            } else if (!(attributeMap["value"] is String)) {
                // iOS SDK expects a string for user attr values, regardless of the configuration in cognito
                throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: "Attribute value is not a String.")
            }
        }
    }
}
