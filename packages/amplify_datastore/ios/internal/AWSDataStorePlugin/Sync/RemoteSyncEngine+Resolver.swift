//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine

extension RemoteSyncEngine {
    struct Resolver {
        // swiftlint:disable cyclomatic_complexity
        static func resolve(currentState: State, action: Action) -> State {
            switch (currentState, action) {
            case (.notStarted, .receivedStart):
                return .pausingSubscriptions

            case (.pausingSubscriptions, .pausedSubscriptions):
                return .pausingMutationQueue

            case (.pausingMutationQueue, .pausedMutationQueue(let storageEngineAdapter)):
                return .clearingStateOutgoingMutations(storageEngineAdapter)

            case (.clearingStateOutgoingMutations, .clearedStateOutgoingMutations(let api, let storageEngineAdapter)):
                return .initializingSubscriptions(api, storageEngineAdapter)

            case (.initializingSubscriptions, .initializedSubscriptions):
                return .performingInitialSync
            case (.initializingSubscriptions, .errored(let error)):
                return .cleaningUp(error)

            case (.performingInitialSync, .performedInitialSync):
                return .activatingCloudSubscriptions
            case (.performingInitialSync, .errored(let error)):
                return .cleaningUp(error)

            case (.activatingCloudSubscriptions, .activatedCloudSubscriptions(let api,
                                                                              let mutationEventPublisher,
                                                                              let reconciliationQueue)):
                return .activatingMutationQueue(api, mutationEventPublisher, reconciliationQueue)
            case (.activatingCloudSubscriptions, .errored(let error)):
                return .cleaningUp(error)

            case (.activatingMutationQueue, .activatedMutationQueue):
                return .notifyingSyncStarted
            case (.activatingMutationQueue, .errored(let error)):
                return .cleaningUp(error)

            case (.notifyingSyncStarted, .notifiedSyncStarted):
                return .syncEngineActive

            case (.syncEngineActive, .errored(let error)):
                return .cleaningUp(error)

            case (_, .finished):
                return .cleaningUpForTermination

            case (.cleaningUp, .cleanedUp(let error)):
                return .schedulingRestart(error)
            case (.cleaningUpForTermination, .cleanedUpForTermination):
                return .terminate

            case (.schedulingRestart, .scheduledRestartTriggered):
                return .pausingSubscriptions

            default:
                log.warn("Unexpected state transition. In \(currentState.displayName), got \(action.displayName)")
                log.verbose("Unexpected state transition. In \(currentState), got \(action)")
                return currentState
            }
        }
    }
}
