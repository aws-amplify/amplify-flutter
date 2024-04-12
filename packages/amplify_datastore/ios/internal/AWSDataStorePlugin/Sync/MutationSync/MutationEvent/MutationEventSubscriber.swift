//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine

final class MutationEventSubscriber: Subscriber {
    typealias Input = MutationEvent
    typealias Failure = DataStoreError

    private let receiveSubscription: (Subscription) -> Void
    private let receiveInput: (MutationEvent) -> Subscribers.Demand
    private let receiveCompletion: (Subscribers.Completion<DataStoreError>) -> Void

    init<S>(subscriber: S) where S: Subscriber, Failure == S.Failure, Input == S.Input {
        self.receiveSubscription = subscriber.receive(subscription:)
        self.receiveInput = subscriber.receive(_:)
        self.receiveCompletion = subscriber.receive(completion:)
    }

    func receive(subscription: Subscription) {
        receiveSubscription(subscription)
    }

    func receive(_ input: MutationEvent) -> Subscribers.Demand {
        receiveInput(input)
    }

    func receive(completion: Subscribers.Completion<DataStoreError>) {
        receiveCompletion(completion)
    }

}
