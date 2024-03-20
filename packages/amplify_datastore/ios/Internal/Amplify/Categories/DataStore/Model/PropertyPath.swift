//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Runtime information about a property. Its `name` and `parent` property reference,
/// as well as whether the property represents a collection of the type or not.
public struct PropertyPathMetadata {
    public let name: String
    public let isCollection: Bool
    public let parent: PropertyPath?
}

/// Represents a property of a `Model`. PropertyPath is a way of representing the
/// structure of a model with static typing, so developers can reference model
/// properties in queries and other functionality that require them.
public protocol PropertyPath {

    /// Access the property metadata.
    ///
    /// **Implementation note:** this function is in place over an implicit accessor over
    /// a property named `metadata` in order to avoid name conflict with the actual property
    /// names that will get generate from the `Model`.
    ///
    /// - Returns the property metadata, that contains the name and a reference to its parent.
    func getMetadata() -> PropertyPathMetadata
}

/// This is a specialized protocol to indicate the property is a container of other properties,
/// i.e. a `struct` representing another `Model`.
///
/// - SeeAlso: `ModelPath`
public protocol PropertyContainerPath: PropertyPath {

    /// 
    func getKeyPath() -> String

    /// Must return a reference to the type containing the properties
    func getModelType() -> Model.Type

}

extension PropertyContainerPath {

    public func getKeyPath() -> String {
        var metadata = getMetadata()
        var path = [String]()
        while let parent = metadata.parent {
            path.insert(metadata.name, at: 0)
            metadata = parent.getMetadata()
        }
        return path.joined(separator: ".")
    }
}

/// Represents a scalar (i.e. data type) of a model property.
public struct FieldPath<ValueType>: PropertyPath {
    private let metadata: PropertyPathMetadata

    init(name: String, parent: PropertyPath? = nil) {
        self.metadata = PropertyPathMetadata(name: name, isCollection: false, parent: parent)
    }

    public func getMetadata() -> PropertyPathMetadata {
        return metadata
    }
}

/// Represents the `Model` structure itself, a container of property references.
///
/// - Example:
/// ```swift
/// class PostModelPath : ModelPath<Post> {}
///
/// extension ModelPath where ModelType == Post {
///   var id: FieldPath<String> { id() }
///   var title: FieldPath<String> { string("title") }
///   var blog: ModelPath<Blog> { BlogModelPath(name: "blog", parent: self) }
/// }
/// ```
open class ModelPath<ModelType: Model>: PropertyContainerPath {

    private let metadata: PropertyPathMetadata

    public init(name: String = "root", isCollection: Bool = false, parent: PropertyPath? = nil) {
        self.metadata = PropertyPathMetadata(name: name, isCollection: isCollection, parent: parent)
    }

    public func getMetadata() -> PropertyPathMetadata {
        return metadata
    }

    public func getModelType() -> Model.Type {
        return ModelType.self
    }

    public func isRoot() -> Bool {
        return metadata.parent == nil
    }

    public func id(_ name: String = "id") -> FieldPath<String> {
        FieldPath(name: name, parent: self)
    }

    public func string(_ name: String) -> FieldPath<String> {
        FieldPath(name: name, parent: self)
    }

    public func bool(_ name: String) -> FieldPath<Bool> {
        FieldPath(name: name, parent: self)
    }

    public func date(_ name: String) -> FieldPath<Temporal.Date> {
        FieldPath(name: name, parent: self)
    }

    public func datetime(_ name: String) -> FieldPath<Temporal.DateTime> {
        FieldPath(name: name, parent: self)
    }

    public func time(_ name: String) -> FieldPath<Temporal.Time> {
        FieldPath(name: name, parent: self)
    }

    public func int(_ name: String) -> FieldPath<Int> {
        FieldPath(name: name, parent: self)
    }

    public func double(_ name: String) -> FieldPath<Double> {
        FieldPath(name: name, parent: self)
    }
}
