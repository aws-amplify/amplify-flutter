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

struct FlutterSignInWithWebUIRequest {
  var provider: AuthProvider?

  init(dict: NSMutableDictionary){
    self.provider = getAuthProvider(provider: dict["authProvider"] as! String?)
  }

  func getAuthProvider(provider: String?) -> AuthProvider? {
    if (provider != nil) {
      switch provider {
        case "facebook":
          return AuthProvider.facebook
        case "login_with_amazon":
          return AuthProvider.amazon
        case "google":
          return AuthProvider.google
        default:
          return nil
      }
    }
    return nil
  }

  static func validate(dict: NSMutableDictionary) throws {
    let validationErrorMessage = "SignInWithWebUI Request malformed."
    let allowedProviders: Array<String> = ["login_with_amazon", "google", "facebook"]
    if let provider = dict["authProvider"] {
      if(!allowedProviders.contains(provider as! String)) {
        throw AmplifyFlutterValidationException(errorDescription: validationErrorMessage, recoverySuggestion: "Unsupported auth provider.")
      }
    }
  }
}
