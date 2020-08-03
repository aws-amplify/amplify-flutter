//
//  FlutterConfirmSignUpRequest.swift
//  amplify_auth
//
//  Created by Noyes, Dustin on 7/2/20.
//

import Foundation
struct FlutterConfirmSignUpRequest {
  var username: String?
  var confirmationCode: String?
  init(dict: NSMutableDictionary){
    self.username = dict["userKey"] as! String?
    self.confirmationCode = dict["confirmationCode"] as! String?
  }
  static func validate(dict: NSMutableDictionary) -> Bool {
    var valid: Bool = true;
    if (dict["username"] == nil && dict["options"] == nil) {
      valid = false;
    }
    if (dict["usconfirmationCodeername"] == nil && dict["options"] == nil) {
      valid = false;
    }
    return valid;
  }
}
