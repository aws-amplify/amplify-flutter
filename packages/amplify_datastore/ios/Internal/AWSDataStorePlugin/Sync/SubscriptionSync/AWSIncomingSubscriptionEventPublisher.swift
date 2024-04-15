//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore
import Combine
import Foundation

/// Facade to hide the AsyncEventQueue/ModelMapper structures from the ModelReconciliationQueue.
/// Provides a publisher for all incoming subscription types (onCreate, onUpdate, onDelete) for a single Model type.
final class AWSIncomingSubscriptionEventPublisher: IncomingSubscriptionEventPublisher {

    private let asyncEvents: IncomingAsyncSubscriptionEventPublisher
    private let mapper: IncomingAsyncSubscriptionEventToAnyModelMapper
    private let subscriptionEventSubject: PassthroughSubject<IncomingSubscriptionEventPublisherEvent, DataStoreError>
    private var mapperSink: AnyCancellable?
    var publisher: AnyPublisher<IncomingSubscriptionEventPublisherEvent, DataStoreError> {
        return subscriptionEventSubject.eraseToAnyPublisher()
    }

    init(modelSchema: ModelSchema,
         api: APICategoryGraphQLBehaviorExtended,
         modelPredicate: QueryPredicate?,
         auth: AuthCategoryBehavior?,
         authModeStrategy: AuthModeStrategy) async {
        self.subscriptionEventSubject = PassthroughSubject<IncomingSubscriptionEventPublisherEvent, DataStoreError>()
        self.asyncEvents = await IncomingAsyncSubscriptionEventPublisher(modelSchema: modelSchema,
                                                                   api: api,
                                                                   modelPredicate: modelPredicate,
                                                                   auth: auth,
                                                                   authModeStrategy: authModeStrategy)

        self.mapper = IncomingAsyncSubscriptionEventToAnyModelMapper()
        asyncEvents.subscribe(subscriber: mapper)
        self.mapperSink = mapper
            .publisher
            .sink(
                receiveCompletion: { [weak self] in self?.onReceiveCompletion(receiveCompletion: $0) },
                receiveValue: { [weak self] in self?.onReceive(receiveValue: $0) }
            )
    }

    private func onReceiveCompletion(receiveCompletion: Subscribers.Completion<DataStoreError>) {
        subscriptionEventSubject.send(completion: receiveCompletion)
    }

    private func onReceive(receiveValue: IncomingAsyncSubscriptionEvent) {
        if case .connectionConnected = receiveValue {
            subscriptionEventSubject.send(.connectionConnected)
        } else if case .payload(let mutationSyncAnyModel) = receiveValue {
            subscriptionEventSubject.send(.mutationEvent(mutationSyncAnyModel))
        }
    }

    func cancel() {
        mapperSink?.cancel()
        mapperSink = nil

        asyncEvents.cancel()
        mapper.cancel()
    }
}

// MARK: Resettable
extension AWSIncomingSubscriptionEventPublisher: Resettable {

    func reset() async {
        Amplify.log.verbose("Resetting asyncEvents")
        asyncEvents.reset()
        Amplify.log.verbose("Resetting asyncEvents: finished")

        Amplify.log.verbose("Resetting mapper")
        await mapper.reset()
        Amplify.log.verbose("Resetting mapper: finished")
    }

}
