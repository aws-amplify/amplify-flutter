//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension InternalTaskAsyncSequence where Self: InternalTaskRunner {

    var sequence: AmplifyAsyncSequence<InProcess> {
        guard let sequence = context.sequence else {
            let task = Task { [weak self] in
                guard let self = self else { return }
                try await self.run()
            }

            let sequence = AmplifyAsyncSequence<InProcess>(parent: self, bufferingPolicy: context.bufferingPolicy)
            self.context.task = task
            context.sequence = sequence
            return sequence
        }

        return sequence
    }

    func cancel() {
        sequence.cancel()
        context.task?.cancel()
        context.task = nil
        context.sequence = nil
    }

}

public extension InternalTaskAsyncThrowingSequence where Self: InternalTaskRunner {

    var sequence: AmplifyAsyncThrowingSequence<InProcess> {
        guard let sequence = context.sequence else {
            let sequence = AmplifyAsyncThrowingSequence<InProcess>(parent: self, bufferingPolicy: context.bufferingPolicy)
            context.sequence = sequence

            let task = Task { [weak self] in
                guard let self = self else { return }
                try await self.run()
            }
            self.context.task = task

            return sequence
        }

        return sequence
    }

    func cancel() {
        sequence.cancel()
        context.task?.cancel()
        context.task = nil
        context.sequence = nil
    }

}

public extension InternalTaskChannel where Self: InternalTaskRunner & InternalTaskAsyncSequence {

    /// Sends element to sequence
    /// - Parameter element: element
    func send(_ element: InProcess) {
        context.sequence?.send(element)
    }

    /// Terminates sequence
    func finish() {
        context.sequence?.finish()
    }

}

public extension InternalTaskThrowingChannel where Self: InternalTaskRunner & InternalTaskAsyncThrowingSequence {

    /// Sends element to sequence
    /// - Parameter element: element
    func send(_ element: InProcess) {
        context.sequence?.send(element)
    }

    /// Terminates sequence
    func finish() {
        context.sequence?.finish()
    }

    /// Fails sequence
    /// - Parameter error: error
    func fail(_ error: Error) {
        context.sequence?.fail(error)
    }

}
