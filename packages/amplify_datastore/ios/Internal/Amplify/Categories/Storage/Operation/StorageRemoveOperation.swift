//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// - Tag: StorageRemoveOperation
public protocol StorageRemoveOperation: AmplifyOperation<StorageRemoveRequest, String, StorageError> {}

public extension HubPayload.EventName.Storage {
    /// eventName for HubPayloads emitted by this operation
    static let remove = "Storage.remove"
}
