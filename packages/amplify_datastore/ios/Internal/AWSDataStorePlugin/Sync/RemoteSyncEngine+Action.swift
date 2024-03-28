//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore
import Combine

extension RemoteSyncEngine {

    /// Actions are declarative, they say what I just did
    enum Action {
        // Startup/config actions
        case receivedStart

        case pausedSubscriptions
        case pausedMutationQueue(StorageEngineAdapter)
        case clearedStateOutgoingMutations(APICategoryGraphQLBehaviorExtended, StorageEngineAdapter)
        case initializedSubscriptions
        case performedInitialSync
        case activatedCloudSubscriptions(APICategoryGraphQLBehaviorExtended, MutationEventPublisher, IncomingEventReconciliationQueue?)
        case activatedMutationQueue
        case notifiedSyncStarted
        case cleanedUp(AmplifyError)
        case cleanedUpForTermination
        case scheduleRestart(AmplifyError)
        case scheduledRestartTriggered

        // Terminal actions
        case receivedCancel
        case errored(AmplifyError)
        case finished

        var displayName: String {
            switch self {
            case .receivedStart:
                return "receivedStart"
            case .pausedSubscriptions:
                return "pausedSubscriptions"
            case .pausedMutationQueue:
                return "pausedMutationQueue"
            case .clearedStateOutgoingMutations:
                return "resetStateOutgoingMutations"
            case .initializedSubscriptions:
                return "initializedSubscriptions"
            case .performedInitialSync:
                return "performedInitialSync"
            case .activatedCloudSubscriptions:
                return "activatedCloudSubscriptions"
            case .activatedMutationQueue:
                return "activatedMutationQueue"
            case .notifiedSyncStarted:
                return "notifiedSyncStarted"
            case .cleanedUp:
                return "cleanedUp"
            case .cleanedUpForTermination:
                return "cleanedUpForTermination"
            case .scheduleRestart:
                return "scheduleRestart"
            case .scheduledRestartTriggered:
                return "scheduledRestartTriggered"
            case .receivedCancel:
                return "receivedCancel"
            case .errored:
                return "errored"
            case .finished:
                return "finished"
            }

        }
    }
}
