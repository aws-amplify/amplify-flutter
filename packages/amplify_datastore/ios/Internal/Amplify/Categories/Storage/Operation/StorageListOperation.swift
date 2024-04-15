//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// - Tag: StorageListOperation
public protocol StorageListOperation: AmplifyOperation<StorageListRequest, StorageListResult, StorageError> {}

public extension HubPayload.EventName.Storage {
    /// eventName for HubPayloads emitted by this operation
    static let list = "Storage.list"
}
