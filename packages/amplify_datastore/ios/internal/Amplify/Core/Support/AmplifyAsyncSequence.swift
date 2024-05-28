//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public typealias WeakAmplifyAsyncSequenceRef<Element> = WeakRef<AmplifyAsyncSequence<Element>>

public class AmplifyAsyncSequence<Element: Sendable>: AsyncSequence, Cancellable {
    public typealias Iterator = AsyncStream<Element>.Iterator
    private var asyncStream: AsyncStream<Element>! = nil
    private var continuation: AsyncStream<Element>.Continuation! = nil
    private var parent: Cancellable?

    public private(set) var isCancelled: Bool = false

    public init(parent: Cancellable? = nil,
                bufferingPolicy: AsyncStream<Element>.Continuation.BufferingPolicy = .unbounded) {
        self.parent = parent
        asyncStream = AsyncStream<Element>(Element.self, bufferingPolicy: bufferingPolicy) { continuation in
            self.continuation = continuation
        }
    }

    public func makeAsyncIterator() -> Iterator {
        asyncStream.makeAsyncIterator()
    }

    public func send(_ element: Element) {
        continuation.yield(element)
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
