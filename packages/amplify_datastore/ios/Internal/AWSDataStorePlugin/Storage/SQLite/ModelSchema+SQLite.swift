//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite

extension String {

    /// Utility for wrapping the string in double quotes.
    func quoted() -> String {
        return "\"\(self)\""
    }
}

/// SQLite supported data types.
enum SQLDataType: String {
    case text
    case integer
    case real
}

/// Protocol that adds SQL-specific behavior to `ModelKey` types.
protocol SQLColumn {

    /// The name of the field as a SQL column.
    var sqlName: String { get }

    /// The underlying SQLite data type.
    var sqlType: SQLDataType { get }

    /// Computed property that indicates if the field is a foreign key or not.
    var isForeignKey: Bool { get }
}

extension ModelPrimaryKey: SQLColumn {
    /// Convenience method to convert a ModelPrimaryKey to an
    /// ModelField to be used in a SQL query
    var asField: ModelField {
        ModelField(name: name,
                   type: .string,
                   isRequired: true,
                   attributes: [.primaryKey])
    }

    var sqlType: SQLDataType {
        .text
    }

    var isForeignKey: Bool {
        false
    }

    public var sqlName: String {
        fields.count == 1 ? fields[0].name : ModelIdentifierFormat.Custom.sqlColumnName
    }

    public var name: String {
        sqlName
    }

    public func columnName(forNamespace namespace: String? = nil) -> String {
        if fields.count == 1, let field = fields.first {
            return field.columnName(forNamespace: namespace)
        }

        let columnName = ModelIdentifierFormat.Custom.sqlColumnName.quoted()
        if let namespace = namespace {
            return "\(namespace.quoted()).\(columnName)"
        }

        return columnName
    }
}

extension ModelField: SQLColumn {

    var sqlName: String {
        if case let .belongsTo(_, targetNames) = association {
            return foreignKeySqlName(withAssociationTargets: targetNames)
        } else if case let .hasOne(_, targetNames) = association {
            return foreignKeySqlName(withAssociationTargets: targetNames)
        }
        return name
    }

    var sqlType: SQLDataType {
        switch type {
        case .string, .enum, .date, .dateTime, .time, .model:
            return .text
        case .int, .bool, .timestamp:
            return .integer
        case .double:
            return .real
        default:
            return .text
        }
    }

    var isForeignKey: Bool {
        isAssociationOwner
    }

    /// Default foreign value used to reference a model with a composite primary key.
    /// It's only used for the local storage, the individual values will be sent to the cloud.
    func foreignKeySqlName(withAssociationTargets targetNames: [String]) -> String {
        // default name for legacy models without a target name
        if targetNames.isEmpty {
            return name + "Id"

        // association with a model with a single-field PK
        } else if targetNames.count == 1,
                  let keyName = targetNames.first {
            return keyName
        }
        // composite PK
        return "@@\(name)ForeignKey"
    }

    /// Get the name of the `ModelField` as a SQL column name. Columns can be optionally namespaced
    /// and are always wrapped in quotes so reserved words are escaped.
    ///
    /// For instance, `columnName(forNamespace: "root")` on a field named "id" returns `"root"."id"`
    ///
    /// - Parameter namespace: the optional column namespace
    /// - Returns: a valid (i.e. escaped) SQL column name
    func columnName(forNamespace namespace: String? = nil) -> String {
        var column = sqlName.quoted()
        if let namespace = namespace {
            column = namespace.quoted() + "." + column
        }
        return column
    }

    /// Get the column alias of a `ModelField`. Aliases are useful for serialization of SQL query
    /// results to `Model` properties. A column alias might also have an optional `namespace` that
    /// allows nested properties to be represented by their full path.
    ///
    /// For instance, if a model named `Comment` has a reference to model named `Post` through the
    /// `post` property, the nested `id` field could be aliased as `post.id`.
    ///
    /// - Parameter namespace: the optional alias namespace
    /// - Returns: the column alias prefixed by `as`. Example: if the `Model` field is named "id"
    /// the call `field.columnAlias(forNamespace: "post")` would return `as "post.id"`.
    func columnAlias(forNamespace namespace: String? = nil) -> String {
        var column = sqlName
        if let namespace = namespace {
            column = "\(namespace).\(column)"
        }
        return column.quoted()
    }

}

extension ModelSchema {

    /// Filter the fields that represent actual columns on the `Model` SQL table. The definition of
    /// a column is a field that either represents a scalar value (e.g. string, number, etc) or
    /// the owner of a foreign key to another `Model`. Fields that reference the inverse side of
    /// the relationship (i.e. the "one" side of a "one-to-many" relationship) are excluded.
    var columns: [ModelField] {
        let fields = sortedFields.filter { !$0.hasAssociation || $0.isForeignKey }
        if primaryKey.isCompositeKey {
            return [primaryKey.asField] + fields
        }
        return fields
    }

    /// Filter the fields that represent foreign keys.
    var foreignKeys: [ModelField] {
        sortedFields.filter { $0.isForeignKey }
    }

    /// Create SQLite indexes corresponding to secondary indexes in the model schema
    func createIndexStatements() -> String {
        // Store field names used to represent associations for a fast lookup
        var associationsFields = Set<String>()
        for (_, field) in self.fields {
            if field.isAssociationOwner,
               let association = field.association,
               case let .belongsTo(_, targetNames: targetNames) = association {
                associationsFields.formUnion(targetNames)
            }
        }

        var statement = ""
        for case let .index(fields, name) in indexes {
            // don't create an index on fields used to represent associations
            if !associationsFields.isDisjoint(with: fields) {
                continue
            }
            statement += CreateIndexStatement(
                modelSchema: self,
                fields: fields,
                indexName: name
            )
            .stringValue
        }
        return statement
    }
}
