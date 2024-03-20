//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// - Warning: Although this has `public` access, it is intended for internal use
/// and should not be used directly by host applications. The behaviors and names of
/// this type may change without warning.
extension NSLocking {
    /// Execute `block` after obtaining a lock on `lock`.
    ///
    /// - Warning: Although this has `public` access, it is intended for internal use
    /// and should not be used directly by host applications. The behaviors and names of
    /// this type may change without warning.
    /// - Parameters:
    ///   - block: The block to execute
    public func execute(
        _ block: BasicThrowableClosure
    ) rethrows {
        try execute(input: (), block: block)
    }

    /// Execute `block` after obtaining a lock on `lock`, returning the output of
    /// `block`
    ///
    /// - Warning: Although this has `public` access, it is intended for internal use
    /// and should not be used directly by host applications. The behaviors and names of
    /// this type may change without warning.
    /// - Parameters:
    ///   - block: The block to execute
    public func execute<Output>(
        _ block: () throws -> Output
    ) rethrows -> Output {
        try execute(input: (), block: block)
    }

    private func execute<Input, Output>(
        input: Input,
        block: (Input) throws -> Output
    ) rethrows -> Output {
        lock()
        defer { self.unlock() }
        return try block(input)
    }

}
