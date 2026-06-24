//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Combine

enum IncomingSubscriptionEventPublisherEvent {
    case connectionConnected
    case mutationEvent(MutationSync<AnyModel>)
}

protocol IncomingSubscriptionEventPublisher: AmplifyCancellable {
    var publisher: AnyPublisher<IncomingSubscriptionEventPublisherEvent, DataStoreError> { get }
}
