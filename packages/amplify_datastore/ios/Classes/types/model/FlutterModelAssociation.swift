// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import amplify_flutter_ios

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
