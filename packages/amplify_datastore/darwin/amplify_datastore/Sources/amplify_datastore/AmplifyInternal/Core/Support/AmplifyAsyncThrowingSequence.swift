//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public typealias WeakAmplifyAsyncThrowingSequenceRef<Element> = WeakRef<AmplifyAsyncThrowingSequence<Element>>

public class AmplifyAsyncThrowingSequence<Element: Sendable>: AsyncSequence, Cancellable {
    public typealias Iterator = AsyncThrowingStream<Element, Error>.Iterator
    private let asyncStream: AsyncThrowingStream<Element, Error>
    private let continuation: AsyncThrowingStream<Element, Error>.Continuation
    private var parent: Cancellable?

    public private(set) var isCancelled: Bool = false

    public init(parent: Cancellable? = nil,
                bufferingPolicy: AsyncThrowingStream<Element, Error>.Continuation.BufferingPolicy = .unbounded) {
        self.parent = parent
        (asyncStream, continuation) = AsyncThrowingStream.makeStream(of: Element.self, bufferingPolicy: bufferingPolicy)
    }

    public func makeAsyncIterator() -> Iterator {
        asyncStream.makeAsyncIterator()
    }

    public func send(_ element: Element) {
        continuation.yield(element)
    }

    public func fail(_ error: Error) {
        continuation.yield(with: .failure(error))
        continuation.finish()
    }

    public func finish() {
        continuation.finish()
        parent = nil
    }

    public func cancel() {
        guard !isCancelled else { return }
        isCancelled = true
        parent?.cancel()
        finish()
    }

}
