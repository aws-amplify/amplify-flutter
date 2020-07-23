//
//  FlutterSignOutRequest.swift
//  amplify_auth_cognito
//
//  Created by Noyes, Dustin on 7/23/20.
//

import Foundation
import Amplify

struct FlutterSignOutRequest {
  var options: AuthSignOutRequest.Options?
  var providerOptions: Dictionary<String, Any>? = [:]
  init(dict: NSMutableDictionary){
    self.options = setOptions(dict: dict)
    self.providerOptions = dict["providerOptions"] as! Dictionary<String, Any>?
  }
}

func setOptions(dict: NSMutableDictionary) -> AuthSignOutRequest.Options {
    if (dict["providerOptions"] != nil) {
      return AuthSignOutRequest.Options(globalSignOut: true)
    } else {
      return AuthSignOutRequest.Options(globalSignOut: false)
    }
}
