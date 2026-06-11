//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// AnyModelIdentifierFormat
public protocol AnyModelIdentifierFormat {}

/// Defines the identifier (primary key) format
public enum ModelIdentifierFormat {
    /// Default identifier ("id")
    public enum Default: AnyModelIdentifierFormat {
        public static let name = "id"
    }

    /// Custom or Composite identifier
    public enum Custom: AnyModelIdentifierFormat {
        /// Separator used to derive value of composite key
        public static let separator = "#"
    }
}

/// Defines requirements for a model to be identifiable with a unique identifier
/// that can be either a single field or a combination of fields
public protocol ModelIdentifiable {
    associatedtype IdentifierFormat: AnyModelIdentifierFormat
    associatedtype IdentifierProtocol: ModelIdentifierProtocol
}

/// Defines a `ModelIdentifier` requirements.
public protocol ModelIdentifierProtocol {
    typealias Field = (name: String, value: Persistable)
    typealias Fields = [Field]

    /// Array of `ModelIdentifierProtocol.Field` that make up the
    /// model instance identifier
    var fields: ModelIdentifierProtocol.Fields { get }

    /// Serialized instance of the identifier.
    /// Its value is the concatenation of its fields.
    var stringValue: String { get }

    /// Convenience accessor to the model identifier fields names
    var keys: [String] { get }

    /// Convenience accessor to the model identifier field values
    var values: [Persistable] { get }

    var predicate: QueryPredicate { get }
}

public extension ModelIdentifierProtocol {
    var stringValue: String {
        if fields.count == 1, let field = fields.first {
            return field.value.stringValue
        }
        return fields.map { "\"\($0.value.stringValue)\"" }.joined(separator: ModelIdentifierFormat.Custom.separator)
    }

    var keys: [String] {
        fields.map { $0.name }
    }

    var values: [Persistable] {
        fields.map { $0.value }
    }

    var predicate: QueryPredicate {
        guard let firstField = fields.first else {
            preconditionFailure("Found empty model identifier \(fields)")
        }
        return fields[1...].reduce(field(firstField.name).eq(firstField.value)) { acc, modelField in
            field(modelField.name).eq(modelField.value) && acc
        }
    }
}

/// General concrete implementation of a `ModelIdentifierProtocol`
public struct ModelIdentifier<M: Model, F: AnyModelIdentifierFormat>: ModelIdentifierProtocol {
    public var fields: Fields
}

public extension ModelIdentifier where F == ModelIdentifierFormat.Custom {
    static func make(fields: ModelIdentifierProtocol.Field...) -> Self {
        Self(fields: fields)
    }
    /// General purpose initializer, mainly used by Flutter as the platform only has a single model type.
    static func make(fields: [ModelIdentifierProtocol.Field]) -> Self {
        Self(fields: fields)
    }
}

/// Convenience type for a ModelIdentifier with a `ModelIdentifierFormat.Default` format
public typealias DefaultModelIdentifier<M: Model> = ModelIdentifier<M, ModelIdentifierFormat.Default>

extension DefaultModelIdentifier {
    /// Factory to instantiate a `DefaultModelIdentifier`.
    /// - Parameter id: model id value
    /// - Returns: an instance of `ModelIdentifier` for the given model type
    public static func makeDefault(id: String) -> ModelIdentifier<M, ModelIdentifierFormat.Default> {
        ModelIdentifier<M, ModelIdentifierFormat.Default>(fields: [
            (name: ModelIdentifierFormat.Default.name, value: id)
        ])
    }

    /// Convenience factory to instantiate a `DefaultModelIdentifier` from a given model
    /// - Parameter model: model
    /// - Returns: an instance of `ModelIdentifier` for the given model type
    public static func makeDefault(fromModel model: M) -> ModelIdentifier<M, ModelIdentifierFormat.Default> {
        guard let idValue = model[ModelIdentifierFormat.Default.name] as? String else {
            fatalError("Couldn't find default identifier for model \(model)")
        }
        return .makeDefault(id: idValue)
    }
}

// MARK: - Persistable + stringValue
private extension Persistable {
    var stringValue: String {
        var value: String
        switch self {
        case let self as Temporal.Date:
            value = self.iso8601String

        case let self as Temporal.DateTime:
            value = self.iso8601String

        case let self as Temporal.Time:
            value = self.iso8601String

        default:
            value = "\(self)"
        }
        return value
    }
}
