//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import SQLite

extension SQLiteStorageEngineAdapter {

    func save(untypedModel: Model,
              eagerLoad: Bool = true,
              completion: DataStoreCallback<Model>) {
        guard let connection = connection else {
            completion(.failure(.nilSQLiteConnection()))
            return
        }

        do {
            let modelName: ModelName
            if let jsonModel = untypedModel as? JSONValueHolder,
               let modelNameFromJson = jsonModel.jsonValue(for: "__typename") as? String {
                modelName = modelNameFromJson
            } else {
                modelName = untypedModel.modelName
            }

            guard let modelSchema = ModelRegistry.modelSchema(from: modelName) else {
                let error = DataStoreError.invalidModelName(modelName)
                throw error
            }

            let shouldUpdate = try exists(modelSchema,
                                          withIdentifier: untypedModel.identifier(schema: modelSchema))

            if shouldUpdate {
                let statement = UpdateStatement(model: untypedModel, modelSchema: modelSchema)
                _ = try connection.prepare(statement.stringValue).run(statement.variables)
            } else {
                let statement = InsertStatement(model: untypedModel, modelSchema: modelSchema)
                _ = try connection.prepare(statement.stringValue).run(statement.variables)
            }

            query(modelSchema: modelSchema,
                  predicate: untypedModel.identifier(schema: modelSchema).predicate,
                  eagerLoad: eagerLoad) {
                switch $0 {
                case .success(let result):
                    if let saved = result.first {
                        completion(.success(saved))
                    } else {
                        completion(.failure(.nonUniqueResult(model: modelSchema.name,
                                                             count: result.count)))
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }

        } catch {
            completion(.failure(causedBy: error))
        }
    }

    func query(modelSchema: ModelSchema,
               predicate: QueryPredicate? = nil,
               eagerLoad: Bool = true,
               completion: DataStoreCallback<[Model]>) {
        guard let connection = connection else {
            completion(.failure(.nilSQLiteConnection()))
            return
        }
        do {
            let statement = SelectStatement(from: modelSchema,
                                            predicate: predicate,
                                            eagerLoad: eagerLoad)
            let rows = try connection.prepare(statement.stringValue).run(statement.variables)
            let result: [Model] = try rows.convertToUntypedModel(using: modelSchema,
                                                                 statement: statement,
                                                                 eagerLoad: eagerLoad)
            completion(.success(result))
        } catch {
            completion(.failure(causedBy: error))
        }
    }

}
