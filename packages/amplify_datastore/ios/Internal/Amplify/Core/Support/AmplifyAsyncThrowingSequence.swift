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
    private var asyncStream: AsyncThrowingStream<Element, Error>! = nil
    private var continuation: AsyncThrowingStream<Element, Error>.Continuation! = nil
    private var parent: Cancellable?

    public private(set) var isCancelled: Bool = false

    public init(parent: Cancellable? = nil,
                bufferingPolicy: AsyncThrowingStream<Element, Error>.Continuation.BufferingPolicy = .unbounded) {
        self.parent = parent
        asyncStream = AsyncThrowingStream(Element.self, bufferingPolicy: bufferingPolicy, { continuation in
            self.continuation = continuation
        })
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
