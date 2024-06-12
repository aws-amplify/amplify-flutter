//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// This operation encapsulates work to download an object from cloud storage to local storage.
///
/// ## Event descriptions
/// - InProcess: `Progress` - representing the progress of the download. This event will be emitted as controlled by the
///   underlying NSURLSession behavior, but could be multiple times per second. Apps should not rely on Progress to be
///   1.0 to determine a completed operation
/// - Completed: `Void` - Receipt of a `.completed` event indicates the download is complete and the file has been
///   successfully stored to the local URL supplied in the original `StorageDownloadFileRequest`
/// - Error: `StorageError` - Emitted if the download encounters an error.
///
/// - Tag: StorageDownloadFileOperation
public protocol StorageDownloadFileOperation: AmplifyInProcessReportingOperation<
    StorageDownloadFileRequest,
    Progress,
    Void,
    StorageError
> { }

public extension HubPayload.EventName.Storage {
    /// eventName for HubPayloads emitted by this operation
    static let downloadFile = "Storage.downloadFile"
}

/// - Tag: StorageDownloadFileTask
public typealias StorageDownloadFileTask = AmplifyInProcessReportingOperationTaskAdapter<StorageDownloadFileRequest,
                                                                                         Progress,
                                                                                         Void,
                                                                                         StorageError>
