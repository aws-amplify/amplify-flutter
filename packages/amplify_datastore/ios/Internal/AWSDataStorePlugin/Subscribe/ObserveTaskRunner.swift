//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine

struct ObserveRequest: AmplifyOperationRequest {
    typealias Options = Any
    var options: Any
    init(options: Any = []) {
        self.options = options
    }
}

class ObserveTaskRunner: InternalTaskRunner, InternalTaskAsyncThrowingSequence, InternalTaskThrowingChannel {
    var request: ObserveRequest

    typealias Request = ObserveRequest
    typealias InProcess = MutationEvent

    var publisher: AnyPublisher<MutationEvent, DataStoreError>
    var sink: AnyCancellable?
    var context = InternalTaskAsyncThrowingSequenceContext<InProcess>()

    private var running = false

    public init(request: ObserveRequest = .init(), publisher: AnyPublisher<MutationEvent, DataStoreError>) {
        self.request = request
        self.publisher = publisher
    }

    func run() async throws {
        guard !running else { return }
        running = true

        self.sink = publisher.sink { completion in
            switch completion {
            case .finished:
                self.finish()
            case .failure(let error):
                self.fail(error)
            }
        } receiveValue: { mutationEvent in
            self.send(mutationEvent)
        }
    }
}
