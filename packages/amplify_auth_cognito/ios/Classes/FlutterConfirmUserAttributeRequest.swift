
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

struct FlutterConfirmUserAttributeRequest {
    var userAttributeKey: AuthUserAttributeKey
    var confirmationCode: String
    
    init(dict: NSMutableDictionary) {
        self.userAttributeKey = createAuthUserAttributeKey(keyName: dict["userAttributeKey"] as! String)
        self.confirmationCode = dict["confirmationCode"] as! String
    }
    
    static func validate(dict: NSMutableDictionary) throws {
        let validationErrorMessage = "ConfirmUserAttribute Request malformed."
        if (dict["userAttributeKey"] == nil) {
            throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "userAttributeKey"))
        } else if (dict["confirmationCode"] == nil) {
            throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "confirmationCode"))
        }
    }
}
