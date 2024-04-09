//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// - Tag: StorageGetURLOperation
public protocol StorageGetURLOperation: AmplifyOperation<StorageGetURLRequest, URL, StorageError> {}

public extension HubPayload.EventName.Storage {
    /// eventName for HubPayloads emitted by this operation
    static let getURL = "Storage.getURL"
}
