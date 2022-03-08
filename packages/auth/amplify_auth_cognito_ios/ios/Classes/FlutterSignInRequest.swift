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
import AWSCore
import amplify_core

struct FlutterSignInRequest {
  var username: String?
  var password: String?
  var options: AuthSignInOperation.Request.Options?
  init(dict: NSMutableDictionary){
    self.username = dict["username"] as! String?
    self.password = dict["password"] as! String?
    self.options = formatOptions(options: dict["options"] as! Dictionary<String, Any>?)
  }
    
   func formatOptions(options: Dictionary<String, Any>?) -> AuthSignInOperation.Request.Options {
    
     let pluginOptions =  AWSAuthSignInOptions(
       metadata: options?["clientMetadata"] as? [String : String]
     )
     return AuthSignInOperation.Request.Options(pluginOptions: pluginOptions)
  }
}
