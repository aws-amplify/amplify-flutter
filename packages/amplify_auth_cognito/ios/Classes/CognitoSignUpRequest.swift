//
//  FlutterSignUpRequest.swift
//  amplify_auth
//
//  Created by Noyes, Dustin on 7/2/20.
//

import Foundation
struct CognitoSignUpRequest {
  var username: String?
  var password: String?
  var userAttributes: Dictionary<String, String> = [:]
  var providerOptions: Dictionary<String, Any>? = [:]
  init(dict: NSMutableDictionary){
    self.username = dict["username"] as! String?
    self.password = dict["password"] as! String?
    self.userAttributes = dict["userAttributes"] as! Dictionary<String, String>
    self.providerOptions = dict["providerOptions"] as! Dictionary<String, Any>?
  }
}
