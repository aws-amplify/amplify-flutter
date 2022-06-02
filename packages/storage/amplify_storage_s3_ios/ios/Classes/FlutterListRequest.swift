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

struct FlutterListRequest {

    let options: StorageListRequest.Options

    init(request: [String: Any?]) {
        self.options = FlutterListRequest.parseOptions(request: request)
    }

    private static func parseOptions(request: [String: Any?]) -> StorageListRequest.Options {
        var accessLevel = StorageAccessLevel.guest
        var targetIdentityId: String? = nil
        let path = request["path"] as? String
        
        if let options = request["options"] as? [String: Any?] {
            if let accessValueLevel = options["accessLevel"] as? String,
               let storageAccessLevel = StorageAccessLevel(rawValue: accessValueLevel) {
                accessLevel = storageAccessLevel
            }
            targetIdentityId = options["targetIdentityId"] as? String
        }
        
        return StorageListRequest.Options(accessLevel: accessLevel,
                                          targetIdentityId: targetIdentityId,
                                          path: path)
    }
    
}
