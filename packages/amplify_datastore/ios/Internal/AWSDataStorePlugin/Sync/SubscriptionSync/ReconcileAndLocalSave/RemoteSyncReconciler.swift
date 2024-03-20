//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

/// Reconciles incoming sync mutations with the state of the local store, and mutation queue.
struct RemoteSyncReconciler {
    typealias LocalMetadata = ReconcileAndLocalSaveOperation.LocalMetadata
    typealias RemoteModel = ReconcileAndLocalSaveOperation.RemoteModel

    enum Disposition {
        case create(RemoteModel)
        case update(RemoteModel)
        case delete(RemoteModel)

        var remoteModel: RemoteModel {
            switch self {
            case .create(let model), .update(let model), .delete(let model):
                return model
            }
        }

        var mutationType: MutationEvent.MutationType {
            switch self {
            case .create: return .create
            case .update: return .update
            case .delete: return .delete
            }
        }
    }


    /// Reconciles the incoming `remoteModels` against the local metadata to get the disposition
    ///
    /// - Parameters:
    ///   - remoteModels: models retrieved from the remote store
    ///   - localMetadatas: metadata retrieved from the local store
    /// - Returns: disposition of models to apply locally
    static func getDispositions(_ remoteModels: [RemoteModel],
                                localMetadatas: [LocalMetadata]) -> [Disposition] {
        guard !remoteModels.isEmpty else {
            return []
        }

        guard !localMetadatas.isEmpty else {
            return remoteModels.compactMap { getDisposition($0, localMetadata: nil) }
        }

        let metadataBymodelId = localMetadatas.reduce(into: [:]) { $0[$1.modelId] = $1 }
        let dispositions = remoteModels.compactMap { getDisposition($0, localMetadata: metadataBymodelId[$0.model.identifier]) }

        return dispositions
    }

    /// Reconcile a remote model against local metadata
    /// If there is no local metadata for the corresponding remote model, and the remote model is not deleted, apply a
    /// `.create` disposition
    /// If there is no local metadata for the corresponding remote model, and the remote model is deleted, drop it
    /// If there is local metadata for the corresponding remote model, and the remote model is not deleted, apply an
    /// `.update` disposition
    /// if there is local metadata for the corresponding remote model, and the remote model is deleted, apply a
    /// `.delete` disposition
    ///
    /// - Parameters:
    ///   - remoteModel: model retrieved from the remote store
    ///   - localMetadata: metadata corresponding to the remote model
    /// - Returns: disposition of the model, `nil` if to be dropped
    static func getDisposition(_ remoteModel: RemoteModel, localMetadata: LocalMetadata?) -> Disposition? {
        guard let localMetadata = localMetadata else {
            return remoteModel.syncMetadata.deleted ? nil : .create(remoteModel)
        }

        guard remoteModel.syncMetadata.version > localMetadata.version else {
            return nil
        }

        return remoteModel.syncMetadata.deleted ? .delete(remoteModel) : .update(remoteModel)
    }
}
