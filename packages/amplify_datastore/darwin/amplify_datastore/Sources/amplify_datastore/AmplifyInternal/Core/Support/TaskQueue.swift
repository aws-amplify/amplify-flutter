//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A helper for executing asynchronous work serially.
public class TaskQueue<Success> {
    typealias Block = @Sendable () async -> Void
    private let streamContinuation: AsyncStream<Block>.Continuation

    public init() {
        let (stream, continuation) = AsyncStream.makeStream(of: Block.self)
        self.streamContinuation = continuation

        Task {
            for await block in stream {
                _ = await block()
            }
        }
    }

    deinit {
        streamContinuation.finish()
    }

    /// Serializes asynchronous requests made from an async context
    ///
    /// Given an invocation like
    /// ```swift
    /// let tq = TaskQueue<Int>()
    /// let v1 = try await tq.sync { try await doAsync1() }
    /// let v2 = try await tq.sync { try await doAsync2() }
    /// let v3 = try await tq.sync { try await doAsync3() }
    /// ```
    /// TaskQueue serializes this work so that `doAsync1` is performed before `doAsync2`,
    /// which is performed before `doAsync3`.
    public func sync(block: @Sendable @escaping () async throws -> Success) async throws -> Success {
        try await withCheckedThrowingContinuation { continuation in
            streamContinuation.yield {
                do {
                    let value = try await block()
                    continuation.resume(returning: value)
                } catch {
                    continuation.resume(throwing: error)
                }
            }
        }
    }

    public func async(block: @Sendable @escaping () async throws -> Success) {
        streamContinuation.yield {
            do {
                _ = try await block()
            } catch {
                Self.log.warn("Failed to handle async task in TaskQueue<\(Success.self)> with error: \(error)")
            }
        }
    }
}

extension TaskQueue {
    public static var log: Logger {
        Amplify.Logging.logger(forNamespace: String(describing: self))
    }
}
