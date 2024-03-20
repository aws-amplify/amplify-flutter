//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

class RequestRetryablePolicy: RequestRetryable {

    private static let maxWaitMilliseconds = 300 * 1_000 // 5 minutes of max retry duration.
    private static let jitterMilliseconds: Float = 100.0

    private static let maxExponentForExponentialBackoff = 31

    public func retryRequestAdvice(urlError: URLError?,
                                   httpURLResponse: HTTPURLResponse?,
                                   attemptNumber: Int) -> RequestRetryAdvice {
        var attemptNumber = attemptNumber
        if attemptNumber <= 0 {
            assertionFailure("attemptNumber should be > 0")
            attemptNumber = 1
        }

        if let urlError = urlError {
            return determineRetryRequestAdvice(basedOn: urlError, attemptNumber: attemptNumber)
        } else {
            return determineRetryRequestAdvice(basedOn: httpURLResponse, attemptNumber: attemptNumber)
        }
    }

    private func determineRetryRequestAdvice(basedOn urlError: URLError,
                                             attemptNumber: Int) -> RequestRetryAdvice {
        switch urlError.code {
        case .notConnectedToInternet,
             .dnsLookupFailed,
             .cannotConnectToHost,
             .cannotFindHost,
             .timedOut,
             .dataNotAllowed,
             .cannotParseResponse,
             .networkConnectionLost,
             .secureConnectionFailed,
             .userAuthenticationRequired:
            let waitMillis = retryDelayInMillseconds(for: attemptNumber)
            return RequestRetryAdvice(shouldRetry: true, retryInterval: .milliseconds(waitMillis))
        default:
            break
        }
        return RequestRetryAdvice(shouldRetry: false)
    }

    private func determineRetryRequestAdvice(basedOn httpURLResponse: HTTPURLResponse?,
                                             attemptNumber: Int) -> RequestRetryAdvice {
        /// If there was no error and no response, then we should not retry.
        guard let httpURLResponse = httpURLResponse else {
            return RequestRetryAdvice(shouldRetry: false)
        }

        if let retryAfterValueInSeconds = getRetryAfterHeaderValue(from: httpURLResponse) {
            return RequestRetryAdvice(shouldRetry: true, retryInterval: .seconds(retryAfterValueInSeconds))
        }

        switch httpURLResponse.statusCode {
        case 500 ... 599, 429:
            let waitMillis = retryDelayInMillseconds(for: attemptNumber)
            if waitMillis <= RequestRetryablePolicy.maxWaitMilliseconds {
                return RequestRetryAdvice(shouldRetry: true, retryInterval: .milliseconds(waitMillis))
            }
        default:
            break
        }
        return RequestRetryAdvice(shouldRetry: false)
    }

    /// Returns a delay in milliseconds for the current attempt number. The delay includes random jitter as
    /// described in https://aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/
    private func retryDelayInMillseconds(for attemptNumber: Int) -> Int {
        var exponent = attemptNumber
        if attemptNumber > RequestRetryablePolicy.maxExponentForExponentialBackoff {
            exponent = RequestRetryablePolicy.maxExponentForExponentialBackoff
        }

        let jitter = Double(getRandomBetween0And1() * RequestRetryablePolicy.jitterMilliseconds)
        let delay = Int(Double(truncating: pow(2.0, exponent) as NSNumber) * 100.0 + jitter)
        return delay
    }

    private func getRandomBetween0And1() -> Float {
        return Float.random(in: 0 ... 1)
    }

    /// Returns the value of the "Retry-After" header as an Int, or nil if the value isn't present or cannot
    /// be converted to an Int
    ///
    /// - Parameter response: The response to get the header from
    /// - Returns: The value of the "Retry-After" header, or nil if not present or not convertable to Int
    private func getRetryAfterHeaderValue(from response: HTTPURLResponse) -> Int? {
        let waitTime: Int?
        switch response.allHeaderFields["Retry-After"] {
        case let retryTime as String:
            waitTime = Int(retryTime)
        case let retryTime as Int:
            waitTime = retryTime
        default:
            waitTime = nil
        }

        return waitTime
    }
}
