//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite
import AWSPluginsCore

typealias ModelValues = [String: Any?]

/// Struct used to hold the values extracted from a executed `Statement`.
///
/// This type allows the results to be decoded into the actual models with a single call
/// instead of decoding each row individually. This keeps serialization of
/// large result sets efficient.
struct StatementResult<M: Model>: Decodable {

    let elements: [M]

    static func from(dictionary: ModelValues) throws -> Self {
        let data = try JSONSerialization.data(withJSONObject: dictionary)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = ModelDateFormatting.decodingStrategy
        return try decoder.decode(Self.self, from: data)
    }
}

/// Conforming to this protocol means that the `Statement` can be converted to an array of `Model`.
protocol StatementModelConvertible {

    /// Converts all the rows in the current executed `Statement` to the given `Model` type.
    ///
    /// - Parameters:
    ///   - modelType - the target `Model` type
    ///   - modelSchema - the schema for `Model`
    ///   - statement - the query executed that generated this result
    /// - Returns: an array of `Model` of the specified type
    func convert<M: Model>(to modelType: M.Type,
                           withSchema modelSchema: ModelSchema,
                           using statement: SelectStatement,
                           eagerLoad: Bool) throws -> [M]

}

/// Extend `Statement` with the model conversion capabilities defined by `StatementModelConvertible`.
extension Statement: StatementModelConvertible {

    var logger: Logger {
        Amplify.Logging.logger(forCategory: .dataStore)
    }

    func convert<M: Model>(to modelType: M.Type,
                           withSchema modelSchema: ModelSchema,
                           using statement: SelectStatement,
                           eagerLoad: Bool = true) throws -> [M] {
        let elements: [ModelValues] = try self.convertToModelValues(to: modelType,
                                                                    withSchema: modelSchema,
                                                                    using: statement,
                                                                    eagerLoad: eagerLoad)
        let values: ModelValues = ["elements": elements]
        let result: StatementResult<M> = try StatementResult.from(dictionary: values)
        return result.elements
    }

    func convertToModelValues<M: Model>(to modelType: M.Type,
                                        withSchema modelSchema: ModelSchema,
                                        using statement: SelectStatement,
                                        eagerLoad: Bool = true) throws -> [ModelValues] {
        var elements: [ModelValues] = []

        // parse each row of the result
        let iter = makeIterator()
        while let row = try iter.failableNext() {
            if let modelDictionary = try convert(row: row, withSchema: modelSchema, using: statement, eagerLoad: eagerLoad) {
                elements.append(modelDictionary)
            }
        }
        return elements
    }

    func convert(
        row: Element,
        withSchema modelSchema: ModelSchema,
        using statement: SelectStatement,
        eagerLoad: Bool = true,
        path: [String] = []
    ) throws -> ModelValues? {
        guard let maxDepth = columnNames.map({ $0.split(separator: ".").count }).max(),
              path.count < maxDepth
        else {
            return nil
        }

        let modelValues = try modelSchema.fields.mapValues {
            try convert(field: $0, schema: modelSchema, using: statement, from: row, eagerLoad: eagerLoad, path: path)
        }

        if modelValues.values.contains(where: { $0 != nil }) {
            return modelValues.merging(schemeMetadata(schema: modelSchema, element: row, path: path)) { $1 }
        } else {
            return nil
        }
    }

    private func convert(
        field: ModelField,
        schema: ModelSchema,
        using statement: SelectStatement,
        from element: Element,
        eagerLoad: Bool,
        path: [String]
    ) throws -> Any? {

        switch (field.type, eagerLoad) {
        case (.collection, _):
            return convertCollection(field: field, schema: schema, from: element, path: path)

        case (.model, false):
            let targetNames = getTargetNames(field: field)
            var associatedFieldValues = targetNames.map {
                getValue(from: element, by: path + [$0])
            }.compactMap { $0 }
            .map { String(describing: $0) }

            if associatedFieldValues.isEmpty {
                associatedFieldValues = associatedValues(
                    from: path + [field.foreignKeySqlName(withAssociationTargets: targetNames)],
                    element: element
                )
            }
            guard associatedFieldValues.count == field.associatedFieldNames.count else {
                return nil
            }
            return DataStoreModelDecoder.lazyInit(identifiers: zip(field.associatedFieldNames, associatedFieldValues).map {
                LazyReferenceIdentifier(name: $0.0, value: $0.1)
            })?.toJsonObject()

        case let (.model(modelName), true):
            guard let modelSchema = getModelSchema(for: modelName, with: statement)
            else {
                return nil
            }

            return try convert(
                row: element,
                withSchema: modelSchema,
                using: statement,
                eagerLoad: eagerLoad,
                path: path + [field.name])

        default:
            let value = getValue(from: element, by: path + [field.name])
            return try SQLiteModelValueConverter.convertToSource(from: value, fieldType: field.type)
        }
    }

    private func getModelSchema(for modelName: ModelName, with statement: SelectStatement) -> ModelSchema? {
        return statement.metadata.columnMapping.values.first { $0.0.name == modelName }.map { $0.0 }
    }

    private func associatedValues(from foreignKeyPath: [String], element: Element) -> [String] {
        return [getValue(from: element, by: foreignKeyPath)]
            .compactMap({ $0 })
            .map({ String(describing: $0) })
            .flatMap({ $0.split(separator: ModelIdentifierFormat.Custom.separator.first!) })
            .map({ String($0).trimmingCharacters(in: .init(charactersIn: "\"")) })
    }

