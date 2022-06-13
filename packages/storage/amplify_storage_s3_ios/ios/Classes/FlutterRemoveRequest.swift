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
import amplify_flutter_ios

struct FlutterRemoveRequest {
    var key: String
    var options: StorageRemoveRequest.Options?
    init(request: Dictionary<String, AnyObject>) {
        self.key = request["key"] as! String
        self.options = setOptions(request: request)
    }
    
    static func validate(request: Dictionary<String, AnyObject>) throws {
        let validationErrorMessage = "Remove request malformed."
        if !(request["key"] is String) {
            throw InvalidRequestError.storage(comment: validationErrorMessage,
                                              suggestion: String(format: ErrorMessages.missingAttribute, "key"))
        }
    }
    
    private func setOptions(request: Dictionary<String, AnyObject>) -> StorageRemoveRequest.Options? {
        
        if(request["options"] != nil) {
            let requestOptions = request["options"] as! Dictionary<String, AnyObject>
            //Default options
            var accessLevel = StorageAccessLevel.guest
            
            for(key,value) in requestOptions {
                switch key {
                case "accessLevel":
                    accessLevel = StorageAccessLevel(rawValue: value as! String) ?? accessLevel
                default:
                    print("Received unexpected option: \(key)")
                    
                }
            }
            return StorageRemoveRequest.Options(accessLevel: accessLevel)
        }
        return nil
    }
    
}
