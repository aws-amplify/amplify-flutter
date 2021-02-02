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
struct FlutterConfirmSignUpRequest {
  var username: String
  var confirmationCode: String
  init(dict: NSMutableDictionary){
    self.username = dict["username"] as! String
    self.confirmationCode = dict["confirmationCode"] as! String
  }
  static func validate(dict: NSMutableDictionary) throws {
    let validationErrorMessage = "ConfirmSignUp Request malformed."
    if (dict["username"] == nil && dict["options"] == nil) {
      throw AmplifyFlutterValidationException(errorDescription: validationErrorMessage, recoverySuggestion: "username is missing.")
    }
    if (dict["confirmationCode"] == nil && dict["options"] == nil) {
      throw AmplifyFlutterValidationException(errorDescription: validationErrorMessage, recoverySuggestion: "confirmationCode is missing.")
    }
  }
}
