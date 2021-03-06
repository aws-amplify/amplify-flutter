
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

struct FlutterUpdateUserAttributesResult {
    var attributes: Dictionary<AuthUserAttributeKey, AuthUpdateAttributeResult>
    
    init(res: AmplifyOperation<AuthUpdateUserAttributesRequest, Dictionary<AuthUserAttributeKey, AuthUpdateAttributeResult>, AuthError>.OperationResult){
        switch res {
        case .success(let resultMap):
            self.attributes = resultMap
        case .failure:
            self.attributes = [:]
        }
    }
    
    func toJSON() -> Dictionary<String, Any> {
        return Dictionary(uniqueKeysWithValues: self.attributes.map { key, value in (key.rawValue, serializeAuthUpdateAttributeResult(result: value))})
    }
}
