//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Takes a Parent Operation which conforms to Cancellable so that if the
/// Child Task is cancelled it will also cancel the parent.
actor ChildTask<InProcess, Success, Failure: Error>: BufferingSequence {
    typealias Element = InProcess
    private let parent: Cancellable
    private var inProcessChannel: AmplifyAsyncSequence<InProcess>?
    private var valueContinuations: [CheckedContinuation<Success, Error>] = []
    private var storedResult: Result<Success, Failure>?
    private var isCancelled = false

    var inProcess: AmplifyAsyncSequence<InProcess> {
        let channel: AmplifyAsyncSequence<InProcess>
        if let inProcessChannel = inProcessChannel {
            channel = inProcessChannel
        } else {
            channel = AmplifyAsyncSequence<InProcess>(bufferingPolicy: bufferingPolicy)
            inProcessChannel = channel
        }

        // finish channel if there is already a result
        if storedResult != nil || isCancelled {
            channel.finish()
        }
        return channel
    }

    var value: Success {
        get async throws {
            try await withTaskCancellationHandler(handler: {
                Task {
                    await cancel()
                }
            }, operation: {
                try await withCheckedThrowingContinuation { continuation in
                    if isCancelled {
                        // immediately cancel is already cancelled
                        continuation.resume(throwing: CancellationError())
                    } else if let result = storedResult {
                        // immediately send result if it is available
                        valueContinuations.append(continuation)
                        send(result)
                    } else {
                        // capture contination to use later
                        valueContinuations.append(continuation)
                    }
                }
            })
        }
    }

    init(parent: Cancellable) {
        self.parent = parent
    }

    func report(_ inProcess: InProcess?) async throws {
        if let channel = inProcessChannel {
            if let inProcess = inProcess {
                channel.send(inProcess)
            } else {
                // nil indicates the sequence is done
                channel.finish()
            }
        }
    }

    func finish(_ result: Result<Success, Failure>) {
        if !valueContinuations.isEmpty {
            send(result)
        }
        // store result for when the value property is used
        self.storedResult = result
        if let channel = inProcessChannel {
            channel.finish()
        }
    }

    func cancel() async {
        isCancelled = true
        if let channel = inProcessChannel {
            channel.finish()
        }
        while !valueContinuations.isEmpty {
            let continuation = valueContinuations.removeFirst()
            continuation.resume(throwing: CancellationError())
        }
        parent.cancel()
    }

    private func send(_ result: Result<Success, Failure>) {
        while !valueContinuations.isEmpty {
            let continuation = valueContinuations.removeFirst()
            continuation.resume(with: result)
        }
    }

}
