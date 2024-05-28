//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

@_spi(OptionalExtension) import Amplify
import Combine
import Foundation

extension AWSMutationDatabaseAdapter: MutationEventIngester {

    /// Accepts a mutation event without a version, applies the latest version from the MutationSyncMetadata table,
    /// writes the updated mutation event to the local database, then submits it to `mutationEventSubject`
    func submit(mutationEvent: MutationEvent, completion: @escaping (Result<MutationEvent, DataStoreError>) -> Void) {
        Task {
            log.verbose("\(#function): \(mutationEvent)")

            guard let storageAdapter = self.storageAdapter else {
                completion(.failure(DataStoreError.nilStorageAdapter()))
                return
            }

            self.resolveConflictsThenSave(mutationEvent: mutationEvent,
                                          storageAdapter: storageAdapter,
                                          completion: completion)
        }
    }

    /// Resolves conflicts for the offered mutationEvent, and either accepts the event, returning a disposition, or
    /// rejects the event with an error
    func resolveConflictsThenSave(mutationEvent: MutationEvent,
                                  storageAdapter: StorageEngineAdapter,
                                  completion: @escaping (Result<MutationEvent, DataStoreError>) -> Void) {
        MutationEvent.pendingMutationEvents(
            forMutationEvent: mutationEvent,
            storageAdapter: storageAdapter) { result in
                switch result {
                case .failure(let dataStoreError):
                    completion(.failure(dataStoreError))
                case .success(let localMutationEvents):
                    let mutationDisposition = self.disposition(for: mutationEvent,
                                                          given: localMutationEvents)
                    self.resolve(candidate: mutationEvent,
                            localEvents: localMutationEvents,
                            per: mutationDisposition,
                            storageAdapter: storageAdapter,
                            completionPromise: completion)
                }
        }
    }

    func disposition(for candidate: MutationEvent,
                     given localEvents: [MutationEvent]) -> MutationDisposition {

        guard !localEvents.isEmpty, let existingEvent = localEvents.first else {
            log.verbose("\(#function) no local events, saving candidate")
            return .saveCandidate
        }

        if candidate.graphQLFilterJSON != nil {
            return .saveCandidate
        }

        guard let candidateMutationType = GraphQLMutationType(rawValue: candidate.mutationType) else {
            let dataStoreError =
                DataStoreError.unknown("Couldn't get mutation type for \(candidate.mutationType)",
                    AmplifyErrorMessages.shouldNotHappenReportBugToAWS())
            return .dropCandidateWithError(dataStoreError)
        }

        guard let existingMutationType = GraphQLMutationType(rawValue: existingEvent.mutationType) else {
            let dataStoreError =
                DataStoreError.unknown("Couldn't get mutation type for \(existingEvent.mutationType)",
                    AmplifyErrorMessages.shouldNotHappenReportBugToAWS())
            return .dropCandidateWithError(dataStoreError)
        }

        log.verbose("\(#function)(existing: \(existingMutationType), candidate: \(candidateMutationType))")

        switch (existingMutationType, candidateMutationType) {
        case (.create, .update),
             (.update, .update),
             (.update, .delete),
             (.delete, .delete):
            return .replaceLocalWithCandidate

        case (.create, .delete):
            return .dropCandidateAndDeleteLocal

        case (_, .create):
            let dataStoreError =
                DataStoreError.unknown(
                    "Received a create mutation for an item that has already been created",
                    """
                    Review your app code and ensure you are not issuing incorrect DataStore.save() calls for the same \
                    model. Candidate model is below:
                    \(candidate)
                    """
            )
            return .dropCandidateWithError(dataStoreError)

        case (.delete, .update):
            let dataStoreError =
                DataStoreError.unknown(
                    "Received an update mutation for an item that has been marked as deleted",
                    """
                    Review your app code and ensure you are not issuing incorrect DataStore.save() calls for the same \
                    model. Candidate model is below:
                    \(candidate)
                    """
            )
            return .dropCandidateWithError(dataStoreError)
        }

    }

