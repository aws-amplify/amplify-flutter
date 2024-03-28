//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify
import SQLite
import AWSPluginsCore

public struct DataStoreModelDecoder: ModelProviderDecoder {

    /// Metadata that contains the foreign key value of a parent model, which is the primary key of the model to be loaded.
    struct Metadata: Codable {
        let identifiers: [LazyReferenceIdentifier]
        let source: String

        init(identifiers: [LazyReferenceIdentifier],
             source: String = ModelProviderRegistry.DecoderSource.dataStore) {
            self.identifiers = identifiers
            self.source = source
        }

        func toJsonObject() -> Any? {
            try? JSONSerialization.jsonObject(with: JSONEncoder().encode(self))
        }
    }

    /// Create a SQLite payload that is capable of initializting a LazyReference, by decoding to `DataStoreModelDecoder.Metadata`.
    static func lazyInit(identifiers: [LazyReferenceIdentifier]) -> Metadata? {
        if identifiers.isEmpty {
            return nil
        }
        return Metadata(identifiers: identifiers)
    }

    public static func decode<ModelType: Model>(modelType: ModelType.Type, decoder: Decoder) -> AnyModelProvider<ModelType>? {
        if let metadata = try? DataStoreModelDecoder.Metadata(from: decoder) {
            if metadata.source == ModelProviderRegistry.DecoderSource.dataStore {
                return DataStoreModelProvider<ModelType>(metadata: metadata).eraseToAnyModelProvider()
            } else {
                return nil
            }
        }

        if let model = try? ModelType.init(from: decoder) {
            return DataStoreModelProvider(model: model).eraseToAnyModelProvider()
        }

        return nil
    }
}
