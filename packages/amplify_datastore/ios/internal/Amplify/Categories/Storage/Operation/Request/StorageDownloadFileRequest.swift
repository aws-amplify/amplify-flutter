//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Represents a request to download an individual object as a file, initiated by an implementation of the
/// [StorageCategoryPlugin](x-source-tag://StorageCategoryPlugin) protocol.
///
/// - Tag: StorageDownloadFileRequest
public struct StorageDownloadFileRequest: AmplifyOperationRequest {

    /// The unique identifier for the object in storage
    ///
    /// - Tag: StorageDownloadFileRequest.key
    public let key: String

    /// The local file to download the object to
    ///
    /// - Tag: StorageDownloadFileRequest.local
    public let local: URL

    /// Options to adjust the behavior of this request, including plugin options
    ///
    /// - Tag: StorageDownloadFileRequest.options
    public let options: Options

    /// - Tag: StorageDownloadFileRequest.init
    public init(key: String, local: URL, options: Options) {
        self.key = key
        self.local = local
        self.options = options
    }
}

public extension StorageDownloadFileRequest {

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageDownloadFileRequestOptions
    struct Options {

        /// Access level of the storage system. Defaults to `public`
        ///
        /// - Tag: StorageDownloadFileRequestOptions.accessLevel
        public let accessLevel: StorageAccessLevel

        /// Target user to apply the action on.
        ///
        /// - Tag: StorageDownloadFileRequestOptions.targetIdentityId
        public let targetIdentityId: String?

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying storage system's functionality. See plugin documentation for expected
        /// key/values
        ///
        /// - Tag: StorageDownloadFileRequestOptions.pluginOptions
        public let pluginOptions: Any?

        /// - Tag: StorageDownloadFileRequestOptions.init
        public init(accessLevel: StorageAccessLevel = .guest,
                    targetIdentityId: String? = nil,
                    pluginOptions: Any? = nil) {
            self.accessLevel = accessLevel
            self.targetIdentityId = targetIdentityId
            self.pluginOptions = pluginOptions
        }
    }
}
