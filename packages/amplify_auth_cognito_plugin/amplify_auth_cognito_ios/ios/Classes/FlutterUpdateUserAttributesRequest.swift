
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

struct FlutterUpdateUserAttributesRequest {
    var attributes: Array<AuthUserAttribute>
    var options: AuthUpdateUserAttributesRequest.Options?
    
    init(dict: NSMutableDictionary) {
        self.attributes = (dict["attributes"] as! Array<Dictionary<String, String>>).map {
            return createAuthUserAttribute(key: $0["userAttributeKey"]!, value: $0["value"]!);
        }
        self.options = createOptions(options: dict["options"] as! Dictionary<String, Any>?)
    }
    
    func createOptions(options: Dictionary<String, Any>?) -> AuthUpdateUserAttributesOperation.Request.Options {
      let pluginOptions = AWSUpdateUserAttributesOptions(
          metadata: options?["clientMetadata"] as? [String : String]
      )
      return AuthUpdateUserAttributesOperation.Request.Options(pluginOptions: pluginOptions)
    }
    
    static func validate(dict: NSMutableDictionary) throws {
        let validationErrorMessage = "UpdateUserAttributeRequest Request malformed."
        if (dict["attributes"] == nil || !(dict["attributes"] is Array<Dictionary<String, String>>)) {
            throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "attributes"))
        } else {
            let attributes = dict["attributes"] as! Array<Dictionary<String, Any>>;
            for attribute in attributes {
                try validateUserAttribute(attribute: attribute, validationErrorMessage: validationErrorMessage)
            }
        }
    }
}
