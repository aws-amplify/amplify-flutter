//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if canImport(Combine)
import Foundation
import Combine

// Most APIs will return an operation that exposes a `resultPublisher`. The
// Storage and API category methods that expose both a result and an in-process
// publisher will use use-case specific names for their publishers. The call at
// use site would be:
// ```swift
// let publisher = Amplify.Category.apiCall().resultPublisher()
// ```
//
// These extension methods and properties provide internal support for a generic
// `result` publisher. These are exposed on specific operations by constrained
// protocol extensions, to allow for use-case specific names and overrides where
// necessary. The implementation would undoubtedly be simpler if we simply exposed
// a generic `resultPublisher` on all AmplifyOperations, but that causes confusion
// in the GraphQL Subscription case, where we want to combine values from `result`
// and `inProcess` publishers into a `connectionStatePublisher` and a
// `subscriptionDataPublisher`, neither of which map exactly to `result` or
// `inProcess` cases. Similarly, having a generically named `inProcessPublisher`
// isn't as meaningful at the call site of a Storage file operation as a
// `progressPublisher`.

extension AmplifyOperation {
    /// A Publisher that emits the result of the operation, or the associated failure.
    /// Cancelled operations will emit a completion without a value as long as the
    /// cancellation was processed before the operation was resolved.
    var internalResultPublisher: AnyPublisher<Success, Failure> {
        resultFuture
            .catch(interceptCancellation)
            .eraseToAnyPublisher()
    }

    /// Publish the result of the operation
    ///
    /// - Parameter result: the result of the operation
    func publish(result: OperationResult) {
        resultPromise(result)
    }

    /// Utility method to help Swift type-cast the handling logic for cancellation
    /// errors vs. re-thrown errors
    ///
    /// - Parameter error: The error being intercepted
    /// - Returns: A publisher that either completes successfully (if the underlying
    ///   error of `error` is a cancellation) or re-emits the existing error
    private func interceptCancellation(error: Failure) -> AnyPublisher<Success, Failure> {
        error.isOperationCancelledError ?
                    Empty<Success, Failure>(completeImmediately: true).eraseToAnyPublisher() :
                    Fail<Success, Failure>(error: error).eraseToAnyPublisher()
    }

}
#endif
