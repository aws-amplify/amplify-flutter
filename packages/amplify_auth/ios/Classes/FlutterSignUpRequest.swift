//
//  FlutterSignUpRequest.swift
//  amplify_auth
//
//  Created by Noyes, Dustin on 7/2/20.
//

import Foundation
struct FlutterSignUpRequest {
  var username: String?;
  var password: String?;
  var usernameAttribute: String?;
  var userAttributes: Dictionary<String, String> = [:];
  var validationData: Dictionary<String, String>?;
  
  init(dict: NSMutableDictionary){
    self.username = dict["username"] as! String?
    self.password = dict["password"] as! String?
    self.usernameAttribute = dict["usernameAttribute"] as! String?
    self.userAttributes = dict["userAttributes"] as! Dictionary<String, String>
    self.validationData = dict["validationData"] as! Dictionary<String, String>?
  }
}
