//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public struct ModelPrimaryKey {
    public var fields: [ModelField] = []
    private var fieldsLookup: Set<ModelFieldName> = []

    public var isCompositeKey: Bool {
        fields.count > 1
    }

    init?(allFields: ModelFields,
          attributes: [ModelAttribute],
          primaryKeyFieldKeys: [String] = []) {
        self.fields = resolvePrimaryKeyFields(allFields: allFields,
                                              attributes: attributes,
                                              primaryKeyFieldKeys: primaryKeyFieldKeys)

        if fields.isEmpty {
            return nil
        }

        self.fieldsLookup = Set(fields.map { $0.name })
    }

    /// Returns the list of fields that make up the primary key for the model.
    /// In case of a custom primary key, the model has a `@key` directive
    /// without a name and at least 1 field
    func primaryFieldsFromIndexes(attributes: [ModelAttribute]) -> [ModelFieldName]? {
        attributes.compactMap {
            if case let .index(fields, name) = $0, name == nil, fields.count >= 1 {
                return fields
            }
            return nil
        }.first
    }

    /// Resolve the model fields that are part of the primary key.
    /// For backward compatibility with different versions of the codegen,
    /// the algorithm tries first to resolve them using first the `primaryKeyFields`
    /// received from `primaryKey` member set in `ModelSchemaDefinition`,
    /// if not available tries to infer the fields using the `.indexes` and it eventually
    /// falls back on the `.primaryKey` attribute.
    ///
    /// It returns an array of fields as custom and composite primary keys are supported.
    /// - Parameter fields: schema model fields
    /// - Returns: an array of model fields
    func resolvePrimaryKeyFields(allFields: ModelFields,
                                 attributes: [ModelAttribute],
                                 primaryKeyFieldKeys: [String]) -> [ModelField] {
        var primaryKeyFields: [ModelField] = []

        if !primaryKeyFieldKeys.isEmpty {
            primaryKeyFields = primaryKeyFieldKeys.map {
                guard let field = allFields[$0] else {
                    preconditionFailure("Primary key field named (\($0)) not found in schema fields.")
                }
                return field
            }

        /// if indexes aren't defined most likely the model has a default `id` as PK
        /// so we have to rely on the `.primaryKey` attribute of each individual field
        } else if attributes.indexes.filter({ $0.isPrimaryKeyIndex }).isEmpty {
            primaryKeyFields = allFields.values.filter { $0.isPrimaryKey }

        /// Use the array of fields with a primary key index
        } else if let fieldNames = primaryFieldsFromIndexes(attributes: attributes) {
            primaryKeyFields = fieldNames.compactMap {
                if let field = allFields[$0] {
                    return field
                }
                return nil
            }
        }
        return primaryKeyFields
    }

    /// Convenience method to verify if a field is part of the primary key
    /// - Parameter name: field name
    /// - Returns: true if the field is part of the primary key
    public func contains(named name: ModelFieldName) -> Bool {
        fieldsLookup.contains(name)
    }

    /// Returns the first index in which a model field name of the collection
    /// is equal to the provided `name`
    /// Returns `nil` if no element was found.
    public func indexOfField(named name: ModelFieldName) -> Int? {
        fields.firstIndex(where: { $0.name == name })
    }
}
