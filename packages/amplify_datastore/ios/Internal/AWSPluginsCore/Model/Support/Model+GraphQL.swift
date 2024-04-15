//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

typealias GraphQLInput = [String: Any?]

/// Extension that adds GraphQL specific utilities to concret types of `Model`.
extension Model {

    /// Returns an array of model fields sorted by predefined rules (see ModelSchema+sortedFields)
    /// and filtered according the following criteria:
    /// - fields are not read-only
    /// - fields exist on the model
    private func fieldsForMutation(_ modelSchema: ModelSchema) -> [(ModelField, Any?)] {
        modelSchema.sortedFields.compactMap { field in
            guard !field.isReadOnly,
                  let fieldValue = getFieldValue(for: field.name,
                                                 modelSchema: modelSchema) else {
                return nil
            }
            return (field, fieldValue)
        }
    }

    /// Returns the input used for mutations
    /// - Parameter modelSchema: model's schema
    /// - Returns: A key-value map of the GraphQL mutation input
    func graphQLInputForMutation(_ modelSchema: ModelSchema, mutationType: GraphQLMutationType) -> GraphQLInput {
        var input: GraphQLInput = [:]

        // filter existing non-readonly fields
        let fields = fieldsForMutation(modelSchema)

        for (modelField, modelFieldValue) in fields {
            let name = modelField.name

            guard let value = modelFieldValue else {
                // Scenario: When there is no model field value, set `nil` for removal of values or deassociation.
                // 1. It is unnessessary to set `nil` values for create mutations.
                if mutationType == .create {
                    continue
                }
                // 2. On update/delete mutations, set the current model's associated model's primary key fields (which
                // are the targetNames) to `nil`. on the current model.
                if case .model = modelField.type { // add it for "belongs-to" and "has-one" associations.
                    let fieldNames = getFieldNameForAssociatedModels(modelField: modelField)
                    for fieldName in fieldNames {
                        // Only set to `nil` if it has not been set already. For hasOne relationships, where the
                        // target name of the associated model is explicitly on this model as a field property, we
                        // cannot guarantee which field is processed first, thus if there is a value for the explicit
                        // field and was already set, don't overwrite it.
                        if input[fieldName] == nil {
                            // we always set it to `nil` to account for the update mutation use cases where the caller
                            // may be de-associating the model from the associated model, which is why the `nil` is
                            // required in input variables to persist the removal the association.
                            input.updateValue(nil, forKey: fieldName)
                        }
                    }
                } else if case .collection = modelField.type { // skip all "has-many"
                    continue
                } else {
                    // 3. Set field values to `nil` for removal of values.
                    input.updateValue(nil, forKey: name)
                }

                continue
            }

            switch modelField.type {
            case .collection:
                // we don't currently support this use case
                continue
            case .date, .dateTime, .time:
                if let date = value as? TemporalSpec {
                    input[name] = date.iso8601String
                } else {
                    input[name] = value
                }
            case .enum:
                input[name] = (value as? EnumPersistable)?.rawValue
            case .model(let associateModelName):
                // get the associated model target names and their values
                let associatedModelIds = associatedModelIdentifierFields(fromModelValue: value,
                                                                         field: modelField,
                                                                         associatedModelName: associateModelName,
                                                                         mutationType: mutationType)
                for (fieldName, fieldValue) in associatedModelIds {
                    input.updateValue(fieldValue, forKey: fieldName)
                }
            case .embedded, .embeddedCollection:
                if let encodable = value as? Encodable {
                    let jsonEncoder = JSONEncoder(dateEncodingStrategy: ModelDateFormatting.encodingStrategy)
                    do {
                        let data = try jsonEncoder.encode(encodable.eraseToAnyEncodable())
                        input[name] = try JSONSerialization.jsonObject(with: data)
                    } catch {
                        return Fatal.preconditionFailure("Could not turn into json object from \(value)")
                    }
                }
            case .string, .int, .double, .timestamp, .bool:
                input[name] = value
            }
        }
        return input
    }

