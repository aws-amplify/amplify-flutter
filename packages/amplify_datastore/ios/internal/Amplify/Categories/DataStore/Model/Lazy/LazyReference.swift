//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Combine

/// A Codable struct to hold key value pairs representing the identifier's field name and value.
/// Useful for maintaining order for key-value pairs when used as an Array type.
public struct LazyReferenceIdentifier: Codable {
    public let name: String
    public let value: String

    public init(name: String, value: String) {
        self.name = name
        self.value = value
    }
}

extension Array where Element == LazyReferenceIdentifier {
    public var stringValue: String {
        var fields = [(String, Persistable)]()
        for id in self {
            fields.append((id.name, id.value))
        }
        return LazyReferenceModelIdentifier(fields: fields).stringValue
    }
}

struct LazyReferenceModelIdentifier: ModelIdentifierProtocol {
    var fields: [(name: String, value: Persistable)]
}

// swiftlint: disable identifier_name
/// This class represents a lazy reference to a `Model`, meaning that the reference
/// may or may not exist at instantiation time.
///
/// The default implementation `DefaultModelProvider` only handles in-memory data, therefore `get()` and
/// `require()` will simply return the current `reference`.
public class LazyReference<ModelType: Model>: Codable, _LazyReferenceValue {

    /// Represents the data state of the `LazyModel`.
    enum LoadedState {
        case notLoaded(identifiers: [LazyReferenceIdentifier]?)
        case loaded(ModelType?)
    }

    var loadedState: LoadedState

    @_spi(LazyReference)
    public var _state: _LazyReferenceValueState {
        switch loadedState {
        case .notLoaded(let identifiers):
            return .notLoaded(identifiers: identifiers)
        case .loaded(let model):
            return .loaded(model: model)
        }
    }

    /// The provider for fulfilling list behaviors
    let modelProvider: AnyModelProvider<ModelType>

    public init(modelProvider: AnyModelProvider<ModelType>) {
        self.modelProvider = modelProvider
        switch self.modelProvider.getState() {
        case .loaded(let element):
            self.loadedState = .loaded(element)
        case .notLoaded(let identifiers):
            self.loadedState = .notLoaded(identifiers: identifiers)
        }
    }

    // MARK: - Initializers

    public convenience init(_ reference: ModelType?) {
        let modelProvider = DefaultModelProvider(element: reference).eraseToAnyModelProvider()
        self.init(modelProvider: modelProvider)
    }

    public convenience init(identifiers: [LazyReferenceIdentifier]?) {
        let modelProvider = DefaultModelProvider<ModelType>(identifiers: identifiers).eraseToAnyModelProvider()
        self.init(modelProvider: modelProvider)
    }

    // MARK: - Codable implementation

    /// Decodable implementation is delegated to the ModelProviders.
    required convenience public init(from decoder: Decoder) throws {
        for modelDecoder in ModelProviderRegistry.decoders.get() {
            if let modelProvider = modelDecoder.decode(modelType: ModelType.self, decoder: decoder) {
                self.init(modelProvider: modelProvider)
                return
            }
        }
        let json = try JSONValue(from: decoder)
        switch json {
        case .object(let object):
            if let element = try? ModelType(from: decoder) {
                self.init(element)
                return
            } else {
                let identifiers = try ModelType.schema.lazyReferenceIdentifiers(from: object)
                self.init(identifiers: identifiers)
                return
            }
        default:
            break
        }
        self.init(identifiers: nil)
    }

    /// Encodable implementation is delegated to the underlying ModelProviders.
    public func encode(to encoder: Encoder) throws {
        try modelProvider.encode(to: encoder)
    }

    // MARK: - APIs

    /// This function is responsible for retrieving the model reference. In the default
    /// implementation this means simply returning the existing `reference`, but different
    /// storage mechanisms can implement their own logic to fetch data,
    /// e.g. from DataStore's SQLite or AppSync.
    ///
    /// - Returns: the model `reference`, if it exists.
    public func get() async throws -> ModelType? {
        switch loadedState {
        case .notLoaded:
            let element = try await modelProvider.load()
            self.loadedState = .loaded(element)
            return element
        case .loaded(let element):
            return element
        }
    }

    /// The equivalent of `get()` but aimed to retrieve references that are considered
    /// non-optional. However, referential integrity issues and/or availability constraints
    /// might affect how required data is fetched. In such scenarios the implementation
    /// must throw an error to communicate to developers why required data could not be fetched.
    ///
    /// - Throws: an error of type `DataError` when the data marked as required cannot be retrieved.
    public func require() async throws -> ModelType {
        switch loadedState {
        case .notLoaded:
            guard let element = try await modelProvider.load() else {
                throw CoreError.clientValidation("Data is required but underlying data source successfully loaded no data. ", "")
            }
            self.loadedState = .loaded(element)
            return element
        case .loaded(let element):
            guard let element = element else {
                throw CoreError.clientValidation("Data is required but containing LazyReference is loaded with no data.", "")
            }
            return element
        }
    }
}
