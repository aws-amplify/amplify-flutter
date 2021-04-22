
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
import amplify_core

struct FlutterUpdateUserAttributeRequest {
    var attribute: AuthUserAttribute!
    
    init(dict: NSMutableDictionary) {
        self.attribute = self.formatUpdateUserAttribute(rawAttribute: dict["attribute"] as! Dictionary<String, Any>)
    }
    
    func formatUpdateUserAttribute(rawAttribute: Dictionary<String, Any>) -> AuthUserAttribute {
        let key = rawAttribute["userAttributeKey"] as! String
        let value = rawAttribute["value"]!
        let stringValue: String = (value is String) ? value as! String : String(value as! Int)
        return formatUserAttribute(key: key, value: stringValue)
    }
    
    static func validate(dict: NSMutableDictionary) throws {
        let validationErrorMessage = "UpdateUserAttributeRequest Request malformed."
        if (dict["attribute"] == nil || !(dict["attribute"] is Dictionary<String, Any>)) {
            throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "attribute"))
        } else {
            let attributeMap = dict["attribute"] as! Dictionary<String, Any>;
            if (attributeMap["userAttributeKey"] == nil) {
                throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "attribute"))
            } else if (attributeMap["value"] == nil) {
                throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "attribute"))
            } else if (!(attributeMap["value"] is String) && !(attributeMap["value"] is Int)) {
                throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: "Attribute value is not a Number or a String.")
            }
        }
    }
}


