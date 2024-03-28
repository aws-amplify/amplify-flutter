//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// - Tag: StorageUploadFileOperation
public protocol StorageUploadFileOperation: AmplifyInProcessReportingOperation<
    StorageUploadFileRequest,
    Progress,
    String,
    StorageError
> {}

public extension HubPayload.EventName.Storage {
    /// eventName for HubPayloads emitted by this operation
    static let uploadFile = "Storage.uploadFile"
}

/// - Tag: StorageUploadFileTask
public typealias StorageUploadFileTask = AmplifyInProcessReportingOperationTaskAdapter<StorageUploadFileRequest,
                                                                                       Progress,
                                                                                       String,
                                                                                       StorageError>
