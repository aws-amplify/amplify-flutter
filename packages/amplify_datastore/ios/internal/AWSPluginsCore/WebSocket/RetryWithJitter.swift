//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import Foundation

@_spi(WebSocket)
public actor RetryWithJitter {
    public enum Error: Swift.Error {
        case maxRetryExceeded([Swift.Error])
    }
    let base: UInt
    let max: UInt
    var retryCount: UInt = 0

    init(base: UInt = 25, max: UInt = 6400) {
        self.base = base
        self.max = max
    }

    // using FullJitter backoff strategy
    // ref: https://aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/
    // Returns: retry backoff time interval in millisecond
    func next() -> UInt {
        let expo = min(max, powerOf2(count: retryCount) * base)
        retryCount += 1
        return UInt.random(in: 0..<expo)
    }

    func reset() {
        self.retryCount = 0
    }
}

extension RetryWithJitter {
    public static func execute<Output>(
        maxRetryCount: UInt = 8,
        shouldRetryOnError: (Swift.Error) -> Bool = { _ in true },
        _ operation: @escaping () async throws -> Output
    ) async throws -> Output {
        let retryWithJitter = RetryWithJitter()
        func recursive(retryCount: UInt, cause: [Swift.Error]) async -> Result<Output, Swift.Error> {
            if retryCount == maxRetryCount {
                return .failure(RetryWithJitter.Error.maxRetryExceeded(cause))
            }

            let backoffInterval = retryCount == 0 ? 0 : await retryWithJitter.next()
            do {
                try await Task.sleep(nanoseconds: UInt64(backoffInterval) * 1_000_000)
                return .success(try await operation())
            } catch {
                print("[RetryWithJitter] operation failed with error \(error), retrying(\(retryCount))")
                if shouldRetryOnError(error) {
                    return await recursive(retryCount: retryCount + 1, cause: cause + [error])
                } else {
                    return .failure(error)
                }
            }
        }
        return try await recursive(retryCount: 0, cause: []).get()
    }
}

fileprivate func powerOf2(count: UInt) -> UInt {
    count == 0
    ? 1
    : 2 * powerOf2(count: count - 1)
}
