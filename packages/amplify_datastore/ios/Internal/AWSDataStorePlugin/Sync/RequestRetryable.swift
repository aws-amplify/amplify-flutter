//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

struct RequestRetryAdvice {
    let shouldRetry: Bool
    let retryInterval: DispatchTimeInterval
    init(shouldRetry: Bool,
         retryInterval: DispatchTimeInterval = .seconds(60)) {
        self.shouldRetry = shouldRetry
        self.retryInterval = retryInterval
    }

}

protocol RequestRetryable {
    func retryRequestAdvice(urlError: URLError?,
                            httpURLResponse: HTTPURLResponse?,
                            attemptNumber: Int) -> RequestRetryAdvice
}
