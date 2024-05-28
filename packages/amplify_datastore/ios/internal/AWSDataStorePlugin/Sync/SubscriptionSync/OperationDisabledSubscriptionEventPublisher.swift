//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore
import Combine

final class OperationDisabledIncomingSubscriptionEventPublisher: IncomingSubscriptionEventPublisher {

    private let subscriptionEventSubject: PassthroughSubject<IncomingSubscriptionEventPublisherEvent, DataStoreError>

    var publisher: AnyPublisher<IncomingSubscriptionEventPublisherEvent, DataStoreError> {
        return subscriptionEventSubject.eraseToAnyPublisher()
    }

    init() {
        self.subscriptionEventSubject = PassthroughSubject<IncomingSubscriptionEventPublisherEvent, DataStoreError>()

        let apiError = APIError.operationError(AppSyncErrorType.operationDisabled.rawValue, "", nil)
        let dataStoreError = DataStoreError.api(apiError, nil)
        subscriptionEventSubject.send(completion: .failure(dataStoreError))

    }

    func cancel() {
    }
}
