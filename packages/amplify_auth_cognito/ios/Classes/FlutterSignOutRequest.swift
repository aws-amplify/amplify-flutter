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

struct FlutterSignOutRequest {
  var options: AuthSignOutRequest.Options?
  var providerOptions: Dictionary<String, Any>? = [:]
  init(dict: NSMutableDictionary){
    self.options = setOptions(dict: dict)
    self.providerOptions = dict["options"] as! Dictionary<String, Any>?
  }
}

func setOptions(dict: NSMutableDictionary) -> AuthSignOutRequest.Options {
    if (dict["options"] != nil) {
      return AuthSignOutRequest.Options(globalSignOut: true)
    } else {
      return AuthSignOutRequest.Options(globalSignOut: false)
    }
}
