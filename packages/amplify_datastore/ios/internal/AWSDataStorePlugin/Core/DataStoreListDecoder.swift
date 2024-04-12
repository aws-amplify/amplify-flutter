//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify
import Combine

public struct DataStoreListDecoder: ModelListDecoder {

    struct Metadata: Codable {
        let dataStoreAssociatedIdentifiers: [String]
        let dataStoreAssociatedFields: [String]
    }

    /// Creates a data structure that is capable of initializing a `List<M>` with
    /// lazy-load capabilities when the list is being decoded.
    static func lazyInit(associatedIds: [String], associatedWith: [String]) -> [String: Any?] {
        return [
            "dataStoreAssociatedIdentifiers": associatedIds,
            "dataStoreAssociatedFields": associatedWith
        ]
    }

    public static func decode<ModelType: Model>(modelType: ModelType.Type, decoder: Decoder) -> AnyModelListProvider<ModelType>? {
        shouldDecodeToDataStoreListProvider(modelType: modelType, decoder: decoder)?.eraseToAnyModelListProvider()
    }

    public static func shouldDecodeToDataStoreListProvider<ModelType: Model>(modelType: ModelType.Type, decoder: Decoder) -> DataStoreListProvider<ModelType>? {
        if let metadata = try? Metadata.init(from: decoder) {
            return DataStoreListProvider<ModelType>(metadata: metadata)
        }

        let json = try? JSONValue(from: decoder)
        switch json {
        case .array:
            do {
                let elements = try [ModelType](from: decoder)
                return DataStoreListProvider<ModelType>(elements)
            } catch {
                return nil
            }
        default:
            return nil
        }
    }
}
