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
import amplify_core

struct FlutterUpdatePasswordRequest {
  var oldPassword: String
  var newPassword: String
  var options: Dictionary<String, Any>? = [:]

  init(dict: NSMutableDictionary){
    self.oldPassword = dict["oldPassword"] as! String
    self.newPassword = dict["newPassword"] as! String
    self.options = dict["options"] as! Dictionary<String, Any>?
  }
  static func validate(dict: NSMutableDictionary) throws {
    let validationErrorMessage = "UpdatePassword Request malformed."
    if (dict["newPassword"] == nil && dict["options"] == nil) {
        throw InvalidRequestError.auth(comment: validationErrorMessage,
                                          suggestion: String(format: ErrorMessages.missingAttribute, "newPassword"))
    }
    if (dict["oldPassword"] == nil && dict["options"] == nil) {
        throw InvalidRequestError.auth(comment: validationErrorMessage,
                                          suggestion: String(format: ErrorMessages.missingAttribute, "oldPassword"))
    }
  }
}
