//
//  FlutterUploadFileRequest.swift
//  Amplify
//
//  Created by nanda, ashish on 8/6/20.
//

import Foundation
import Amplify

struct FlutterGetUrlRequest {
    var key: String
    var options: StorageGetURLRequest.Options?
    init(request: Dictionary<String, AnyObject>) {
        self.key = request["key"] as! String
        self.options = setOptions(request: request)
    }
    
    static func isValid(request: Dictionary<String, AnyObject>) -> Bool {
        var valid: Bool = true;
        if(!(request["key"] != nil && request["key"] is String)){
            valid = false
        }
        return valid
        
    }
    
    private func setOptions(request: Dictionary<String, AnyObject>) -> StorageGetURLRequest.Options? {
        
        if(request["options"] != nil) {
            let requestOptions = request["options"] as! Dictionary<String, AnyObject>
            //Default options
            var accessLevel = StorageAccessLevel.guest
            var targetIdentityId: String? = nil
            var expires: Int = StorageGetURLRequest.Options.defaultExpireInSeconds
            
            for(key,value) in requestOptions {
                switch key {
                case "accessLevel":
                    accessLevel = StorageAccessLevel(rawValue: value as! String) ?? accessLevel
                case "targetIdentityId":
                    targetIdentityId = value as? String
                case "expires":
                    expires = value as! Int
                default:
                    print("Received unexpected option: \(key)")
                    
                }
            }
            return StorageGetURLRequest.Options(accessLevel: accessLevel, targetIdentityId: targetIdentityId, expires: expires)
        }
        return nil
    }
    
}