    private func convertCollection(field: ModelField, schema: ModelSchema, from element: Element, path: [String]) -> Any? {
        if field.isArray && field.hasAssociation,
           case let .some(.hasMany(associatedFieldName: associatedFieldName, associatedFieldNames: associatedFieldNames)) = field.association {
            // Construct the lazy list based on the field reference name and `@@primarykey` or primary key field of the parent
            if associatedFieldNames.count <= 1, let associatedFieldName = associatedFieldName {
                let primaryKeyName = schema.primaryKey.isCompositeKey
                    ? ModelIdentifierFormat.Custom.sqlColumnName
                    : schema.primaryKey.fields.first.flatMap { $0.name }
                let primaryKeyValue = primaryKeyName.flatMap { getValue(from: element, by: path + [$0]) }

                return primaryKeyValue.map {
                    DataStoreListDecoder.lazyInit(associatedIds: [String(describing: $0)],
                                                  associatedWith: [associatedFieldName])
                }
            } else {
                // If `targetNames` is > 1, then this is a uni-directional has-many, thus no reference field on the child
                // Construct the lazy list based on the primary key values and the corresponding target names
                let primaryKeyNames = schema.primaryKey.fields.map { $0.name }
                let primaryKeyValues = primaryKeyNames
                    .map { getValue(from: element, by: path + [$0]) }
                    .compactMap { $0 }
                    .map { String(describing: $0) }
                return DataStoreListDecoder.lazyInit(associatedIds: primaryKeyValues,
                                                     associatedWith: associatedFieldNames)
            }

        }

        return nil
    }

    private func getTargetNames(field: ModelField) -> [String] {
        switch field.association {
        case let .some(.hasOne(_, targetNames)):
            return targetNames
        case let .some(.belongsTo(_, targetNames)):
            return targetNames
        default:
            return []
        }
    }

    private func getValue(from element: Element, by path: [String]) -> Binding? {
        return columnNames.firstIndex { $0 == path.fieldPath }
            .flatMap { element[$0] }
    }

    private func schemeMetadata(schema: ModelSchema, element: Element, path: [String]) -> ModelValues {
        var metadata = [
            "__typename": schema.name
        ]

        if schema.primaryKey.isCompositeKey,
           let compositeKey = getValue(from: element, by: path + [ModelIdentifierFormat.Custom.sqlColumnName]) {
            metadata.updateValue(String(describing: compositeKey), forKey: ModelIdentifierFormat.Custom.sqlColumnName)
        }

        return metadata
    }
}

private extension Dictionary where Key == String, Value == Any? {

    /// Utility to create a `NSMutableDictionary` from a Swift `Dictionary<String, Any?>`.
    func mutableCopy() -> NSMutableDictionary {
        // swiftlint:disable:next force_cast
        return (self as NSDictionary).mutableCopy() as! NSMutableDictionary
    }
}

/// Extension that adds utilities to created nested values in a dictionary
/// from a `keyPath` notation (e.g. `root.with.some.nested.prop`.
private extension NSMutableDictionary {

    /// Utility to allows Swift standard types to be used in `setObject`
    /// of the `NSMutableDictionary`.
    ///
    /// - Parameters:
    ///   - value: the value to be set
    ///   - key: the key as a `String`
    func updateValue(_ value: Value?, forKey key: String) {
        let object = value == nil ? NSNull() : value as Any
        setObject(object, forKey: key as NSString)
    }

    /// Utility that enables the automatic creation of nested dictionaries when
    /// a `keyPath` is passed, even if no existing value is set in that `keyPath`.
    ///
    /// This function will auto-create nested structures and set the value accordingly.
    ///
    /// - Example
    ///
    /// ```swift
    /// let dict = [:].mutableCopy()
    /// dict.updateValue(1, "some.nested.value")
    ///
    /// // dict now is
    /// [
    ///     "some": [
    ///         "nested": [
    ///             "value": 1
    ///         ]
    ///     ]
    /// ]
    /// ```
    ///
    /// - Parameters:
    ///   - value: the value to be set
    ///   - keyPath: the key path as a `String` (e.g. "nested.key")
    func updateValue(_ value: Value?, forKeyPath keyPath: String) {
        if keyPath.firstIndex(of: ".") == nil {
            updateValue(value, forKey: keyPath)
        }
        let keyComponents = keyPath.components(separatedBy: ".")
        var current = self
        for (index, key) in keyComponents.enumerated() {
            let isLast = index == keyComponents.endIndex - 1
            if isLast {
                current.updateValue(value, forKey: key)
            } else if let nested = current[key] as? NSMutableDictionary {
                current = nested
            } else {
                let nested: NSMutableDictionary = [:]
                current.updateValue(nested, forKey: key)
                current = nested
            }
        }
    }

}

extension String {
    /// Utility to return the second last keypath (if available) given a keypath. For example,
    ///
    /// - "post" returns the key path root "post"
    /// - "post.id" returns "post", dropping the path "id"
    /// - "post.blog.id" returns "post.blog", dropping the path "id"
    ///
    /// - Parameter keyPath: the key path as a `String` (e.g. "nested.key")
    func dropLastPath() -> String {
        if firstIndex(of: ".") == nil {
            return self
        }

        let keyComponents = components(separatedBy: ".")
        let index = keyComponents.count - 2
        if index == 0 {
            return keyComponents[index]
        } else {
            let subKeyComponents = keyComponents.dropLast()
            return subKeyComponents.joined(separator: ".")
        }
    }
}

extension Array where Element == String {
    var fieldPath: String {
        self.filter { !$0.isEmpty }.joined(separator: ".")
    }
}
