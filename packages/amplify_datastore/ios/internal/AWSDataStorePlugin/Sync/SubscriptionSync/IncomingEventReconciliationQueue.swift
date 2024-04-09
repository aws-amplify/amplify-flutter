//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore
import Combine

enum IncomingEventReconciliationQueueEvent {
    case idle
    case initialized
    case started
    case paused
    case mutationEventApplied(MutationEvent)
    case mutationEventDropped(modelName: String, error: DataStoreError? = nil)
}

/// A queue that reconciles all incoming events for a model: responses from locally-sourced mutations, and subscription
/// events for create, update, and delete events initiated by remote systems. In addition to pausing and resuming
/// automatically-configured subscriptions for models, the queue provides an `offer` method for submitting events
/// directly from other network events such as mutation callbacks or from base/initial sync queries.
protocol IncomingEventReconciliationQueue: AnyObject, AmplifyCancellable {
    func start()
    func pause()
    func offer(_ remoteModels: [MutationSync<AnyModel>], modelName: ModelName)
    var publisher: AnyPublisher<IncomingEventReconciliationQueueEvent, DataStoreError> { get }
}
