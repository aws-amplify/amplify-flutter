//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine

extension OutgoingMutationQueue {

    struct Resolver {
        static func resolve(currentState: State, action: Action) -> State {
            switch (currentState, action) {

            case (.notInitialized, .initialized):
                return .stopped

            case (.stopped, .receivedStart(let api, let mutationEventPublisher, let reconciliationQueue)):
                return .starting(api, mutationEventPublisher, reconciliationQueue)

            case (.starting, .receivedSubscription):
                return .requestingEvent

            case (.requestingEvent, .enqueuedEvent):
                return .waitingForEventToProcess

            case (.waitingForEventToProcess, .processedEvent):
                return .requestingEvent

            case (.stopped, .receivedStop(let completion)),
                 (.starting, .receivedStop(let completion)),
                 (.requestingEvent, .receivedStop(let completion)),
                 (.waitingForEventToProcess, .receivedStop(let completion)),
                 (.inError, .receivedStop(let completion)):
                return .stopping(completion)

            case (.stopping, .doneStopping):
                return .stopped

            case (.inError, _):
                return currentState

            case (_, .errored(let amplifyError)):
                return .inError(amplifyError)

            default:
                log.warn("Unexpected state transition. In \(currentState.displayName), got \(action.displayName)")
                log.verbose("Unexpected state transition. In \(currentState), got \(action)")
                return currentState
            }

        }
    }
}
