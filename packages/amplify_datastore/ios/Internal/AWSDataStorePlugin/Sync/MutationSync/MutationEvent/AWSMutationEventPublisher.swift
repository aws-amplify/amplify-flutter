//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine
import Foundation

/// Note: This publisher accepts only a single subscriber. It retains a weak reference to
/// its MutationEventSource even after downstream subscribers have issued a `cancel()`,
/// so that subsequent subscribers will still receive event notifications.
final class AWSMutationEventPublisher: Publisher {
    typealias Output = MutationEvent
    typealias Failure = DataStoreError

    private var subscription: MutationEventSubscription?
    weak var eventSource: MutationEventSource?

    init(eventSource: MutationEventSource) {
        log.verbose(#function)
        self.eventSource = eventSource
    }

    /// Receives a new subscriber, completing and dropping the old one if present
    func receive<S>(subscriber: S) where S: Subscriber, Failure == S.Failure, Output == S.Input {
        log.verbose(#function)
        subscription?.subscriber.receive(completion: .finished)

        let subscription = MutationEventSubscription(subscriber: subscriber, publisher: self)
        self.subscription = subscription
        subscriber.receive(subscription: subscription)
    }

    func cancel() {
        subscription = nil
    }

    func request(_ demand: Subscribers.Demand) {
        guard demand != .none else {
            return
        }

        if let max = demand.max, max < 1 {
            return
        }

        requestNextEvent()
    }

    func requestNextEvent() {
        log.verbose(#function)
        let promise: DataStoreCallback<MutationEvent> = { [weak self] result in
            guard let self = self, let subscriber = self.subscription?.subscriber else {
                return
            }

            switch result {
            case .failure(let dataStoreError):
                subscriber.receive(completion: .failure(dataStoreError))
            case .success(let mutationEvent):
                let demand = subscriber.receive(mutationEvent)
                DispatchQueue.global().async {
                    self.request(demand)
                }
            }
        }

        DispatchQueue.global().async {
            guard let eventSource = self.eventSource else {
                self.log.verbose("AWSMutationPublisher.eventSource is unexpectedly nil")
                return
            }

            guard self.subscription != nil else {
                self.log.debug("Subscription is nil, not getting next mutation event")
                return
            }

            eventSource.getNextMutationEvent(completion: promise)
        }
    }

}

extension AWSMutationEventPublisher: MutationEventPublisher {
    var publisher: AnyPublisher<MutationEvent, DataStoreError> {
        eraseToAnyPublisher()
    }
}

extension AWSMutationEventPublisher: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}

extension AWSMutationEventPublisher: Resettable {
    func reset() async {
        eventSource = nil
    }
}
