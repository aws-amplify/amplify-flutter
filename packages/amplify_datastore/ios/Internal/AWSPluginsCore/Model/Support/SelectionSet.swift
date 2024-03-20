//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

public typealias SelectionSet = Tree<SelectionSetField>

public enum SelectionSetFieldType {
    case pagination
    case model
    case embedded
    case value
    case collection
}

public class SelectionSetField {

    static var typename: SelectionSetField {
        .init(name: "__typename", fieldType: .value)
    }

    var name: String?
    var fieldType: SelectionSetFieldType

    public init(name: String? = nil, fieldType: SelectionSetFieldType) {
        self.name = name
        self.fieldType = fieldType
    }

}

extension SelectionSet {

    /// Construct a `SelectionSet` with model fields
    convenience init(fields: [ModelField], primaryKeysOnly: Bool = false) {
        self.init(value: SelectionSetField(fieldType: .model))
        withModelFields(fields, primaryKeysOnly: primaryKeysOnly)
    }

    func withModelFields(_ fields: [ModelField], recursive: Bool = true, primaryKeysOnly: Bool) {
        fields.forEach { field in
            if field.isEmbeddedType, let embeddedTypeSchema = field.embeddedTypeSchema {
                let child = SelectionSet(value: .init(name: field.name, fieldType: .embedded))
                child.withEmbeddableFields(embeddedTypeSchema.sortedFields)
                self.addChild(settingParentOf: child)
            } else if field._isBelongsToOrHasOne,
                      let associatedModelName = field.associatedModelName,
                      let schema = ModelRegistry.modelSchema(from: associatedModelName) {
                if recursive {
                    var recursive = recursive
                    if field._isBelongsToOrHasOne {
                        recursive = false
                    }

                    let child = SelectionSet(value: .init(name: field.name, fieldType: .model))
                    if primaryKeysOnly {
                        child.withModelFields(schema.primaryKey.fields, recursive: recursive, primaryKeysOnly: primaryKeysOnly)
                    } else {
                        child.withModelFields(schema.graphQLFields, recursive: recursive, primaryKeysOnly: primaryKeysOnly)
                    }

                    self.addChild(settingParentOf: child)
                }
            } else {
                self.addChild(settingParentOf: .init(value: .init(name: field.graphQLName, fieldType: .value)))
            }
        }

        addChild(settingParentOf: .init(value: .typename))
    }

    func withEmbeddableFields(_ fields: [ModelField]) {
        fields.forEach { field in
            if field.isEmbeddedType, let embeddedTypeSchema = field.embeddedTypeSchema {
                let child = SelectionSet(value: .init(name: field.name, fieldType: .embedded))
                child.withEmbeddableFields(embeddedTypeSchema.sortedFields)
                self.addChild(settingParentOf: child)
            } else {
                self.addChild(settingParentOf: .init(value: .init(name: field.name, fieldType: .value)))
            }
        }
        addChild(settingParentOf: .init(value: .typename))
    }

    /// Generate the string value of the `SelectionSet` used in the GraphQL query document
    ///
    /// This method operates on `SelectionSet` with the root node containing a nil `value.name` and expects all inner
    /// nodes to contain a value. It will generate a string with a nested and indented structure like:
    /// ```
    /// items {
    ///   foo
    ///   bar
    ///   modelName {
    ///     foo
    ///     bar
    ///   }
    /// }
    /// nextToken
    /// startAt
    /// ```
    func stringValue(indentSize: Int = 0) -> String {
        var result = [String]()
        let indentValue = "  "
        let indent = indentSize == 0 ? "" : String(repeating: indentValue, count: indentSize)

        switch value.fieldType {
        case .model, .pagination, .embedded:
            if let name = value.name {
                result.append(indent + name + " {")
                children.forEach { innerSelectionSetField in
                    result.append(innerSelectionSetField.stringValue(indentSize: indentSize + 1))
                }
                result.append(indent + "}")
            } else {
                children.forEach { innerSelectionSetField in
                    result.append(innerSelectionSetField.stringValue(indentSize: indentSize))
                }
            }
        case .collection:
            let doubleIndent = String(repeating: indentValue, count: indentSize + 1)
            result.append(indent + (value.name ?? "") + " {")
            result.append(doubleIndent + "items {")
            children.forEach { innerSelectionSetField in
                result.append(innerSelectionSetField.stringValue(indentSize: indentSize + 2))
            }
            result.append(doubleIndent + "}")
            result.append(indent + "}")
        case .value:
            guard let name = value.name else {
                return ""
            }
            result.append(indent + name)
        }

        return result.joined(separator: "\n")
    }

    /// Find a child in the tree matching its `value.name`.
    ///
    /// - Parameters:
    ///   - byName name: the name to match the child node of type `SelectionSetField`
    ///
    /// - Returns: the matched `SelectionSet` or `nil` if there's no child with the specified name.
    func findChild(byName name: String) -> SelectionSet? {
        return children.first { $0.value.name == name }
    }

    /// Replaces or adds a new child to the selection set tree. When a child node exists
    /// with a matching `name` property of the `SelectionSetField` the node will be replaced
    /// while retaining its position in the children list. Otherwise the call is
    /// delegated to `addChild(settingParentOf:)`.
    ///
    /// - Parameters:
    ///   - child: the child node to be replaced.
    func replaceChild(_ child: SelectionSet) {
        if let index = children.firstIndex(where: { $0.value.name == child.value.name }) {
            children.insert(child, at: index)
            children.remove(at: index + 1)
            child.parent = self
        } else {
            addChild(settingParentOf: child)
        }
    }

    /// Merges a subtree into the this `SelectionSet`. The subtree position will be determined
    /// by the value of the node's `name`. When an existing node is found the algorithm will
    /// merge its children to ensure no values are lost or incorrectly overwritten.
    ///
    /// - Parameters:
    ///   - with selectionSet: the subtree to be merged into the current tree.
    ///
    /// - Seealso:
    ///   - `find(byName:)`
    ///   - `replaceChild(_)`
    func merge(with selectionSet: SelectionSet) {
        let name = selectionSet.value.name ?? ""
        if let existingField = findChild(byName: name) {
            var replaceFields: [SelectionSet] = []
            selectionSet.children.forEach { child in
                if child.value.fieldType != .value, let childName = child.value.name {
                    if existingField.findChild(byName: childName) != nil {
                        existingField.merge(with: child)
                    } else {
                        replaceFields.append(child)
                    }
                } else {
                    replaceFields.append(child)
                }
            }
            replaceFields.forEach(existingField.replaceChild)
        } else {
            addChild(settingParentOf: selectionSet)
        }
    }

}
