//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine

struct DataStorePublisher: ModelSubcriptionBehavior {

    private let subject = PassthroughSubject<MutationEvent, DataStoreError>()

    var publisher: AnyPublisher<MutationEvent, DataStoreError> {
        return subject.eraseToAnyPublisher()
    }

    func send(input: MutationEvent) {
        subject.send(input)
    }

    func send(dataStoreError: DataStoreError) {
        subject.send(completion: .failure(dataStoreError))
    }

    func sendFinished() {
        subject.send(completion: .finished)
    }
}

protocol ModelSubcriptionBehavior {

    var publisher: AnyPublisher<MutationEvent, DataStoreError> { get }

    func send(input: MutationEvent)

    func send(dataStoreError: DataStoreError)

    func sendFinished()
}
