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

public struct FlutterModelAssociation {
    private let associationType: String
    private var targetNames = [String]()
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

        // With custom primary key we are expecting model to provide targetNames instead of targetName
        // For belongsTo model association, if this information is missing, mostl likely
        // Flutter sent wrongly serialized data
        // Also, keeping targetName for backwards compatibility
        if let inputTargetName = serializedData["targetName"] as? String {
            targetNames.append(inputTargetName)
        } else if let inputTargetNames = serializedData["targetNames"] as? [String] {
            targetNames += inputTargetNames
        } else if associationType == "BelongsTo" {
            throw DataStoreError.decodingError(
                "Invalid ModelAssociation data: targetNames is not presented in the serialized ModelAssociation data",
                ErrorMessages.missingAttribute)
        }
        self.associatedName = serializedData["associatedName"] as? String
    }

    public func convertToNativeModelAssociation() -> ModelAssociation{
        switch associationType {
            case "HasMany":
                return .hasMany(associatedFieldName: associatedName)
            case "HasOne":
                return .hasOne(associatedFieldName: associatedName, targetNames: targetNames)
            case "BelongsTo":
                return .belongsTo(associatedFieldName: associatedName, targetNames: targetNames)
            default:
                preconditionFailure("Could not create a ModelAssociation from \(associationType)")
        }
    }
}
