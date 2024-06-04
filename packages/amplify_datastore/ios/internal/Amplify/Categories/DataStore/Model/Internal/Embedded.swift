//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

// MARK: - Embeddable

/// A `Embeddable` type can be used in a `Model` as an embedded type. All types embedded in a `Model` as an
/// `embedded(type:)` or `embeddedCollection(of:)` must comform to the `Embeddable` protocol except for Swift's Basic
/// types embedded as a collection. A collection of String can be embedded in the `Model` as
/// `embeddedCollection(of: String.self)` without needing to conform to Embeddable.
/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
///   application making any change to these `public` types should be backward compatible, otherwise it will be a
///   breaking change.
public protocol Embeddable: Codable {

    /// A reference to the `ModelSchema` associated with this embedded type.
    static var schema: ModelSchema { get }
}

extension Embeddable {
    public static func defineSchema(name: String? = nil,
                                    attributes: ModelAttribute...,
                                    define: (inout ModelSchemaDefinition) -> Void) -> ModelSchema {
        var definition = ModelSchemaDefinition(name: name ?? "",
                                               attributes: attributes)
        define(&definition)
        return definition.build()
    }
}
