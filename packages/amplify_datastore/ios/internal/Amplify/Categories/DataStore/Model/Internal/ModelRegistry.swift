//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public struct ModelRegistry {
    private static let concurrencyQueue = DispatchQueue(label: "com.amazonaws.ModelRegistry.concurrency",
                                                        target: DispatchQueue.global())

    /// ModelDecoders are used to decode untyped model data, looking up by model name
    private typealias ModelDecoder = (String, JSONDecoder?) throws -> Model

    private static var modelTypes = [ModelName: Model.Type]()

    private static var modelDecoders = [ModelName: ModelDecoder]()

    private static var modelSchemaMapping = [ModelName: ModelSchema]()

    public static var models: [Model.Type] {
        concurrencyQueue.sync {
            Array(modelTypes.values)
        }
    }

    public static var modelSchemas: [ModelSchema] {
        concurrencyQueue.sync {
            Array(modelSchemaMapping.values)
        }
    }

    public static func register(modelType: Model.Type) {
        register(modelType: modelType,
                 modelSchema: modelType.schema) { (jsonString, jsonDecoder) -> Model in
            let model = try modelType.from(json: jsonString, decoder: jsonDecoder)
            return model
        }
    }

    public static func register(modelType: Model.Type,
                                modelSchema: ModelSchema,
                                jsonDecoder: @escaping (String, JSONDecoder?) throws -> Model) {
        concurrencyQueue.sync {
            let modelDecoder: ModelDecoder = { jsonString, decoder in
                return try jsonDecoder(jsonString, decoder)
            }
            let modelName = modelSchema.name
            modelSchemaMapping[modelName] = modelSchema
            modelTypes[modelName] = modelType
            modelDecoders[modelName] = modelDecoder
        }
    }

    public static func modelType(from name: ModelName) -> Model.Type? {
        concurrencyQueue.sync {
            modelTypes[name]
        }
    }

    @available(*, deprecated, message: """
    Retrieving model schema using Model.Type is deprecated, instead retrieve using model name.
    """)
    public static func modelSchema(from modelType: Model.Type) -> ModelSchema? {
        return modelSchema(from: modelType.modelName)
    }

    public static func modelSchema(from name: ModelName) -> ModelSchema? {
        concurrencyQueue.sync {
            modelSchemaMapping[name]
        }
    }

    public static func decode(modelName: ModelName,
                              from jsonString: String,
                              jsonDecoder: JSONDecoder? = nil) throws -> Model {
        try concurrencyQueue.sync {
            guard let decoder = modelDecoders[modelName] else {
                throw DataStoreError.decodingError(
                    "No decoder found for model named \(modelName)",
                    """
                    There is no decoder registered for the model named \(modelName). \
                    Register models with `ModelRegistry.register(modelName:)` at startup.
                    """)
            }

            return try decoder(jsonString, jsonDecoder)
        }
    }
}

extension ModelRegistry {
    static func reset() {
        concurrencyQueue.sync {
            modelTypes = [:]
            modelDecoders = [:]
            modelSchemaMapping = [:]
        }
    }
}
