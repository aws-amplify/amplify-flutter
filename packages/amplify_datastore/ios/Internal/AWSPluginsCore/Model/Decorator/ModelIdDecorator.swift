//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// Decorate the GraphQLDocument with the value of `ModelIdentifier` for a "delete" mutation or "get" query.
public struct ModelIdDecorator: ModelBasedGraphQLDocumentDecorator {
    /// Array of model fields and their stringified value
    private var identifierFields = [(name: String, value: GraphQLDocumentValueRepresentable, type: String)]()

    public init(model: Model, schema: ModelSchema) {

        var firstField = true
        self.identifierFields = model.identifier(schema: schema).fields.compactMap { fieldName, _ in
            guard let value = model.graphQLInputForPrimaryKey(modelFieldName: fieldName,
                                                              modelSchema: schema) else {
                return nil
            }
            if firstField {
                firstField = false
                return (name: fieldName, value: value, type: "ID!")
            } else {
                return (name: fieldName, value: value, type: "String!")
            }
        }
    }

    public init(identifierFields: [(name: String, value: Persistable)]) {
        var firstField = true
        identifierFields.forEach { name, value in
            self.identifierFields.append((name: name, value: Self.convert(persistable: value), type: firstField == true ? "ID!" : "String!"))
            firstField = false
        }
    }

    public init(identifiers: [LazyReferenceIdentifier]) {
        var firstField = true
        identifiers.forEach({ identifier in
            self.identifierFields.append((name: identifier.name, value: identifier.value, type: firstField == true ? "ID!": "String!"))
            firstField = false
        })
    }

    @available(*, deprecated, message: "Use init(model:schema:)")
    public init(model: Model) {
        self.init(model: model, schema: model.schema)
    }

    @available(*, deprecated, message: "Use init(model:schema:)")
    public init(id: Model.Identifier, fields: [String: String]? = nil) {
        let identifier = (name: ModelIdentifierFormat.Default.name, value: id, type: "ID!")
        var identifierFields = [identifier]

        if let fields = fields {
            identifierFields.append(contentsOf: fields.map { key, value in
                (name: key, value: value, type: "String!")
            })
        }
        self.identifierFields = identifierFields
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelType: Model.Type) -> SingleDirectiveGraphQLDocument {
        decorate(document, modelSchema: modelType.schema)
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelSchema: ModelSchema) -> SingleDirectiveGraphQLDocument {
        var inputs = document.inputs

        if case .mutation = document.operationType {
            var inputMap = [String: String]()
            for (name, value, _) in identifierFields {
                inputMap[name] = value.graphQLDocumentValue
            }
            inputs["input"] = GraphQLDocumentInput(type: "\(document.name.pascalCased())Input!",
                                                   value: .object(inputMap))

        } else if case .query = document.operationType {
            for (name, value, type) in identifierFields {
                inputs[name] = GraphQLDocumentInput(
                    type: type,
                    value: identifierFields.count > 1 ? .inline(value) : .scalar(value)
                )
            }
        }

        return document.copy(inputs: inputs)
    }
}

fileprivate extension ModelIdDecorator {
    private static func convert(persistable: Persistable) -> GraphQLDocumentValueRepresentable {
        switch persistable {
        case let data as Double:
            return data
        case let data as Int:
            return data
        case let data as Bool:
            return data
        case let data as Temporal.DateTime:
            return data.iso8601String
        case let data as Temporal.Date:
            return data.iso8601String
        case let data as Temporal.Time:
            return data.iso8601String
        default:
            return "\(persistable)"
        }
    }
}
