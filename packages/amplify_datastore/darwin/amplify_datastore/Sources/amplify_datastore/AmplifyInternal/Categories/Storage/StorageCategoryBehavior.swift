//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Behavior of the Storage category used though `Amplify.Storage.*`. Plugin implementations
/// conform to this protocol indirectly though the
/// [StorageCategoryPlugin](x-source-tag://StorageCategoryPlugin) protocol.
///
/// - Tag: StorageCategoryBehavior
public protocol StorageCategoryBehavior {

    /// Retrieve the remote URL for the object from storage.
    ///
    /// - Parameters:
    ///   - key: The unique identifier for the object in storage.
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: requested Get URL
    ///
    /// - Tag: StorageCategoryBehavior.getURL
    @available(*, deprecated, message: "Use getURL(path:options:)")
    @discardableResult
    func getURL(
        key: String,
        options: StorageGetURLOperation.Request.Options?
    ) async throws -> URL

    /// Retrieve the remote URL for the object from storage.
    ///
    /// - Parameters:
    ///   - path: the path to the object in storage.
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: requested Get URL
    ///
    /// - Tag: StorageCategoryBehavior.getURL
    @discardableResult
    func getURL(
        path: any StoragePath,
        options: StorageGetURLOperation.Request.Options?
    ) async throws -> URL

    /// Retrieve the object from storage into memory.
    ///
    /// - Parameters:
    ///   - key: The unique identifier for the object in storage
    ///   - options: Options to adjust the behavior of this request, including plugin-options
    /// - Returns: A task that provides progress updates and the key which was used to download
    ///
    /// - Tag: StorageCategoryBehavior.downloadData
    @available(*, deprecated, message: "Use downloadData(path:options:)")
    @discardableResult
    func downloadData(key: String,
                      options: StorageDownloadDataOperation.Request.Options?) -> StorageDownloadDataTask

    /// Retrieve the object from storage into memory.
    ///
    /// - Parameters:
    ///   - path: The path for the object in storage
    ///   - options: Options to adjust the behavior of this request, including plugin-options
    /// - Returns: A task that provides progress updates and the key which was used to download
    ///
    /// - Tag: StorageCategoryBehavior.downloadData
    func downloadData(
        path: any StoragePath,
        options: StorageDownloadDataOperation.Request.Options?
    ) -> StorageDownloadDataTask

    /// Download to file the object from storage.
    ///
    /// - Parameters:
    ///   - key: The unique identifier for the object in storage.
    ///   - local: The local file to download destination
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: A task that provides progress updates and the key which was used to download
    ///
    /// - Tag: StorageCategoryBehavior.downloadFile
    @available(*, deprecated, message: "Use downloadFile(path:options:)")
    @discardableResult
    func downloadFile(
        key: String,
        local: URL,
        options: StorageDownloadFileOperation.Request.Options?
    ) -> StorageDownloadFileTask

    /// Download to file the object from storage.
    ///
    /// - Parameters:
    ///   - path: The path for the object in storage.
    ///   - local: The local file to download destination
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: A task that provides progress updates and the key which was used to download
    ///
    /// - Tag: StorageCategoryBehavior.downloadFile
    @discardableResult
    func downloadFile(
        path: any StoragePath,
        local: URL,
        options: StorageDownloadFileOperation.Request.Options?
    ) -> StorageDownloadFileTask

    /// Upload data to storage
    ///
    /// - Parameters:
    ///   - key: The unique identifier of the object in storage.
    ///   - data: The data in memory to be uploaded
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: A task that provides progress updates and the key which was used to upload
    ///
    /// - Tag: StorageCategoryBehavior.uploadData
    @available(*, deprecated, message: "Use uploadData(path:options:)")
    @discardableResult
    func uploadData(
        key: String,
        data: Data,
        options: StorageUploadDataOperation.Request.Options?
    ) -> StorageUploadDataTask

    /// Upload data to storage
    ///
    /// - Parameters:
    ///   - path: The path of the object in storage.
    ///   - data: The data in memory to be uploaded
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: A task that provides progress updates and the key which was used to upload
    ///
    /// - Tag: StorageCategoryBehavior.uploadData
    @discardableResult
    func uploadData(
        path: any StoragePath,
        data: Data,
        options: StorageUploadDataOperation.Request.Options?
    ) -> StorageUploadDataTask

    /// Upload local file to storage
    ///
    /// - Parameters:
    ///   - key: The unique identifier of the object in storage.
    ///   - local: The path to a local file.
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: A task that provides progress updates and the key which was used to upload
    ///
    /// - Tag: StorageCategoryBehavior.uploadFile
    @available(*, deprecated, message: "Use uploadFile(path:options:)")
    @discardableResult
    func uploadFile(
        key: String,
        local: URL,
        options: StorageUploadFileOperation.Request.Options?
    ) -> StorageUploadFileTask

    /// Upload local file to storage
    ///
    /// - Parameters:
    ///   - path: The path of the object in storage.
    ///   - local: The path to a local file.
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: A task that provides progress updates and the key which was used to upload
    ///
    /// - Tag: StorageCategoryBehavior.uploadFile
    @discardableResult
    func uploadFile(
        path: any StoragePath,
        local: URL,
        options: StorageUploadFileOperation.Request.Options?
    ) -> StorageUploadFileTask

    /// Delete object from storage
    ///
    /// - Parameters:
    ///   - key: The unique identifier of the object in storage.
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: An operation object that provides notifications and actions related to the execution of the work
    ///
    /// - Tag: StorageCategoryBehavior.remove
    @available(*, deprecated, message: "Use remove(path:options:)")
    @discardableResult
    func remove(
        key: String,
        options: StorageRemoveOperation.Request.Options?
    ) async throws -> String

    /// Delete object from storage
    ///
    /// - Parameters:
    ///   - path: The path of the object in storage.
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: An operation object that provides notifications and actions related to the execution of the work
    ///
    /// - Tag: StorageCategoryBehavior.remove
    @discardableResult
    func remove(
        path: any StoragePath,
        options: StorageRemoveOperation.Request.Options?
    ) async throws -> String

    /// List the object identifiers under the hierarchy specified by the path, relative to access level, from storage
    ///
    /// - Parameters:
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: An operation object that provides notifications and actions related to the execution of the work
    ///
    /// - Tag: StorageCategoryBehavior.list
    @available(*, deprecated, message: "Use list(path:options:)")
    @discardableResult
    func list(options: StorageListOperation.Request.Options?) async throws -> StorageListResult

    /// List the object identifiers under the hierarchy specified by the path, relative to access level, from storage
    ///
    /// - Parameters:
    ///   - path: The path of the object in storage.
    ///   - options: Parameters to specific plugin behavior
    /// - Returns: An operation object that provides notifications and actions related to the execution of the work
    ///
    /// - Tag: StorageCategoryBehavior.list
    @discardableResult
    func list(
        path: any StoragePath,
        options: StorageListOperation.Request.Options?
    ) async throws -> StorageListResult

    /// Handles background events which are related to URLSession
    /// - Parameter identifier: identifier
    /// - Returns: returns true if the identifier is handled by Amplify
    ///
    /// - Tag: StorageCategoryBehavior.handleBackgroundEvents
    func handleBackgroundEvents(identifier: String) async -> Bool

}
