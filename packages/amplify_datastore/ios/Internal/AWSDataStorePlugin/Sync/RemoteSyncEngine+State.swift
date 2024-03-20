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

    /// States are descriptive, they say what is happening in the system right now
    enum State {
        case notStarted

        case pausingSubscriptions
        case pausingMutationQueue
        case clearingStateOutgoingMutations(StorageEngineAdapter)
        case initializingSubscriptions(APICategoryGraphQLBehaviorExtended, StorageEngineAdapter)
        case performingInitialSync
        case activatingCloudSubscriptions
        case activatingMutationQueue(APICategoryGraphQLBehaviorExtended, MutationEventPublisher, IncomingEventReconciliationQueue?)
        case notifyingSyncStarted

        case syncEngineActive

        case cleaningUp(AmplifyError)
        case cleaningUpForTermination

        case schedulingRestart(AmplifyError)
        case terminate

        var displayName: String {
            switch self {
            case .notStarted:
                return "notStarted"
            case .pausingSubscriptions:
                return "pausingSubscriptions"
            case .pausingMutationQueue:
                return "pausingMutationQueue"
            case .clearingStateOutgoingMutations:
                return "clearingStateOutgoingMutations"
            case .initializingSubscriptions:
                return "initializingSubscriptions"
            case .performingInitialSync:
                return "performingInitialSync"
            case .activatingCloudSubscriptions:
                return "activatingCloudSubscriptions"
            case .activatingMutationQueue:
                return "activatingMutationQueue"
            case .notifyingSyncStarted:
                return "notifyingSyncStarted"
            case .syncEngineActive:
                return "syncEngineActive"
            case .cleaningUp:
                return "cleaningUp"
            case .cleaningUpForTermination:
                return "cleaningUpForTermination"
            case .schedulingRestart:
                return "schedulingRestart"
            case .terminate:
                return "terminate"
            }
        }
    }
}
