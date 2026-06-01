//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import Foundation
import Combine

extension Publisher {
    func toAmplifyAsyncThrowingSequence() -> (AmplifyAsyncThrowingSequence<Output>, AnyCancellable) {
        let sequence = AmplifyAsyncThrowingSequence<Output>()
        let cancellable = self.sink { completion in
            switch completion {
            case .finished:
                sequence.finish()
            case .failure(let error):
                sequence.fail(error)
            }
        } receiveValue: { data in
            sequence.send(data)
        }

        return (sequence, cancellable)
    }
}
