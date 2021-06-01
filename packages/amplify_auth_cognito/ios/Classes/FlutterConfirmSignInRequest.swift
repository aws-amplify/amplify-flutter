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

struct FlutterConfirmSignInRequest {
  var confirmationCode: String
  var options: AuthConfirmSignInOperation.Request.Options?

  init(dict: NSMutableDictionary){
    self.confirmationCode = dict["confirmationCode"] as! String
    self.options = formatOptions(options: dict["options"] as! Dictionary<String, Any>?)

  }
    
  func formatOptions(options: Dictionary<String, Any>?) -> AuthConfirmSignInOperation.Request.Options {
    let rawAttributes = options?["userAttributes"] as? [String : String]
    var userAttributes: [AuthUserAttribute] = [];
    if (rawAttributes != nil) {
      for (key, value) in rawAttributes ?? [:] {
        userAttributes.append(AuthUserAttribute(createAuthUserAttributeKey(keyName: key), value: value))
      }
    }
    
    let pluginOptions =  AWSAuthConfirmSignInOptions(
      userAttributes: userAttributes,
      metadata: options?["clientMetadata"] as? [String : String]
    )
    return AuthConfirmSignInOperation.Request.Options(pluginOptions: pluginOptions)
  }
    
  static func validate(dict: NSMutableDictionary) throws {
    let validationErrorMessage = "ConfirmSignIn Request malformed."
    if (dict["confirmationCode"] == nil && dict["options"] == nil) {
        throw InvalidRequestError.auth(comment: validationErrorMessage,
                                          suggestion: String(format: ErrorMessages.missingAttribute, "confirmationCode"))
    }
  }
    
//  func createAttribute(key: String, value: String) -> AuthUserAttribute {
//    switch key {
//      case "address":
//        return AuthUserAttribute(AuthUserAttributeKey.address, value: value)
//      case "birthdate":
//        return AuthUserAttribute(AuthUserAttributeKey.birthDate, value: value)
//      case "email":
//        return AuthUserAttribute(AuthUserAttributeKey.email, value: value)
//      case "family_name":
//        return AuthUserAttribute(AuthUserAttributeKey.familyName, value: value)
//      case "gender":
//        return AuthUserAttribute(AuthUserAttributeKey.gender, value: value)
//      case "given_name":
//        return AuthUserAttribute(AuthUserAttributeKey.givenName, value: value)
//      case "locale":
//        return AuthUserAttribute(AuthUserAttributeKey.locale, value: value)
//      case "middle_name":
//        return AuthUserAttribute(AuthUserAttributeKey.middleName, value: value)
//      case "name":
//        return AuthUserAttribute(AuthUserAttributeKey.name, value: value)
//      case "nickname":
//        return AuthUserAttribute(AuthUserAttributeKey.nickname, value: value)
//      case "phone_number":
//        return AuthUserAttribute(AuthUserAttributeKey.phoneNumber, value: value)
//      case "picture":
//        return AuthUserAttribute(AuthUserAttributeKey.picture, value: value)
//      case "preferred_username":
//        return AuthUserAttribute(AuthUserAttributeKey.preferredUsername, value: value)
//      default:
//        return AuthUserAttribute(AuthUserAttributeKey.unknown(key), value: value)
//    }
//  }
}
