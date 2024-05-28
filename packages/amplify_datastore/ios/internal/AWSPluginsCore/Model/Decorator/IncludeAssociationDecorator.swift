//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

/// Decorates a GraphQL query or mutation with nested/associated properties that should
/// be included in the final selection set.
public struct IncludeAssociationDecorator: ModelBasedGraphQLDocumentDecorator {

    let includedAssociations: [PropertyContainerPath]

    init(_ includedAssociations: [PropertyContainerPath] = []) {
        self.includedAssociations = includedAssociations
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelType: Model.Type) -> SingleDirectiveGraphQLDocument {
        return decorate(document, modelSchema: modelType.schema)
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelSchema: ModelSchema) -> SingleDirectiveGraphQLDocument {
        if includedAssociations.isEmpty {
            return document
        }
        guard let selectionSet = document.selectionSet else {
            return document
        }

        includedAssociations.forEach { association in
            // we don't include the root reference because it refers to the root model
            // fields in the selection set, only the nested/included ones are needed
            if let associationSelectionSet = association.asSelectionSet(includeRoot: false) {
                selectionSet.merge(with: associationSelectionSet)
            }
        }

        return document.copy(selectionSet: selectionSet)
    }

}

extension PropertyContainerPath {
    /// Build GraphQL Selection Set based on Model Associations
    /// `PropertyContainerPath` is a tree path with leaf node pointer that
    /// represents the associations from bottom to the top.
    ///
    /// - Returns: A Optional<SelectionSet> represents GraphQL Selection Set from top to bottom.
    func asSelectionSet(includeRoot: Bool = true) -> SelectionSet? {
        func getSelectionSet(node: PropertyContainerPath) -> SelectionSet {
            let metadata = node.getMetadata()
            let modelName = node.getModelType().modelName

            guard let schema = ModelRegistry.modelSchema(from: modelName) else {
                fatalError("Schema for model \(modelName) could not be found.")
            }
            let fieldType: SelectionSetFieldType = metadata.isCollection ? .collection : .model

            let selectionSet = SelectionSet(value: .init(name: metadata.name, fieldType: fieldType))
            selectionSet.withModelFields(schema.graphQLFields, primaryKeysOnly: true)
            return selectionSet
        }

        func shouldProcessNode(node: PropertyContainerPath) -> Bool {
            includeRoot || node.getMetadata().name != "root"
        }

        func nodesInPath(node: PropertyContainerPath) -> [PropertyContainerPath] {
            var parent: PropertyContainerPath? = node
            var path = [PropertyContainerPath]()
            while let currentNode = parent, shouldProcessNode(node: currentNode) {
                path.append(currentNode)
                parent = currentNode.getMetadata().parent as? PropertyContainerPath
            }
            return path
        }

        let selectionSets = nodesInPath(node: self).map(getSelectionSet(node:))
        return selectionSets.dropFirst().reduce(selectionSets.first) { partialResult, selectionSet in
            guard let partialResult = partialResult else {
                return selectionSet
            }
            selectionSet.replaceChild(partialResult)
            return selectionSet
        }
    }

}
