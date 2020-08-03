//
//  SignIn.swift
//  amplify_auth
//
//  Created by Noyes, Dustin on 7/2/20.
//

import Foundation
struct FlutterSignInRequest {
  var username: String?
  var password: String?
  var options: Dictionary<String, Any>? = [:]
  init(dict: NSMutableDictionary){
    self.username = dict["username"] as! String?
    self.password = dict["password"] as! String?
    self.options = dict["options"] as! Dictionary<String, Any>?
  }
  static func validate(dict: NSMutableDictionary) -> Bool {
    var valid: Bool = true;
    if (dict["username"] == nil && dict["options"] == nil) {
      valid = false;
    }
    if (dict["password"] == nil && dict["options"] == nil) {
      valid = false;
    }
    return valid;
  }
}
