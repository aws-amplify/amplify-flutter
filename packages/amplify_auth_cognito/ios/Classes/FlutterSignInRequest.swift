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
  var providerOptions: Dictionary<String, Any>? = [:]
  init(dict: NSMutableDictionary){
    self.username = dict["username"] as! String?
    self.password = dict["password"] as! String?
    self.providerOptions = dict["providerOptions"] as! Dictionary<String, Any>?
  }
}
