//
//  FlutterSignOutResult.swift
//  amplify_auth_cognito
//
//  Created by Noyes, Dustin on 7/23/20.
//

import Foundation
import Amplify

struct FlutterSignOutResult  {
    var signOutState: String

    init(res: AmplifyOperation<AuthSignOutRequest, Void, AuthError>.OperationResult){
      self.signOutState = setState(res: res)
    }
    
    func toJSON() -> Dictionary<String, Any> {
       return [
         "signOutState": self.signOutState,
         "providerData": []
       ]
   }
}

func setState(res: AmplifyOperation<AuthSignOutRequest, Void, AuthError>.OperationResult) -> String {
    let state: String = "ERROR"
    switch res {
        case .success:
          return "DONE"
        case .failure:
          return "ERROR"
    }
    return state
}

