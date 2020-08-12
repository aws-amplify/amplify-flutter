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
struct FlutterUpdatePasswordRequest {
  var oldPassword: String
  var newPassword: String
  var options: Dictionary<String, Any>? = [:]

  init(dict: NSMutableDictionary){
    self.oldPassword = dict["oldPassword"] as! String
    self.newPassword = dict["newPassword"] as! String
    self.options = dict["options"] as! Dictionary<String, Any>?
  }
  static func validate(dict: NSMutableDictionary) -> Bool {
    var valid: Bool = true;
    if (dict["newPassword"] == nil && dict["options"] == nil) {
      valid = false;
    }
    if (dict["oldPassword"] == nil && dict["options"] == nil) {
      valid = false;
    }
    return valid;
  }
}
