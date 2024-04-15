//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// - Tag: StorageDownloadDataOperation
public protocol StorageDownloadDataOperation: AmplifyInProcessReportingOperation<
    StorageDownloadDataRequest,
    Progress,
    Data,
    StorageError
> {}

public extension HubPayload.EventName.Storage {
    /// eventName for HubPayloads emitted by this operation
    static let downloadData = "Storage.downloadData"
}

/// - Tag: StorageDownloadDataTask
public typealias StorageDownloadDataTask = AmplifyInProcessReportingOperationTaskAdapter<StorageDownloadDataRequest,
                                                                                                  Progress,
                                                                                                  Data,
                                                                                                  StorageError>
