//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import SQLite
import Foundation

extension Statement {
    func convertToUntypedModel(using modelSchema: ModelSchema,
                               statement: SelectStatement,
                               eagerLoad: Bool) throws -> [Model] {
        var models = [Model]()

        for row in self {
            let modelValues = try convert(row: row,
                                          withSchema: modelSchema,
                                          using: statement,
                                          eagerLoad: eagerLoad)

            let untypedModel = try modelValues.map {
                try convertToAnyModel(using: modelSchema, modelDictionary: $0)
            }

            if let untypedModel = untypedModel {
                models.append(untypedModel)
            }
        }

        return models
    }

    private func convertToAnyModel(using modelSchema: ModelSchema,
                                   modelDictionary: ModelValues) throws -> Model {
        let data = try JSONSerialization.data(withJSONObject: modelDictionary)
        guard let jsonString = String(data: data, encoding: .utf8) else {
            let error = DataStoreError.decodingError(
                "Could not create JSON string from model data",
                """
                The values below could not be serialized into a String. Ensure the data below contains no invalid UTF8:
                \(modelDictionary)
                """
            )
            throw error
        }

        let instance = try ModelRegistry.decode(modelName: modelSchema.name, from: jsonString)
        return instance
    }
}
