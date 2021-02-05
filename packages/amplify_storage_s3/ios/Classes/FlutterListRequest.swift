/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import Foundation
import Amplify
import amplify_core

struct FlutterListRequest {
    var options: StorageListRequest.Options?
    init(request: Dictionary<String, AnyObject>) {
        self.options = setOptions(request: request)
    }

    static func validate(request: Dictionary<String, AnyObject>) throws {
        let validationErrorMessage = "List request malformed."
        if !(request["path"] is String?) {
            throw InvalidRequestError.storage(comment: validationErrorMessage,
                                              suggestion: String(format: ErrorMessages.missingAttribute, "path"))
        }
    }
    
    private func setOptions(request: Dictionary<String, AnyObject>) -> StorageListRequest.Options? {
        
        if(request["options"] != nil || request["path"] != nil) {
            let requestOptions = request["options"] as! Dictionary<String, AnyObject>
            //Default options
            var accessLevel = StorageAccessLevel.guest
            var targetIdentityId: String? = nil
            let path: String? = request["path"] as! String?
            
            for(key,value) in requestOptions {
                switch key {
                case "accessLevel":
                    accessLevel = StorageAccessLevel(rawValue: value as! String) ?? accessLevel
                case "targetIdentityId":
                    targetIdentityId = value as? String
                default:
                    print("Received unexpected option: \(key)")
                }
            }
            return StorageListRequest.Options(accessLevel: accessLevel, targetIdentityId: targetIdentityId, path: path)
        }
        return nil
    }
    
}
