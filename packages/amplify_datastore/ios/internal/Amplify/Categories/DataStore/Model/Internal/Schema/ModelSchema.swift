//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public typealias ModelFieldName = String

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public enum ModelAttribute: Equatable {
    /// Represents a database index, often used for frequent query optimizations.
    case index(fields: [ModelFieldName], name: String?)

    /// This model is used by the Amplify system or a plugin, and should not be used by the app developer
    case isSystem

    /// Defines the primary key for the schema.
    case primaryKey(fields: [ModelFieldName])

    /// Convenience factory method to initialize a `.primaryKey` attribute by
    /// using the model coding keys
    public static func primaryKey(fields: [CodingKey]) -> ModelAttribute {
        return .primaryKey(fields: fields.map { $0.stringValue })
    }
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public enum ModelFieldAttribute {
    @available(*, deprecated, message: "Use the primaryKey member of the schema")
    case primaryKey
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public struct ModelField {

    public let name: ModelFieldName
    public let type: ModelFieldType
    public let isRequired: Bool
    public let isReadOnly: Bool
    public let isArray: Bool
    public let attributes: [ModelFieldAttribute]
    public let association: ModelAssociation?
    public let authRules: AuthRules

    @available(*, deprecated, message: "Use the primaryKey member of the schema")
    public var isPrimaryKey: Bool {
        return attributes.contains { $0 == .primaryKey }
    }

    public init(name: String,
                type: ModelFieldType,
                isRequired: Bool = false,
                isReadOnly: Bool = false,
                isArray: Bool = false,
                attributes: [ModelFieldAttribute] = [],
                association: ModelAssociation? = nil,
                authRules: AuthRules = []) {
        self.name = name
        self.type = type
        self.isRequired = isRequired
        self.isReadOnly = isReadOnly
        self.isArray = isArray
        self.attributes = attributes
        self.association = association
        self.authRules = authRules
    }
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public typealias ModelFields = [String: ModelField]

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public typealias ModelName = String

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public struct ModelSchema {

    public let name: String

    @available(*, deprecated, message: "Use of pluralName is deprecated, use syncPluralName instead.")
    public let pluralName: String?

    public let listPluralName: String?
    public let syncPluralName: String?
    public let authRules: AuthRules
    public let fields: ModelFields
    public let attributes: [ModelAttribute]
    public let indexes: [ModelAttribute]

    public let sortedFields: [ModelField]

    private var _primaryKey: ModelPrimaryKey?
    public var primaryKey: ModelPrimaryKey {
        guard let primaryKey = _primaryKey else {
            return Fatal.preconditionFailure("Primary Key not defined for `\(name)`")
        }
        return primaryKey
    }

    public init(name: String,
                pluralName: String? = nil,
                listPluralName: String? = nil,
                syncPluralName: String? = nil,
                authRules: AuthRules = [],
                attributes: [ModelAttribute] = [],
                fields: ModelFields = [:],
                primaryKeyFieldKeys: [ModelFieldName] = []) {
        self.name = name
        self.pluralName = pluralName
        self.listPluralName = listPluralName
        self.syncPluralName = syncPluralName
        self.authRules = authRules
        self.attributes = attributes
        self.fields = fields
        self.indexes = attributes.indexes
        self._primaryKey = ModelPrimaryKey(allFields: fields,
                                           attributes: attributes,
                                           primaryKeyFieldKeys: primaryKeyFieldKeys)

        let indexOfPrimaryKeyField = _primaryKey?.indexOfField ?? { (_: String) in nil }
        self.sortedFields = fields.sortedFields(indexOfPrimaryKeyField: indexOfPrimaryKeyField)
    }

    public func field(withName name: String) -> ModelField? {
        return fields[name]
    }
}

// MARK: - ModelAttribute + Index

extension ModelAttribute {
    /// Convenience method to check if a model attribute is a primary key index
    var isPrimaryKeyIndex: Bool {
        if case let .index(fields: fields, name: name) = self,
           name == nil, fields.count >= 1 {
            return true
        }
        return false
    }
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
extension Array where Element == ModelAttribute {
    var indexes: [ModelAttribute] {
        filter {
            switch $0 {
            case .index:
                return true
            default:
                return false
            }
        }
    }
}

public extension ModelSchema {
    /// Returns the list of fields that make up the primary key for the model.
    /// In case of a custom primary key, the model has a `@key` directive
    /// without a name and at least 1 field
    var primaryKeyIndexFields: [ModelFieldName]? {
        attributes.compactMap {
            if case let .index(fields, _) = $0, $0.isPrimaryKeyIndex {
                return fields
            }
            return nil
        }.first
    }
}

// MARK: - Dictionary + ModelField

extension Dictionary where Key == String, Value == ModelField {

    /// Returns an array of the values sorted by some pre-defined rules:
    ///
    /// 1. primary key always comes first (sorted based on their schema declaration order in case of a composite key)
    /// 2. foreign keys always come at the end
    /// 3. the remaining fields are sorted alphabetically
    ///
    /// This is useful so code that uses the fields to generate queries and other
    /// persistence-related operations guarantee that the results are always consistent.
    func sortedFields(indexOfPrimaryKeyField: (ModelFieldName) -> Int?) -> [Value] {
        return values.sorted { one, other in
            if let oneIndex = indexOfPrimaryKeyField(one.name),
               let otherIndex = indexOfPrimaryKeyField(other.name) {
                return oneIndex < otherIndex
            }

            if indexOfPrimaryKeyField(one.name) != nil {
                return true
            }
            if indexOfPrimaryKeyField(other.name) != nil {
                return false
            }
            if one.hasAssociation && !other.hasAssociation {
                return false
            }
            if !one.hasAssociation && other.hasAssociation {
                return true
            }
            return one.name < other.name
        }
    }
}
