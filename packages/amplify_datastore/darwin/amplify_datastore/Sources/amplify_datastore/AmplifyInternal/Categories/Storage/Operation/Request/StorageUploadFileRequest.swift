//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Represents an **file** upload request initiated by an implementation of the
/// [StorageCategoryPlugin](x-source-tag://StorageCategoryPlugin) protocol.
///
/// - Tag: StorageUploadFileRequest
public struct StorageUploadFileRequest: AmplifyOperationRequest {

    /// The path for the object in storage
    ///
    /// - Tag: StorageDownloadFileRequest.path
    public let path: (any StoragePath)?

    /// The unique identifier for the object in storage
    /// - Tag: StorageUploadFileRequest.key
    @available(*, deprecated, message: "Use `path` instead of `key`")
    public let key: String

    /// The file to be uploaded
    /// - Tag: StorageUploadFileRequest.local
    public let local: URL

    /// Options to adjust the behavior of this request, including plugin-options
    /// - Tag: StorageUploadFileRequest.options
    public let options: Options

    /// - Tag: StorageUploadFileRequest.init
    @available(*, deprecated, message: "Use init(path:local:options)")
    public init(key: String, local: URL, options: Options) {
        self.key = key
        self.local = local
        self.options = options
        self.path = nil
    }

    public init(path: any StoragePath, local: URL, options: Options) {
        self.key = ""
        self.local = local
        self.options = options
        self.path = path
    }
}

public extension StorageUploadFileRequest {

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageUploadFileRequestOptions
    struct Options {

        /// Access level of the storage system. Defaults to `public`
        ///
        /// - Tag: StorageUploadFileRequestOptions.accessLevel
        @available(*, deprecated, message: "Use `path` in Storage API instead of `Options`")
        public let accessLevel: StorageAccessLevel

        /// Target user to apply the action on.
        ///
        /// - Tag: StorageUploadFileRequestOptions.targetIdentityId
        @available(*, deprecated, message: "Use `path` in Storage API instead of `Options`")
        public let targetIdentityId: String?

        /// Metadata for the object to store
        ///
        /// - Tag: StorageUploadFileRequestOptions.metadata
        public let metadata: [String: String]?

        /// The standard MIME type describing the format of the object to store
        ///
        /// - Tag: StorageUploadFileRequestOptions.contentType
        public let contentType: String?

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying storage system's functionality. See plugin documentation for expected
        /// key/values
        ///
        /// - Tag: StorageUploadFileRequestOptions.pluginOptions
        public let pluginOptions: Any?

        /// - Tag: StorageUploadFileRequestOptions.init
        @available(*, deprecated, message: "Use init(metadata:contentType:pluginOptions)")
        public init(accessLevel: StorageAccessLevel = .guest,
                    targetIdentityId: String? = nil,
                    metadata: [String: String]? = nil,
                    contentType: String? = nil,
                    pluginOptions: Any? = nil
        ) {
            self.accessLevel = accessLevel
            self.targetIdentityId = targetIdentityId
            self.metadata = metadata
            self.contentType = contentType
            self.pluginOptions = pluginOptions
        }

        /// - Tag: StorageUploadFileRequestOptions.init
        public init(metadata: [String: String]? = nil,
                    contentType: String? = nil,
                    pluginOptions: Any? = nil
        ) {
            self.accessLevel = .guest
            self.targetIdentityId = nil
            self.metadata = metadata
            self.contentType = contentType
            self.pluginOptions = pluginOptions
        }
    }
}
