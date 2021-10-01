/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

struct FlutterSignOutRequest {
    var options: AuthSignOutOperation.Request.Options?
    
    init(dict: NSMutableDictionary) {
        if let options = dict["options"] as? [String: Any] {
            self.options = createOptions(options: options)
        }
    }
        
    func createOptions(options: [String: Any]) -> AuthSignOutOperation.Request.Options {
        let globalSignOut = options["globalSignOut"] as? Bool ?? false
        return AuthSignOutOperation.Request.Options(globalSignOut: globalSignOut)
    }

}
