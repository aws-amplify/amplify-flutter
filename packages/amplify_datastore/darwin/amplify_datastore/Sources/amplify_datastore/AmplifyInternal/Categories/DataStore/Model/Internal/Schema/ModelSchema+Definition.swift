//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Defines the type of a `Model` field.
/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public enum ModelFieldType {

    case string
    case int
    case double
    case date
    case dateTime
    case time
    case timestamp
    case bool
    case `enum`(type: EnumPersistable.Type)
    case embedded(type: Codable.Type, schema: ModelSchema?)
    case embeddedCollection(of: Codable.Type, schema: ModelSchema?)
    case model(name: ModelName)
    case collection(of: ModelName)

    public static func model(type: Model.Type) -> ModelFieldType {
        .model(name: type.modelName)
    }

    public static func collection(of type: Model.Type) -> ModelFieldType {
        .collection(of: type.modelName)
    }

    public static func embedded(type: Codable.Type) -> ModelFieldType {
        guard let embeddedType = type as? Embeddable.Type else {
            return .embedded(type: type, schema: nil)
        }
        return .embedded(type: type, schema: embeddedType.schema)
    }

    public static func embeddedCollection(of type: Codable.Type) -> ModelFieldType {
        guard let embeddedType = type as? Embeddable.Type else {
            return .embedded(type: type, schema: nil)
        }
        return .embeddedCollection(of: type, schema: embeddedType.schema)
    }

    public var isArray: Bool {
        switch self {
        case .collection, .embeddedCollection:
            return true
        default:
            return false
        }
    }

    @available(*, deprecated, message: """
        This has been replaced with `.embedded(type)` and `.embeddedCollection(of)` \
        Please use Amplify CLI 4.21.4 or newer to re-generate your Models to conform to Embeddable type.
    """)
    public static func customType(_ type: Codable.Type) -> ModelFieldType {
        return .embedded(type: type, schema: nil)
    }

    public static func from(type: Any.Type) -> ModelFieldType {
        if type is String.Type {
            return .string
        }
        if type is Int.Type || type is Int64.Type {
            return .int
        }
        if type is Double.Type {
            return .double
        }
        if type is Bool.Type {
            return .bool
        }
        if type is Date.Type {
            return .dateTime
        }
        if type is Temporal.Date.Type {
            return .date
        }
        if type is Temporal.DateTime.Type {
            return .dateTime
        }
        if type is Temporal.Time.Type {
            return .time
        }
        if let enumType = type as? EnumPersistable.Type {
            return .enum(type: enumType)
        }
        if let modelType = type as? Model.Type {
            return .model(type: modelType)
        }
        if let embeddedType = type as? Codable.Type {
            return .embedded(type: embeddedType)
        }
        return Fatal.preconditionFailure("Could not create a ModelFieldType from \(String(describing: type)) MetaType")
    }
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public enum ModelFieldNullability {
    case optional
    case required

    var isRequired: Bool {
        switch self {
        case .optional:
            return false
        case .required:
            return true
        }
    }
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public struct ModelSchemaDefinition {

    internal let name: String

    @available(*, deprecated, message: "Use of pluralName is deprecated, use syncPluralName instead.")
    public var pluralName: String?

    public var listPluralName: String?
    public var syncPluralName: String?

    public var authRules: AuthRules
    internal var fields: ModelFields
    internal var primarykeyFields: [ModelFieldName]
    internal var attributes: [ModelAttribute]

    init(name: String,
         pluralName: String? = nil,
         listPluralName: String? = nil,
         syncPluralName: String? = nil,
         authRules: AuthRules = [],
         attributes: [ModelAttribute] = []) {
        self.name = name
        self.pluralName = pluralName
        self.listPluralName = listPluralName
        self.syncPluralName = syncPluralName
        self.fields = [:] as ModelFields
        self.authRules = authRules
        self.attributes = attributes
        self.primarykeyFields = []
    }

    public mutating func fields(_ fields: ModelFieldDefinition...) {
        fields.forEach { definition in
            let field = definition.modelField
            self.fields[field.name] = field
        }
    }

    public mutating func attributes(_ attributes: ModelAttribute...) {
        self.attributes = attributes
        let primaryKeyDefinition: [[ModelFieldName]] = attributes.compactMap {
            if case let .primaryKey(fields: fields) = $0 {
                return fields
            }
            return nil
        }

        if primaryKeyDefinition.count > 1 {
            preconditionFailure("Multiple primary key definitions found on schema \(name)")
        }
        primarykeyFields = primaryKeyDefinition.first ?? []
    }

    internal func build() -> ModelSchema {
        return ModelSchema(name: name,
                           pluralName: pluralName,
                           listPluralName: listPluralName,
                           syncPluralName: syncPluralName,
                           authRules: authRules,
                           attributes: attributes,
                           fields: fields,
                           primaryKeyFieldKeys: primarykeyFields)
    }
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning.
public enum ModelFieldDefinition {
    case field(name: String,
               type: ModelFieldType,
               nullability: ModelFieldNullability,
               isReadOnly: Bool,
               association: ModelAssociation?,
               attributes: [ModelFieldAttribute],
               authRules: AuthRules)

    public static func field(_ key: CodingKey,
                             is nullability: ModelFieldNullability = .required,
                             isReadOnly: Bool = false,
                             ofType type: ModelFieldType = .string,
                             attributes: [ModelFieldAttribute] = [],
                             association: ModelAssociation? = nil,
                             authRules: AuthRules = []) -> ModelFieldDefinition {
        return .field(name: key.stringValue,
                      type: type,
                      nullability: nullability,
                      isReadOnly: isReadOnly,
                      association: association,
                      attributes: attributes,
                      authRules: authRules)
    }

    @available(*, deprecated, message: "Use .primaryKey(fields:)")
    public static func id(_ key: CodingKey) -> ModelFieldDefinition {
        return id(key.stringValue)
    }

    @available(*, deprecated, message: "Use .primaryKey(fields:)")
    public static func id(_ name: String = "id") -> ModelFieldDefinition {
        return .field(name: name,
                      type: .string,
                      nullability: .required,
                      isReadOnly: false,
                      association: nil,
                      attributes: [.primaryKey],
                      authRules: [])
    }

    public static func hasMany(_ key: CodingKey,
                               is nullability: ModelFieldNullability = .required,
                               isReadOnly: Bool = false,
                               ofType type: Model.Type,
                               associatedWith associatedKey: CodingKey) -> ModelFieldDefinition {
        return .field(key,
                      is: nullability,
                      isReadOnly: isReadOnly,
                      ofType: .collection(of: type),
                      association: .hasMany(associatedWith: associatedKey))
    }

    public static func hasMany(_ key: CodingKey,
                               is nullability: ModelFieldNullability = .required,
                               isReadOnly: Bool = false,
                               ofType type: Model.Type,
                               associatedFields associatedKeys: [CodingKey]) -> ModelFieldDefinition {
        return .field(key,
                      is: nullability,
                      isReadOnly: isReadOnly,
                      ofType: .collection(of: type),
                      association: .hasMany(associatedWith: associatedKeys.first, associatedFields: associatedKeys))
    }

    public static func hasOne(_ key: CodingKey,
                              is nullability: ModelFieldNullability = .required,
                              isReadOnly: Bool = false,
                              ofType type: Model.Type,
                              associatedWith associatedKey: CodingKey,
                              targetName: String? = nil) -> ModelFieldDefinition {
        return .field(key,
                      is: nullability,
                      isReadOnly: isReadOnly,
                      ofType: .model(type: type),
                      association: .hasOne(associatedWith: associatedKey, targetNames: targetName.map { [$0] } ?? []))
    }

    public static func hasOne(_ key: CodingKey,
                              is nullability: ModelFieldNullability = .required,
                              isReadOnly: Bool = false,
                              ofType type: Model.Type,
                              associatedWith associatedKey: CodingKey,
                              targetNames: [String]) -> ModelFieldDefinition {
        return .field(key,
                      is: nullability,
                      isReadOnly: isReadOnly,
                      ofType: .model(type: type),
                      association: .hasOne(associatedWith: associatedKey, targetNames: targetNames))
    }

    public static func belongsTo(_ key: CodingKey,
                                 is nullability: ModelFieldNullability = .required,
                                 isReadOnly: Bool = false,
                                 ofType type: Model.Type,
                                 associatedWith associatedKey: CodingKey? = nil,
                                 targetName: String? = nil) -> ModelFieldDefinition {
        return .field(key,
                      is: nullability,
                      isReadOnly: isReadOnly,
                      ofType: .model(type: type),
                      association: .belongsTo(associatedWith: associatedKey, targetNames: targetName.map { [$0] } ?? []))
    }

    public static func belongsTo(_ key: CodingKey,
                                 is nullability: ModelFieldNullability = .required,
                                 isReadOnly: Bool = false,
                                 ofType type: Model.Type,
                                 associatedWith associatedKey: CodingKey? = nil,
                                 targetNames: [String]) -> ModelFieldDefinition {
        return .field(key,
                      is: nullability,
                      isReadOnly: isReadOnly,
                      ofType: .model(type: type),
                      association: .belongsTo(associatedWith: associatedKey, targetNames: targetNames))
    }

    public var modelField: ModelField {
        guard case let .field(name,
                              type,
                              nullability,
                              isReadOnly,
                              association,
                              attributes,
                              authRules) = self else {
            return Fatal.preconditionFailure("Unexpected enum value found: \(String(describing: self))")
        }
        return ModelField(name: name,
                          type: type,
                          isRequired: nullability.isRequired,
                          isReadOnly: isReadOnly,
                          isArray: type.isArray,
                          attributes: attributes,
                          association: association,
                          authRules: authRules)
    }
}
