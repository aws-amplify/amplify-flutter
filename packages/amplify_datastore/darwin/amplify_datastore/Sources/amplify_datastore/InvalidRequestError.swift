// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation

public enum InvalidRequestError: Error {
    case auth(comment: String, suggestion: String)
    case storage(comment: String, suggestion: String)
}

extension InvalidRequestError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .auth(let failureSource, let validationFailure):
            return NSLocalizedString(
                "\(failureSource) \(validationFailure): (InvalidRequestError.auth)",
                comment: failureSource
            )
        case .storage(let failureSource, let validationFailure):
            return NSLocalizedString(
                "\(failureSource) \(validationFailure): (InvalidRequestError.storage)",
                comment: failureSource
            )
        }
    }
}
