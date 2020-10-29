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

import Flutter
import Foundation
import Amplify

struct FlutterModelSchema {
    
    let name: String
    let pluralName: String?
    let authRules: AuthRules? = nil
    let fields: FlutterModelFields
    let attributes: [ModelAttribute] = []
    
    init(serializedData: [String: AnyObject]) {
        self.name = serializedData["name"] as! String
        self.pluralName = serializedData["pluralName"] as? String
        self.fields = (serializedData["fields"] as! [String: [String: AnyObject]]).mapValues { FlutterModelField.init(serializedData: $0)
        }
    }
    
    public func convertToNativeModelSchema() -> ModelSchema {
        return ModelSchema.init(
            name: name,
            pluralName: pluralName,
            authRules: authRules ?? [],
            attributes: attributes,
            fields: fields.mapValues { $0.convertToNativeModelField() }
        )
    }
}
