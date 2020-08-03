//
//  FlutterConfirmSignInRequest.swift
//  amplify_auth_cognito
//
//  Created by Noyes, Dustin on 7/24/20.
//

import Foundation
struct FlutterConfirmSignInRequest {
  var confirmationCode: String
  init(dict: NSMutableDictionary){
    self.confirmationCode = dict["confirmationCode"] as! String
  }
  static func validate(dict: NSMutableDictionary) -> Bool {
    var valid: Bool = true;
    if (dict["confirmationCode"] == nil && dict["options"] == nil) {
      valid = false;
    }
    return valid;
  }
}
