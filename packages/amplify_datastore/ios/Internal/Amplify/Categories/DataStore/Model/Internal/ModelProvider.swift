//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
// swiftlint:disable type_name
/// Protocol used as a marker to detect when the type is a `LazyReference`.
/// Used to retrieve either the `reference` or the `identifiers` of the Model directly, without having load a not
/// loaded LazyReference. This is useful when translating the model object over to the payload required for the
/// underlying storage, such as storing the values in DataStore's local database or AppSync GraphQL request payload.
///
///
/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public protocol _LazyReferenceValue {
    var _state: _LazyReferenceValueState { get } // swiftlint:disable:this identifier_name
}

public enum _LazyReferenceValueState {
    case notLoaded(identifiers: [LazyReferenceIdentifier]?)
    case loaded(model: Model?)
}
// swiftlint:enable type_name

/// State of the ModelProvider
///
/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public enum ModelProviderState<Element: Model> {
    case notLoaded(identifiers: [LazyReferenceIdentifier]?)
    case loaded(model: Element?)
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public protocol ModelProvider {
    associatedtype Element: Model

    func load() async throws -> Element?

    func getState() -> ModelProviderState<Element>

    func encode(to encoder: Encoder) throws
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public struct AnyModelProvider<Element: Model>: ModelProvider {

    private let loadAsync: () async throws -> Element?
    private let getStateClosure: () -> ModelProviderState<Element>
    private let encodeClosure: (Encoder) throws -> Void

    public init<Provider: ModelProvider>(provider: Provider) where Provider.Element == Self.Element {
        self.loadAsync = provider.load
        self.getStateClosure = provider.getState
        self.encodeClosure = provider.encode
    }

    public func load() async throws -> Element? {
        try await loadAsync()
    }

    public func getState() -> ModelProviderState<Element> {
        getStateClosure()
    }

    public func encode(to encoder: Encoder) throws {
        try encodeClosure(encoder)
    }
}

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public extension ModelProvider {
    func eraseToAnyModelProvider() -> AnyModelProvider<Element> {
        AnyModelProvider(provider: self)
    }
}
