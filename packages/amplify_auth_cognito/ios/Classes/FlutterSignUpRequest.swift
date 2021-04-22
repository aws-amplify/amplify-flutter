
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
  var userAttributes: [AuthUserAttribute] = []
  var options: Dictionary<String, Any>? = [:]
  init(dict: NSMutableDictionary){
    self.username = dict["username"] as! String
    self.password = dict["password"] as! String
    self.options = dict["options"] as? Dictionary<String, Any>
    self.userAttributes = self.formatUserAttributes(options: dict["options"] as! Dictionary<String, Any>)
  }
    
  func formatUserAttributes(options: Dictionary<String, Any>) -> [AuthUserAttribute] {
    let rawAttributes: Dictionary<String, Any> = options["userAttributes"] as! Dictionary<String, String>
    var formattedAttributes: Array<AuthUserAttribute> = Array()
    for attr in rawAttributes {
        let stringValue: String = (attr.value is String) ? attr.value as! String : String(attr.value as! Int)
        formattedAttributes.append(formatUserAttribute(key: attr.key, value: stringValue))
    }
    return formattedAttributes
  }
    
  static func validate(dict: NSMutableDictionary) throws {
    let validationErrorMessage = "SignUp Request malformed."
    if (dict["options"] == nil) {
        throw InvalidRequestError.auth(comment: validationErrorMessage,
                                          suggestion: String(format: ErrorMessages.missingAttribute, "options"))
    } else if (dict["password"] == nil) {
        throw InvalidRequestError.auth(comment: validationErrorMessage,
                                          suggestion: String(format: ErrorMessages.missingAttribute, "password "))
    }
  }
}
