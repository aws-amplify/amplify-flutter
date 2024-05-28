//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Dispatch
import AWSPluginsCore

extension MutationEvent {
    // Consecutive operations that modify a model results in a sequence of pending mutation events that
    // have the current version of the model. The first mutation event has the correct version of the model,
    // while the subsequent events will have lower versions if the first mutation event is successfully synced
    // to the cloud. By reconciling the pending mutation events after syncing the first mutation event,
    // we attempt to update the pending version to the latest version from the response.
    // The before and after conditions for consecutive update scenarios are as below:
    //  - Save, then immediately update
    //      Queue Before - [(version: nil, inprocess: true, type: .create),
    //                      (version: nil, inprocess: false, type: .update)]
    //      Response - [version: 1, type: .create]
    //      Queue After - [(version: 1, inprocess: false, type: .update)]
    //  - Save, then immediately delete
    //      Queue Before - [(version: nil, inprocess: true, type: .create),
    //                      (version: nil, inprocess: false, type: .delete)]
    //      Response - [version: 1, type: .create]
    //      Queue After - [(version: 1, inprocess: false, type: .delete)]
    //  - Save, sync, then immediately update and delete
    //      Queue Before (After save, sync)
    //          - [(version: 1, inprocess: true, type: .update), (version: 1, inprocess: false, type: .delete)]
    //      Response - [version: 2, type: .update]
    //      Queue After - [(version: 2, inprocess: false, type: .delete)]
    //
    // For a given model `id`, checks the version of the head of pending mutation event queue
    // against the API response version in `mutationSync` and saves it in the mutation event table if
    // the response version is a newer one
    static func reconcilePendingMutationEventsVersion(sent mutationEvent: MutationEvent,
                                                      received mutationSync: MutationSync<AnyModel>,
                                                      storageAdapter: StorageEngineAdapter,
                                                      completion: @escaping DataStoreCallback<Void>) {
        MutationEvent.pendingMutationEvents(
            forMutationEvent: mutationEvent,
            storageAdapter: storageAdapter
        ) { queryResult in
            switch queryResult {
            case .failure(let dataStoreError):
                completion(.failure(dataStoreError))
            case .success(let localMutationEvents):
                guard let existingEvent = localMutationEvents.first else {
                    completion(.success(()))
                    return
                }

                guard let reconciledEvent = reconcile(pendingMutationEvent: existingEvent,
                                                      with: mutationEvent,
                                                      responseMutationSync: mutationSync) else {
                    completion(.success(()))
                    return
                }

                storageAdapter.save(reconciledEvent, condition: nil, eagerLoad: true) { result in
                    switch result {
                    case .failure(let dataStoreError):
                        completion(.failure(dataStoreError))
                    case .success:
                        completion(.success(()))
                    }
                }
            }
        }
    }

    static func reconcile(pendingMutationEvent: MutationEvent,
                          with requestMutationEvent: MutationEvent,
                          responseMutationSync: MutationSync<AnyModel>) -> MutationEvent? {
        // return if version of the pending mutation event is not nil and
        // is >= version contained in the response
        if pendingMutationEvent.version != nil &&
            pendingMutationEvent.version! >= responseMutationSync.syncMetadata.version {
            return nil
        }

        do {
            let responseModel = responseMutationSync.model.instance
            let requestModel = try requestMutationEvent.decodeModel()

            // check if the data sent in the request is the same as the response
            // if it is, update the pending mutation event version to the response version
            guard let modelSchema = ModelRegistry.modelSchema(from: requestMutationEvent.modelName),
                  modelSchema.compare(responseModel, requestModel) else {
                return nil
            }

            var pendingMutationEvent = pendingMutationEvent
            pendingMutationEvent.version = responseMutationSync.syncMetadata.version
            return pendingMutationEvent
        } catch {
            Amplify.log.verbose("Error decoding models: \(error)")
            return nil
        }
    }

}
