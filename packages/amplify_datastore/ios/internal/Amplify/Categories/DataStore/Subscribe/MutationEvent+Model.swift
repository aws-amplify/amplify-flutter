//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension MutationEvent {

    public init(untypedModel model: Model,
                mutationType: MutationType,
                version: Int? = nil) throws {
        guard let modelType = ModelRegistry.modelType(from: model.modelName) else {
            let dataStoreError = DataStoreError.invalidModelName(model.modelName)
            throw dataStoreError
        }

        try self.init(untypedModel: model,
                      modelName: modelType.schema.name,
                      mutationType: mutationType,
                      version: version)
    }

    public init(untypedModel model: Model,
                modelName: ModelName,
                mutationType: MutationType,
                version: Int? = nil) throws {
        let json = try model.toJSON()
        guard let modelSchema = ModelRegistry.modelSchema(from: modelName) else {
            let dataStoreError = DataStoreError.invalidModelName(modelName)
            throw dataStoreError
        }
        self.init(modelId: model.identifier(schema: modelSchema).stringValue,
                  modelName: modelName,
                  json: json,
                  mutationType: mutationType,
                  version: version)
    }
}
