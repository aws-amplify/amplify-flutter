//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore
import Combine

extension OutgoingMutationQueue {

    /// States are descriptive, they say what is happening in the system right now
    enum State {
        // Startup/config states
        case notInitialized
        case stopped
        case starting(APICategoryGraphQLBehaviorExtended, MutationEventPublisher, IncomingEventReconciliationQueue?)

        // Event loop
        case requestingEvent
        case waitingForEventToProcess

        // Wrap-up
        case stopping(BasicClosure)

        // Terminal states
        case inError(AmplifyError)

        var displayName: String {
            switch self {
            case .notInitialized:
                return "notInitialized"
            case .stopped:
                return "stopped"
            case .requestingEvent:
                return "requestingEvent"
            case .starting:
                return "starting"
            case .waitingForEventToProcess:
                return "waitingForEventToProcess"
            case .inError:
                return "inError"
            case .stopping:
                return "stopping"
            }
        }
    }
}
