//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine

/// Publishes mutation events to downstream subscribers for subsequent sync to the API.
protocol MutationEventPublisher: AnyObject, AmplifyCancellable {
    var publisher: AnyPublisher<MutationEvent, DataStoreError> { get }
}
