//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A helper for executing asynchronous work serially.
public actor TaskQueue<Success> {
    private var previousTask: Task<Success, Error>?

    public init() {}

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
        let currentTask: Task<Success, Error> = Task { [previousTask] in
            _ = await previousTask?.result
            return try await block()
        }
        previousTask = currentTask
        return try await currentTask.value
    }

    public nonisolated func async(block: @Sendable @escaping () async throws -> Success) rethrows {
        Task {
            try await sync(block: block)
        }
    }
}
