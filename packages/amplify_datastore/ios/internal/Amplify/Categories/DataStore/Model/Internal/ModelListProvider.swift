//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Empty protocol used as a marker to detect when the type is a `List`
///
/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public protocol ModelListMarker { }

/// State of the ListProvider
///
/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public enum ModelListProviderState<Element: Model> {
    /// If the list represents an association between two models, the `associatedIdentifiers` will
    /// hold the information necessary to query the associated elements (e.g. comments of a post)
    ///
    /// The associatedFields represents the field to which the owner of the `List` is linked to.
    /// For example, if `Post.comments` is associated with `Comment.post` the `List<Comment>`
    /// of `Post` will have a reference to the `post` field in `Comment`.
    case notLoaded(associatedIdentifiers: [String], associatedFields: [String])
    case loaded([Element])
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public protocol ModelListProvider {
    associatedtype Element: Model

    func getState() -> ModelListProviderState<Element>

    ///  Retrieve the array of `Element` from the data source asychronously.
    func load() async throws -> [Element]

    /// Check if there is subsequent data to retrieve. This method always returns false if the underlying provider is
    /// not loaded. Make sure the underlying data is loaded by calling `load(completion)` before calling this method.
    /// If true, the next page can be retrieved using `getNextPage(completion:)`.
    func hasNextPage() -> Bool

    /// Asynchronously retrieve the next page as a new in-memory List object. Returns a failure if there
    /// is no next page of results. You can validate whether the list has another page with `hasNextPage()`.
    func getNextPage() async throws -> List<Element>

    /// Custom encoder
    func encode(to encoder: Encoder) throws
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public struct AnyModelListProvider<Element: Model>: ModelListProvider {
    private let getStateClosure: () -> ModelListProviderState<Element>
    private let loadAsync: () async throws -> [Element]
    private let hasNextPageClosure: () -> Bool
    private let getNextPageAsync: () async throws -> List<Element>
    private let encodeClosure: (Encoder) throws -> Void

    public init<Provider: ModelListProvider>(
        provider: Provider
    ) where Provider.Element == Self.Element {
        self.getStateClosure = provider.getState
        self.loadAsync = provider.load
        self.hasNextPageClosure = provider.hasNextPage
        self.getNextPageAsync = provider.getNextPage
        self.encodeClosure = provider.encode
    }

    public func getState() -> ModelListProviderState<Element> {
        getStateClosure()
    }

    public func load() async throws -> [Element] {
        try await loadAsync()
    }

    public func hasNextPage() -> Bool {
        hasNextPageClosure()
    }

    public func getNextPage() async throws -> List<Element> {
        try await getNextPageAsync()
    }

    public func encode(to encoder: Encoder) throws {
        try encodeClosure(encoder)
    }
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public extension ModelListProvider {
    func eraseToAnyModelListProvider() -> AnyModelListProvider<Element> {
        AnyModelListProvider(provider: self)
    }
}
