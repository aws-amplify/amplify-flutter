//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

public enum GraphQLOperationType: String {
    case mutation
    case query
    case subscription
}

public typealias GraphQLParameterName = String

/// Represents a single directive GraphQL document. Concrete types that conform to this protocol must
/// define a valid GraphQL operation document.
///
/// This type aims to provide a representation of a simple GraphQL document with its components that can be easily
/// decorated to extend the document. The components can then derive the standardized form of a GraphQL document
/// containing the query string and variables.
public protocol SingleDirectiveGraphQLDocument {
    /// The `GraphQLOperationType` a concrete implementation represents the
    /// GraphQL operation of the document
    var operationType: GraphQLOperationType { get set }

    /// The name of the document. This is useful to inspect the response, since it will
    /// contain the name of the document as the key to the response value.
    var name: String { get set }

    /// Input parameters and its values on the GraphQL document
    var inputs: [GraphQLParameterName: GraphQLDocumentInput] { get set }

    /// The selection set of the document, used to specify the response data returned by the service.
    var selectionSet: SelectionSet? { get set }

    /// Simple constructor to be implemented by the concrete types, used by the `copy` method.
    init(operationType: GraphQLOperationType,
         name: String,
         inputs: [GraphQLParameterName: GraphQLDocumentInput],
         selectionSet: SelectionSet?)
}

// Provides default implementation
extension SingleDirectiveGraphQLDocument {

    /// Method to create a deep copy of the document, useful for `ModelBasedGraphQLDocumentDecorator` decorators
    /// when decorating a document and returning a new document.
    public func copy(operationType: GraphQLOperationType? = nil,
                     name: String? = nil,
                     inputs: [GraphQLParameterName: GraphQLDocumentInput]? = nil,
                     selectionSet: SelectionSet? = nil) -> Self {

        return Self.init(operationType: operationType ?? self.operationType,
                         name: name ?? self.name,
                         inputs: inputs ?? self.inputs,
                         selectionSet: selectionSet ?? self.selectionSet)
    }

    /// Returns nil when there are no `inputs`. Otherwise, consolidates the `inputs`
    /// into a single object that can be used for the GraphQL request.
    public var variables: [String: Any]? {
        if inputs.isEmpty {
            return nil
        }

        var variables = [String: Any]()
        inputs.forEach { input in
            switch input.value.value {
            case .object(let values):
                variables.updateValue(values, forKey: input.key)
            case .scalar(let value):
                variables.updateValue(value, forKey: input.key)
            case .inline:
                break
            }

        }

        return variables
    }

    /// Provides default construction of the graphQL document based on the components of the document.
    public var stringValue: String {

        let selectionSetString = selectionSet?.stringValue(indentSize: 2) ?? ""

        guard !inputs.isEmpty else {
            return """
            \(operationType.rawValue) \(name.pascalCased()) {
              \(name) {
            \(selectionSetString)
              }
            }
            """
        }

        let sortedInputs = inputs.sorted { $0.0 < $1.0 }
        let variableInputs = sortedInputs.filter { !$0.value.value.isInline() }
        let inlineInputs = sortedInputs.filter { $0.value.value.isInline() }
        let variableInputTypes = variableInputs.map { "$\($0.key): \($0.value.type)" }.joined(separator: ", ")

        var inputParameters = variableInputs.map { ($0.key, "$\($0.key)") }
        for input in inlineInputs {
            if case .inline(let document)  = input.value.value {
                inputParameters.append((input.key, document.graphQLInlineValue))
            }
        }

        return """
        \(operationType.rawValue) \(name.pascalCased())\(variableInputTypes.isEmpty ? "" : "(\(variableInputTypes))") {
          \(name)(\(inputParameters.map({ "\($0.0): \($0.1)"}).joined(separator: ", "))) {
        \(selectionSetString)
          }
        }
        """
    }
}
