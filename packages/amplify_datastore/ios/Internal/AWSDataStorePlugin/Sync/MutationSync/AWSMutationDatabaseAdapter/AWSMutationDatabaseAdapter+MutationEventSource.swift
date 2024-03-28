//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine

extension AWSMutationDatabaseAdapter: MutationEventSource {
    
    /// DataStore implements a FIFO queue of MutationEvents by using the local database
    /// and querying for the earliest MutationEvent by its `createdAt` field.
    ///
    /// **Note**: In a previous revision of this code, this query used to filter on `InProcess` == `false` MutationEvents.
    /// This was to skip over already in-flight mutation events and grab the next one. However, it was observed in highly
    /// concurrent calls to `DataStore.start()` /`stop()` / `save()` that it will interrupt the
    /// **OutgoingMutationQueue** of processing and deleting a **MutationEvent** . `DataStore.start()`,
    /// which starts the remote sync engine, should perform a step to move all `InProcess` **MutationEvents** back
    /// to false, however there's a timing issue that is difficult to pinpoint. **OutgoingMutationQueue**'s query manages
    /// to pick up the second MutationEvent in the queue and sends it off, while the first one that is marked as `inProcess`
    /// isn't being processed, likely that process was already cancelled. The query below was updated to always dequeue the
    /// first regardless of `InProcess` in the [PR #3492](https://github.com/aws-amplify/amplify-swift/pull/3492).
    /// By removing the filter, there is a small chance that the same event may be sent twice. Sending the event twice is idempotent
    /// and the second response will be `ConditionalCheckFailed`. The `InProcess` flag is still needed for the
    /// handling consecutive update scenarios.
    ///
    /// - Parameter completion: The first MutationEvent in the FIFO queue.
    func getNextMutationEvent(completion: @escaping DataStoreCallback<MutationEvent>) {
        log.verbose(#function)

        guard let storageAdapter = storageAdapter else {
            completion(.failure(DataStoreError.nilStorageAdapter()))
            return
        }
        let sort = QuerySortDescriptor(fieldName: MutationEvent.keys.createdAt.stringValue, order: .ascending)
        storageAdapter.query(
            MutationEvent.self,
            predicate: nil,
            sort: [sort],
            paginationInput: nil,
            eagerLoad: true) { result in
                switch result {
                case .failure(let dataStoreError):
                    completion(.failure(dataStoreError))
                case .success(let mutationEvents):
                    guard let mutationEvent = mutationEvents.first else {
                        self.nextEventPromise.set(completion)
                        return
                    }
                    if mutationEvent.inProcess {
                        log.verbose("The head of the MutationEvent queue was already inProcess (most likely interrupted process): \(mutationEvent)")
                        completion(.success(mutationEvent))
                    } else {
                        self.markInProcess(mutationEvent: mutationEvent,
                                           storageAdapter: storageAdapter,
                                           completion: completion)
                    }
                }

        }
    }

    func markInProcess(mutationEvent: MutationEvent,
                       storageAdapter: StorageEngineAdapter,
                       completion: @escaping DataStoreCallback<MutationEvent>) {
        var inProcessEvent = mutationEvent
        inProcessEvent.inProcess = true
        storageAdapter.save(inProcessEvent, condition: nil, eagerLoad: true, completion: completion)
    }

}