    func resolve(candidate: MutationEvent,
                 localEvents: [MutationEvent],
                 per disposition: MutationDisposition,
                 storageAdapter: StorageEngineAdapter,
                 completionPromise: @escaping Future<MutationEvent, DataStoreError>.Promise) {
        log.verbose("\(#function) disposition \(disposition)")

        switch disposition {
        case .dropCandidateWithError(let dataStoreError):
            completionPromise(.failure(dataStoreError))
        case .dropCandidateAndDeleteLocal:
            Task {
                do {
                    try await withThrowingTaskGroup(of: Void.self) { group in
                        for localEvent in localEvents {
                            group.addTask {
                                try await withCheckedThrowingContinuation { continuation in
                                    storageAdapter.delete(untypedModelType: MutationEvent.self,
                                                          modelSchema: MutationEvent.schema,
                                                          withIdentifier: localEvent.identifier(schema: MutationEvent.schema),
                                                          condition: nil) { result in
                                        continuation.resume(with: result)
                                    }
                                }
                            }
                        }
                        try await group.waitForAll()
                    }
                    completionPromise(.success(candidate))
                } catch {
                    completionPromise(.failure(causedBy: error))
                }
            }
        case .saveCandidate:
            save(mutationEvent: candidate,
                 storageAdapter: storageAdapter,
                 completionPromise: completionPromise)
        case .replaceLocalWithCandidate:
            guard !localEvents.isEmpty, let eventToUpdate = localEvents.first else {
                // Should be caught upstream, but being defensive
                save(mutationEvent: candidate,
                     storageAdapter: storageAdapter,
                     completionPromise: completionPromise)
                return
            }

            if localEvents.count > 1 {
                // TODO: Handle errors from delete
                localEvents
                    .suffix(from: 1)
                    .forEach { storageAdapter.delete(MutationEvent.self,
                                                     modelSchema: MutationEvent.schema,
                                                     withIdentifier: $0.identifier(schema: MutationEvent.schema),
                                                     condition: nil) { _ in } }
            }

            let resolvedEvent = getResolvedEvent(for: eventToUpdate, applying: candidate)

            save(mutationEvent: resolvedEvent,
                 storageAdapter: storageAdapter,
                 completionPromise: completionPromise)
        }
    }

    private func getResolvedEvent(for originalEvent: MutationEvent,
                                  applying candidate: MutationEvent) -> MutationEvent {
        var resolvedEvent = originalEvent
        resolvedEvent.json = candidate.json

        let updatedMutationType: String
        if candidate.mutationType == GraphQLMutationType.delete.rawValue {
            updatedMutationType = candidate.mutationType
        } else {
            updatedMutationType = originalEvent.mutationType
        }
        resolvedEvent.mutationType = updatedMutationType

        return resolvedEvent
    }

    /// Saves the deconflicted mutationEvent, invokes `nextEventPromise` if it exists, and the save was successful,
    /// and finally invokes the completion promise from the future of the original invocation of `submit`
    func save(
        mutationEvent: MutationEvent,
        storageAdapter: StorageEngineAdapter,
        completionPromise: @escaping Future<MutationEvent, DataStoreError>.Promise
    ) {
        log.verbose("\(#function) mutationEvent: \(mutationEvent)")
        let nextEventPromise = self.nextEventPromise.getAndSet(nil)
        var eventToPersist = mutationEvent
        if nextEventPromise != nil {
            eventToPersist.inProcess = true
        }

        storageAdapter.save(eventToPersist, condition: nil, eagerLoad: true) { result in
            switch result {
            case .failure(let dataStoreError):
                self.log.verbose("\(#function): Error saving mutation event: \(dataStoreError)")
                // restore the `nextEventPromise` value when failed to save mutation event
                // as nextEventPromise is expecting to hanlde error of querying unprocessed mutaiton events
                // not the failure of saving mutaiton event operation
                nextEventPromise.ifSome(self.nextEventPromise.set(_:))
            case .success(let savedMutationEvent):
                self.log.verbose("\(#function): saved \(savedMutationEvent)")
                nextEventPromise.ifSome {
                    self.log.verbose("\(#function): invoking nextEventPromise with \(savedMutationEvent)")
                    $0(.success(savedMutationEvent))
                }
            }
            self.log.verbose("\(#function): invoking completionPromise with \(result)")
            completionPromise(result)
        }

    }

}
