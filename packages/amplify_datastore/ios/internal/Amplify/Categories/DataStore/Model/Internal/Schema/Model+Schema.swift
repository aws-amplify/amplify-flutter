//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Model {

    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    public static var schema: ModelSchema {
        // TODO load schema from JSON when this it not overridden by specific models
        ModelSchema(name: modelName, fields: [:])
    }

    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    public var schema: ModelSchema {
        type(of: self).schema
    }

    /// Utility function that enables a DSL-like `ModelSchema` definition. Instead of building
    /// objects individually, developers can use this to create the schema with a more fluid
    /// programming model.
    ///
    /// - Example:
    /// ```swift
    /// static let schema = defineSchema { model in
    ///     model.fields(
    ///         .field(name: "title", is: .required, ofType: .string)
    ///     )
    /// }
    /// ```
    ///
    /// - Parameters
    ///   - name: the name of the Model. Defaults to the class name
    ///   - attributes: model attributes (aka "directives" or "annotations")
    ///   - define: the closure used to define the model attributes and fields
    /// - Returns: a valid `ModelSchema` instance
    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning.
    public static func defineSchema(name: String? = nil,
                                    attributes: ModelAttribute...,
                                    define: (inout ModelSchemaDefinition) -> Void) -> ModelSchema {
        var definition = ModelSchemaDefinition(name: name ?? modelName,
                                               attributes: attributes)
        define(&definition)
        return definition.build()
    }

    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning.
    public static func rule(allow: AuthStrategy,
                            ownerField: String? = nil,
                            identityClaim: String? = nil,
                            groupClaim: String? = nil,
                            groups: [String] = [],
                            groupsField: String? = nil,
                            provider: AuthRuleProvider? = nil,
                            operations: [ModelOperation] = []) -> AuthRule {
        return AuthRule(allow: allow,
                        ownerField: ownerField,
                        identityClaim: identityClaim,
                        groupClaim: groupClaim,
                        groups: groups,
                        groupsField: groupsField,
                        provider: provider,
                        operations: operations)
    }
}
