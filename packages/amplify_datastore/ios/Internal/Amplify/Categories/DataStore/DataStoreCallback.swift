//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Enum that holds the results of a `DataStore` operation.
/// - seealso: [DataStoreCallback](#DataStoreCallback)
public typealias DataStoreResult<Success> = Result<Success, DataStoreError>

extension DataStoreResult {

    /// Creates a `DataStoreResult` based on a error raised during `DataStore` operations.
    /// In case the error is not already a `DataStoreError`, it gets wrapped
    /// with `.invalidOperation`.
    ///
    /// - Parameter error: the root cause of the failure
    /// - Returns: a `DataStoreResult.error`
    public static func failure(causedBy error: Error) -> DataStoreResult<Success> {
        let dataStoreError = error as? DataStoreError ?? .invalidOperation(causedBy: error)
        return .failure(dataStoreError)
    }

    public static var emptyResult: DataStoreResult<Void> {
        .successfulVoid
    }

}

/// Function type of every `DataStore` asynchronous API.
public typealias DataStoreCallback<Result> = (DataStoreResult<Result>) -> Void
