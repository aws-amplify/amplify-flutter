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

    /// The path for the object in storage
    ///
    /// - Tag: StorageDownloadFileRequest.path
    public let path: (any StoragePath)?

    /// The unique identifier for the object in storage
    ///
    /// - Tag: StorageDownloadFileRequest.key
    @available(*, deprecated, message: "Use `path` instead of `key`")
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
    @available(*, deprecated, message: "Use init(path:local:options)")
    public init(key: String, local: URL, options: Options) {
        self.key = key
        self.local = local
        self.options = options
        self.path = nil
    }

    /// - Tag: StorageDownloadFileRequest.init
    public init(path: any StoragePath, local: URL, options: Options) {
        self.key = ""
        self.local = local
        self.options = options
        self.path = path
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
        @available(*, deprecated, message: "Use `path` in Storage API instead of `Options`")
        public let accessLevel: StorageAccessLevel

        /// Target user to apply the action on.
        ///
        /// - Tag: StorageDownloadFileRequestOptions.targetIdentityId
        @available(*, deprecated, message: "Use `path` in Storage API instead of `Options`")
        public let targetIdentityId: String?

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying storage system's functionality. See plugin documentation for expected
        /// key/values
        ///
        /// - Tag: StorageDownloadFileRequestOptions.pluginOptions
        public let pluginOptions: Any?

        /// - Tag: StorageDownloadFileRequestOptions.init
        @available(*, deprecated, message: "Use init(pluginOptions)")
        public init(accessLevel: StorageAccessLevel = .guest,
                    targetIdentityId: String? = nil,
                    pluginOptions: Any? = nil) {
            self.accessLevel = accessLevel
            self.targetIdentityId = targetIdentityId
            self.pluginOptions = pluginOptions
        }

        /// - Tag: StorageDownloadFileRequestOptions.init
        @available(*, deprecated, message: "Use init(pluginOptions)")
        public init(pluginOptions: Any? = nil) {
            self.accessLevel = .guest
            self.targetIdentityId = nil
            self.pluginOptions = pluginOptions
        }
    }
}
