/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    var attributes: [FlutterModelAttribute] = []

    init(serializedData: [String: Any]) throws {
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
            attributes += try inputIndexes.map {
                let parsedIndex = try parseInputIndexes(serializedData: $0)
                return FlutterModelAttribute.index(fields: parsedIndex.fields, name: parsedIndex.name)
            }
        }

        if let inputPrimaryKey = serializedData["primaryKey"] as? [String: Any] {
            let parsedPrimaryKey = try parseInputIndexes(serializedData: inputPrimaryKey)
            primaryKeyFieldKeys += parsedPrimaryKey.fields
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
