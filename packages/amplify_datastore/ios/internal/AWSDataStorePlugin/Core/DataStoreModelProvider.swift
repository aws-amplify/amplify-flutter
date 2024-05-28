//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify
import Combine

public class DataStoreModelProvider<ModelType: Model>: ModelProvider {
    var loadedState: ModelProviderState<ModelType>

    // Create a "not loaded" model provider with the identifier metadata, useful for hydrating the model
    init(metadata: DataStoreModelDecoder.Metadata) {
        self.loadedState = .notLoaded(identifiers: metadata.identifiers)
    }

    // Create a "loaded" model provider with the model instance
    init(model: ModelType?) {
        self.loadedState = .loaded(model: model)
    }

    // MARK: - APIs

    public func load() async throws -> ModelType? {
        switch loadedState {
        case .notLoaded(let identifiers):
            guard let identifiers = identifiers, !identifiers.isEmpty else {
                return nil
            }

            let identifierValue = identifiers.count == 1
                ? identifiers.first?.value
                : identifiers.map({ "\"\($0.value)\""}).joined(separator: ModelIdentifierFormat.Custom.separator)

            let queryPredicate: QueryPredicate = field(ModelType.schema.primaryKey.sqlName).eq(identifierValue)
            let models = try await Amplify.DataStore.query(ModelType.self, where: queryPredicate)
            guard let model = models.first else {
                return nil
            }
            self.loadedState = .loaded(model: model)
            return model
        case .loaded(let model):
            return model
        }
    }

    public func getState() -> ModelProviderState<ModelType> {
        loadedState
    }

    public func encode(to encoder: Encoder) throws {
        switch loadedState {
        case .notLoaded(let identifiers):
            let metadata = DataStoreModelDecoder.Metadata(identifiers: identifiers ?? [])
            try metadata.encode(to: encoder)
        case .loaded(let element):
            try element.encode(to: encoder)
        }
    }
}
