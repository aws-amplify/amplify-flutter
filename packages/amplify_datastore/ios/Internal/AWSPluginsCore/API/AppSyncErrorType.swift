//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Common AppSync error types
public enum AppSyncErrorType: Equatable {

    private static let conditionalCheckFailedErrorString = "ConditionalCheckFailedException"
    private static let conflictUnhandledErrorString = "ConflictUnhandled"
    private static let unauthorizedErrorString = "Unauthorized"
    private static let operationDisabledErrorString = "OperationDisabled"

    /// Conflict detection finds a version mismatch and the conflict handler rejects the mutation.
    /// See https://docs.aws.amazon.com/appsync/latest/devguide/conflict-detection-and-sync.html for more information
    case conflictUnhandled

    case conditionalCheck

    case unauthorized

    /// This error is not for general use unless you have consulted directly with AWS.
    /// When DataStore encounters this error, it will ignore it and continue running.
    /// This error is subject to be **deprecated/removed** in the future.
    case operationDisabled

    case unknown(String)

    public init(_ value: String) {
        switch value {
        case AppSyncErrorType.conditionalCheckFailedErrorString:
            self = .conditionalCheck
        case AppSyncErrorType.conflictUnhandledErrorString:
            self = .conflictUnhandled
        case AppSyncErrorType.unauthorizedErrorString:
            self = .unauthorized
        case AppSyncErrorType.operationDisabledErrorString:
            self = .operationDisabled
        default:
            self = .unknown(value)
        }
    }

    public var rawValue: String {
        switch self {
        case .conditionalCheck:
            return AppSyncErrorType.conditionalCheckFailedErrorString
        case .conflictUnhandled:
            return AppSyncErrorType.conflictUnhandledErrorString
        case .unauthorized:
            return AppSyncErrorType.unauthorizedErrorString
        case .operationDisabled:
            return AppSyncErrorType.operationDisabledErrorString
        case .unknown(let value):
            return value
        }
    }
}
