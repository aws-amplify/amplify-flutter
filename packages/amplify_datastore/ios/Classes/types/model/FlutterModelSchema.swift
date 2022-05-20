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

import Flutter
import Foundation
import Amplify

struct FlutterModelSchema {
    let name: String
    let fields: [String: FlutterModelField]
    let pluralName: String?
    let authRules: [FlutterAuthRule]
    var primaryKeyFieldKeys = [ModelFieldName]()
    var attributes = [FlutterModelAttribute]()

    init(serializedData: [String: Any], isModelType: Bool = true) throws {
        guard let name = serializedData["name"] as? String else {
            throw ModelSchemaError.parse(
                className: "FlutterModelSchema",
                fieldName: "name",
                desiredType: "String")
        }
        self.name = name

        guard let inputFieldsMap = serializedData["fields"] as? [String: [String: Any]] else {
            throw ModelSchemaError.parse(
                className: "FlutterModelSchema",
                fieldName: "fields",
                desiredType: "[String: [String: Any]]")
        }
        self.fields = try inputFieldsMap.mapValues {
            try FlutterModelField.init(serializedData: $0)
        }

        self.pluralName = serializedData["pluralName"] as? String

        if let inputAuthRulesMap = serializedData["authRules"] as? [[String: Any]] {
            authRules = try inputAuthRulesMap.map {
                try FlutterAuthRule(serializedData: $0)
            }
        } else {
            authRules = [FlutterAuthRule]()
        }

        if let inputIndexes = serializedData["indexes"] as? [[String: Any]] {
            for inputIndex in inputIndexes {
                let parsedIndex = try parseInputIndexes(serializedData: inputIndex)
                // When a model index is without a name, this model index is used as
                // the primary key of the model
                if (parsedIndex.name == nil) {
                    primaryKeyFieldKeys += parsedIndex.fields
                    // When the model index is a primary key and it has only 1 field
                    // it doesn't need to create a db index for it
                    // e.g. using @primaryKey directive on a model field
                    if (parsedIndex.fields.count == 1) {
                        continue
                    }
                }

                attributes.append(
                    FlutterModelAttribute.index(fields: parsedIndex.fields, name: parsedIndex.name)
                )
            }
        }

        // After parsing model index, if primaryKeyFieldKeys is still empty then
        // 1. The model doesn't use custom primary key
        // 2. The model doesn't have a explicit id field
        // 3. Model generated prior to custom primary key feature
        // Add the default id field as the primary key
        if (primaryKeyFieldKeys.isEmpty && isModelType) {
            primaryKeyFieldKeys += ["id"]
        }
    }

    public func convertToNativeModelSchema(customTypeSchemasRegistry: FlutterSchemaRegistry) throws -> ModelSchema {
        return ModelSchema.init(
            name: name,
            pluralName: pluralName,
            authRules: authRules.map{ $0.convertToNativeAuthRule() },
            attributes: attributes.map{ $0.convertToNativeModelAttribute() },
            fields: try fields.mapValues {
                try $0.convertToNativeModelField(customTypeSchemasRegistry: customTypeSchemasRegistry)
            },
            primaryKeyFieldKeys: primaryKeyFieldKeys
        )
    }

    private func parseInputIndexes(serializedData: [String: Any]) throws -> (fields: [String], name: String?) {
        let name = serializedData["name"] as? String
        guard let fields = serializedData["fields"] as? [String] else {
            throw ModelSchemaError.parse(
                className: "FlutterModelIndex",
                fieldName: "name",
                desiredType: "[String]")
        }

        return (fields, name)
    }
}
