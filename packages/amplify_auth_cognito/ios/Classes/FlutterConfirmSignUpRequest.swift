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
}
