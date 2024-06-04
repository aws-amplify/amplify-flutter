//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

// MARK: - Model

/// All persistent models should conform to the Model protocol.
public protocol Model: Codable {
    /// Alias of Model identifier (i.e. primary key)
    @available(*, deprecated, message: "Use ModelIdentifier")
    typealias Identifier = String

    /// A reference to the `ModelSchema` associated with this model.
    static var schema: ModelSchema { get }

    /// The reference to the root path. It might be `nil` if models do not support
    /// property references.
    static var rootPath: PropertyContainerPath? { get }

    /// The name of the model, as registered in `ModelRegistry`.
    static var modelName: String { get }

    /// Convenience property to return the Type's `modelName`. Developers are strongly encouraged not to override the
    /// instance property, as an implementation that returns a different value for the instance property will cause
    /// undefined behavior.
    var modelName: String { get }

    /// For internal use only when a model schema is provided
    /// (i.e. calls from Flutter)
    func identifier(schema: ModelSchema) -> ModelIdentifierProtocol

    /// Convenience property to access the serialized value of a model identifier
    var identifier: String { get }
}

extension Model {
    public var identifier: String {
        guard let schema = ModelRegistry.modelSchema(from: modelName) else {
            preconditionFailure("Schema not found for \(modelName).")
        }
        return identifier(schema: schema).stringValue
    }

    public func identifier(schema modelSchema: ModelSchema) -> ModelIdentifierProtocol {
        // resolve current instance identifier fields
        let fields: ModelIdentifierProtocol.Fields = modelSchema.primaryKey.fields.map {
            guard let fieldValue = self[$0.name] else {
                preconditionFailure("Identifier field named \($0.name) for model \(modelSchema.name) not found.")
            }

            switch fieldValue {
            case let value as Persistable:
                return (name: $0.name, value: value)
            case let value as EnumPersistable:
                return (name: $0.name, value: value.rawValue)
            default:
                preconditionFailure(
                    "Invalid identifier value \(String(describing: fieldValue)) for field \($0.name) in model \(modelSchema.name)")
            }
        }

        guard !modelSchema.fields.isEmpty else {
            return DefaultModelIdentifier<Self>.makeDefault(fromModel: self)
        }

        if fields.count == 1, fields[0].name == ModelIdentifierFormat.Default.name {
            return ModelIdentifier<Self, ModelIdentifierFormat.Default>(fields: fields)
        } else {
            return ModelIdentifier<Self, ModelIdentifierFormat.Custom>(fields: fields)
        }
    }

    /// The `rootPath` is set to `nil` by default. Specific models should override this
    /// behavior and provide the proper path reference when available.
    public static var rootPath: PropertyContainerPath? { nil }
}
