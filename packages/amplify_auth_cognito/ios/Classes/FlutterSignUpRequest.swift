//
//  FlutterSignUpRequest.swift
//  amplify_auth
//
//  Created by Noyes, Dustin on 7/2/20.
//

import Foundation
import Amplify
import AmplifyPlugins

struct FlutterSignUpRequest {
  var username: String?
  var password: String
  var userAttributes: [AuthUserAttribute] = []
  var providerOptions: Dictionary<String, Any>? = [:]
  var rawUserAttributes: Dictionary<String, Any>
  let standardAttributes = ["address", "birthdate", "email", "family_name", "gender", "given_name", "locale", "middle_name", "name", "nickname", "phone_number", "preferred_username", "picture", "profile", "updated_at", "website", "zoneinfo"]
  init(dict: NSMutableDictionary){
    self.username = dict["username"] as? String
    self.password = dict["password"] as! String
    self.providerOptions = dict["providerOptions"] as! Dictionary<String, Any>?
    self.rawUserAttributes = dict["userAttributes"] as! Dictionary<String, Any>
    self.userAttributes = self.formatUserAttributes(attributes: dict["userAttributes"] as! Dictionary<String, String>)
  }
    
  func formatUserAttributes(attributes: Dictionary<String, String>) -> [AuthUserAttribute] {
    var formattedAttributes: Array<AuthUserAttribute> = Array()
    for attr in attributes {
      if (standardAttributes.contains(attr.key)) {
        formattedAttributes.append(AuthUserAttribute(.unknown(attr.key), value: attr.value))
      } else {
        formattedAttributes.append(AuthUserAttribute(.custom(attr.key), value: attr.value))
      }
    }
    return formattedAttributes
  }
  func getUsername() -> String {
    var username: String = ""

    if (self.providerOptions?["usernameAttribute"] == nil && self.username != nil) {
        username = self.username! as String;
    } else if (self.providerOptions?["usernameAttribute"] != nil) {
      if (self.providerOptions?["usernameAttribute"] as! String == "email") {
        username = self.rawUserAttributes["email"] as! String
      } else {
        username = self.rawUserAttributes["phone_number"] as! String
      }
    }
    return username
  }
}
