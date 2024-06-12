//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension StorageCategory: StorageCategoryBehavior {

    @discardableResult
    public func getURL(
        key: String,
        options: StorageGetURLOperation.Request.Options? = nil
    ) async throws -> URL {
        try await plugin.getURL(key: key, options: options)
    }

    @discardableResult
    public func getURL(
        path: any StoragePath,
        options: StorageGetURLOperation.Request.Options? = nil
    ) async throws -> URL {
        try await plugin.getURL(path: path, options: options)
    }

    @discardableResult
    public func downloadData(
        key: String,
        options: StorageDownloadDataOperation.Request.Options? = nil
    ) -> StorageDownloadDataTask {
        plugin.downloadData(key: key, options: options)
    }

    @discardableResult
    public func downloadData(
        path: any StoragePath,
        options: StorageDownloadDataOperation.Request.Options? = nil
    ) -> StorageDownloadDataTask {
        plugin.downloadData(path: path, options: options)
    }

    @discardableResult
    public func downloadFile(
        key: String,
        local: URL,
        options: StorageDownloadFileOperation.Request.Options? = nil
    ) -> StorageDownloadFileTask {
        plugin.downloadFile(key: key, local: local, options: options)
    }

    @discardableResult
    public func downloadFile(
        path: any StoragePath,
        local: URL,
        options: StorageDownloadFileOperation.Request.Options? = nil
    ) -> StorageDownloadFileTask {
        plugin.downloadFile(path: path, local: local, options: options)
    }

    @discardableResult
    public func uploadData(
        key: String,
        data: Data,
        options: StorageUploadDataOperation.Request.Options? = nil
    ) -> StorageUploadDataTask {
        plugin.uploadData(key: key, data: data, options: options)
    }

    @discardableResult
    public func uploadData(
        path: any StoragePath,
        data: Data,
        options: StorageUploadDataOperation.Request.Options? = nil
    ) -> StorageUploadDataTask {
        plugin.uploadData(path: path, data: data, options: options)
    }

    @discardableResult
    public func uploadFile(
        key: String,
        local: URL,
        options: StorageUploadFileOperation.Request.Options? = nil
    ) -> StorageUploadFileTask {
        plugin.uploadFile(key: key, local: local, options: options)
    }

    @discardableResult
    public func uploadFile(
        path: any StoragePath,
        local: URL,
        options: StorageUploadFileOperation.Request.Options? = nil
    ) -> StorageUploadFileTask {
        plugin.uploadFile(path: path, local: local, options: options)
    }

    @discardableResult
    public func remove(
        key: String,
        options: StorageRemoveRequest.Options? = nil
    ) async throws -> String {
        try await plugin.remove(key: key, options: options)
    }

    @discardableResult
    public func remove(
        path: any StoragePath,
        options: StorageRemoveRequest.Options? = nil
    ) async throws -> String {
        try await plugin.remove(path: path, options: options)
    }

    @discardableResult
    public func list(
        options: StorageListOperation.Request.Options? = nil
    ) async throws -> StorageListResult {
        try await plugin.list(options: options)
    }

    @discardableResult
    public func list(
        path: any StoragePath,
        options: StorageListOperation.Request.Options? = nil
    ) async throws -> StorageListResult {
        try await plugin.list(path: path, options: options)
    }

    public func handleBackgroundEvents(identifier: String) async -> Bool {
        await plugin.handleBackgroundEvents(identifier: identifier)
    }

}
