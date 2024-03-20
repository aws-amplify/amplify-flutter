//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore
import Combine

enum ModelConnectionDisconnectedReason {
    case unauthorized
    case operationDisabled
}

enum ModelReconciliationQueueEvent {
    case idle
    case started
    case paused
    case connected(modelName: String)
    case disconnected(modelName: String, reason: ModelConnectionDisconnectedReason)
    case mutationEvent(MutationEvent)
    case mutationEventDropped(modelName: String, error: DataStoreError? = nil)
}

protocol ModelReconciliationQueue {
    func start()
    func pause()
    func cancel()
    func enqueue(_ remoteModels: [MutationSync<AnyModel>])
    var publisher: AnyPublisher<ModelReconciliationQueueEvent, DataStoreError> { get }
}
