//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine

/// Interface for saving and loading MutationEvents from storage
final class AWSMutationDatabaseAdapter {
    /// Possible outcomes of a "submit" based on inspecting the locally stored MutationEvents
    enum MutationDisposition {
        /// Drops the candidate without saving
        case dropCandidateWithError(DataStoreError)

        /// Enqueues the candidate event as a new entry in the queue
        case saveCandidate

        /// Replace all existing mutation events with the one candidate
        case replaceLocalWithCandidate

        /// Happens if the queue has a .create and the incoming event is a .delete
        case dropCandidateAndDeleteLocal
    }

    weak var storageAdapter: StorageEngineAdapter?

    /// If a request for 'next event' comes in while the queue is empty, this promise will be set, so that the next
    /// saved event can fulfill it
    var nextEventPromise: AtomicValue<Future<MutationEvent, DataStoreError>.Promise?>

    /// Loads saved events from the database and delivers them to `mutationEventSubject`
    init(storageAdapter: StorageEngineAdapter) throws {
        self.storageAdapter = storageAdapter
        self.nextEventPromise = .init(initialValue: nil)
        log.verbose("Initialized")
    }

}

extension AWSMutationDatabaseAdapter: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}

extension AWSMutationDatabaseAdapter: Resettable {

    func reset() async {
        log.verbose("Resetting AWSMutationDatabaseAdapter")
        storageAdapter = nil
        nextEventPromise.set(nil)
        log.verbose("Resetting AWSMutationDatabaseAdapter: finished")
    }

}