    /// Retrieve the custom primary key's value used for the GraphQL input.
    /// Only a subset of data types are applicable as custom indexes such as
    /// `date`, `dateTime`, `time`, `enum`, `string`, `double`, and `int`.
    func graphQLInputForPrimaryKey(modelFieldName: ModelFieldName,
                                   modelSchema: ModelSchema) -> String? {

        guard let modelField = modelSchema.field(withName: modelFieldName) else {
            return nil
        }

        let fieldValueOptional = getFieldValue(for: modelField.name, modelSchema: modelSchema)

        guard let fieldValue = fieldValueOptional else {
            return nil
        }

        // swiftlint:disable:next syntactic_sugar
        guard case .some(Optional<Any>.some(let value)) = fieldValue else {
            return nil
        }

        switch modelField.type {
        case .date, .dateTime, .time:
            if let date = value as? TemporalSpec {
                return date.iso8601String
            } else {
                return nil
            }
        case .enum:
            return (value as? EnumPersistable)?.rawValue
        case .model, .embedded, .embeddedCollection:
            return nil
        case .string, .double, .int:
            return String(describing: value)
        default:
            return nil
        }
    }

    /// Given a model value, its schema and a model field with associations returns
    /// an array of key-value pairs of the associated model identifiers and their values.
    /// - Parameters:
    ///   - value: model value
    ///   - field: model field
    ///   - modelSchema: model schema
    /// - Returns: an array of key-value pairs where `key` is the field name
    ///            and `value` its value in the associated model
    private func associatedModelIdentifierFields(fromModelValue value: Any,
                                                 field: ModelField,
                                                 associatedModelName: String,
                                                 mutationType: GraphQLMutationType) -> [(String, Persistable?)] {
        guard let associateModelSchema = ModelRegistry.modelSchema(from: associatedModelName) else {
            preconditionFailure("Associated model \(associatedModelName) not found.")
        }

        let fieldNames = getFieldNameForAssociatedModels(modelField: field)
        var values = getModelIdentifierValues(from: value, modelSchema: associateModelSchema)
        if values.count != fieldNames.count {
            values = [Persistable?](repeating: nil, count: fieldNames.count)
        }

        let associatedModelIdentifiers = zip(fieldNames, values).map { ($0.0, $0.1)}
        if mutationType != .update {
            return associatedModelIdentifiers.compactMap { key, value in
                value.map { (key, $0) }
            }
        } else {
            return associatedModelIdentifiers
        }
    }

    /// Given a model and its schema, returns the values of its identifier (primary key).
    /// The return value is an array as models can have a composite identifier.
    /// - Parameters:
    ///   - value: model value
    ///   - modelSchema: model's schema
    /// - Returns: array of values of its primary key
    private func getModelIdentifierValues(
        from value: Any,
        modelSchema: ModelSchema
    ) -> [Persistable?] {
        if let modelValue = value as? Model {
            return modelValue.identifier(schema: modelSchema).values
        } else if let optionalModel = value as? Model?,
                  let modelValue = optionalModel {
            return modelValue.identifier(schema: modelSchema).values
        } else if let lazyModel = value as? (any _LazyReferenceValue) {
            switch lazyModel._state {
            case .notLoaded(let identifiers):
                if let identifiers = identifiers {
                    return identifiers.map { identifier in
                        return identifier.value
                    }
                }
            case .loaded(let model):
                if let model = model {
                    return model.identifier(schema: modelSchema).values
                }
            }
        } else if let value = value as? [String: JSONValue] {
            var primaryKeyValues = [Persistable]()
            for field in modelSchema.primaryKey.fields {
                if case .string(let primaryKeyValue) = value[field.name] {
                    primaryKeyValues.append(primaryKeyValue)
                }
            }
            return primaryKeyValues
        }
        return []
    }

    /// Retrieves the GraphQL field name that associates the current model with the target model.
    /// By default, this is the current model + the associated Model + "Id", For example "comment" + "Post" + "Id"
    /// This information is also stored in the schema as `targetName` which is codegenerated to be the same as the
    /// default or an explicit field specified by the developer.
    private func getFieldNameForAssociatedModels(modelField: ModelField) -> [String] {
        let defaultFieldName = modelName.camelCased() + modelField.name.pascalCased() + "Id"
        if case let .belongsTo(_, targetNames) = modelField.association, !targetNames.isEmpty {
            return targetNames
        } else if case let .hasOne(_, targetNames) = modelField.association,
                  !targetNames.isEmpty {
            return targetNames
        }

        return [defaultFieldName]
    }

    private func getFieldValue(for modelFieldName: String, modelSchema: ModelSchema) -> Any?? {
        if let jsonModel = self as? JSONValueHolder {
            return jsonModel.jsonValue(for: modelFieldName, modelSchema: modelSchema) ?? nil
        } else {
            return self[modelFieldName] ?? self["_\(modelFieldName)"] ?? nil
        }
    }
}
