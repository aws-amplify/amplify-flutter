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
struct FlutterConfirmPasswordRequest {
  var username: String
  var newPassword: String
  var confirmationCode: String
  var options: Dictionary<String, Any>? = [:]

  init(dict: NSMutableDictionary){
    self.username = dict["username"] as! String
    self.newPassword = dict["newPassword"] as! String
    self.confirmationCode = dict["confirmationCode"] as! String
    self.options = dict["options"] as! Dictionary<String, Any>?
  }
  static func validate(dict: NSMutableDictionary) -> Bool {
    var valid: Bool = true;
    if (dict["username"] == nil) {
      valid = false;
    }
    if (dict["newPassword"] == nil) {
      valid = false;
    }
    if (dict["confirmationCode"] == nil) {
      valid = false;
    }
    return valid;
  }
}
