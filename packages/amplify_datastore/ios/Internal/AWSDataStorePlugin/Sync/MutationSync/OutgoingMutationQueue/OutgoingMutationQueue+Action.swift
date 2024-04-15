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

    /// Actions are declarative, they say what I just did
    enum Action {
        // Startup/config actions
        case initialized
        case receivedStart(APICategoryGraphQLBehaviorExtended, MutationEventPublisher, IncomingEventReconciliationQueue?)
        case receivedSubscription

        // Event loop
        case enqueuedEvent
        case processedEvent

        // Wrap-up
        case receivedStop(BasicClosure)
        case doneStopping

        // Terminal actions
        case errored(AmplifyError)

        var displayName: String {
            switch self {
            case .enqueuedEvent:
                return "enqueuedEvent"
            case .errored:
                return "errored"
            case .initialized:
                return "initialized"
            case .processedEvent:
                return "processedEvent"
            case .receivedStop:
                return "receivedStop"
            case .doneStopping:
                return "doneStopping"
            case .receivedStart:
                return "receivedStart"
            case .receivedSubscription:
                return "receivedSubscription"
            }
        }
    }

}
