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

public struct FlutterModelAssociation {
    
    private let associationType : String
    private let targetName : String?
    private let associatedName: String?

    init(serializedData: [String: Any]) throws {
        
        guard let associationType = serializedData["associationType"] as? String
        else {
            throw ModelSchemaError.parse(
                className: "FlutterModelAssociation",
                fieldName: "associationType",
                desiredType: "String")
        }
        self.associationType = associationType
        
        self.targetName = serializedData["targetName"] as? String
        self.associatedName = serializedData["associatedName"] as? String
    }
    
    public func convertToNativeModelAssociation() -> ModelAssociation{
        
        switch associationType {
            case "HasMany":
                return ModelAssociation.hasMany(associatedFieldName: associatedName)
            case "HasOne":
                return ModelAssociation.hasOne(associatedFieldName: associatedName)
            case "BelongsTo":
                return ModelAssociation.belongsTo(associatedFieldName: associatedName, targetName: targetName)
            default:
                preconditionFailure("Could not create a ModelAssociation from \(associationType)")
        }
    }
}
