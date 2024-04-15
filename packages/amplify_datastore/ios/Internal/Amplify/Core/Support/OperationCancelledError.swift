//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// This is public so plugins can use it to indicate cancellations on arbitrary operations.
///
/// - Warning: Although this has `public` access, it is intended for internal use
/// and should not be used   directly by host applications. The behavior of this may
/// change without warning.
public struct OperationCancelledError: Error {
    public init() { }
}

/// This is public so plugins can use it to indicate cancellations on arbitrary operations.
///
/// - Warning: Although this has `public` access, it is intended for internal use
/// and should not be used   directly by host applications. The behavior of this may
/// change without warning.
public extension AmplifyError {
    var isOperationCancelledError: Bool {
        guard let underlyingError = underlyingError else {
            return false
        }
        return underlyingError.isOperationCancelledError
    }
}

/// This is public so plugins can use it to indicate cancellations on arbitrary operations.
///
/// - Warning: Although this has `public` access, it is intended for internal use
/// and should not be used   directly by host applications. The behavior of this may
/// change without warning.
public extension Error {
    var isOperationCancelledError: Bool {
        self is OperationCancelledError
    }
}
