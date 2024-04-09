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

    /// The unique identifier for the object in storage
    /// - Tag: StorageUploadFileRequest.key
    public let key: String

    /// The file to be uploaded
    /// - Tag: StorageUploadFileRequest.local
    public let local: URL

    /// Options to adjust the behavior of this request, including plugin-options
    /// - Tag: StorageUploadFileRequest.options
    public let options: Options

    /// - Tag: StorageUploadFileRequest.init
    public init(key: String, local: URL, options: Options) {
        self.key = key
        self.local = local
        self.options = options
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
        public let accessLevel: StorageAccessLevel

        /// Target user to apply the action on.
        ///
        /// - Tag: StorageUploadFileRequestOptions.targetIdentityId
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
        public init(accessLevel: StorageAccessLevel = .guest,
                    targetIdentityId: String? = nil,
                    metadata: [String: String]? = nil,
                    contentType: String? = nil,
                    pluginOptions: Any? = nil) {
            self.accessLevel = accessLevel
            self.targetIdentityId = targetIdentityId
            self.metadata = metadata
            self.contentType = contentType
            self.pluginOptions = pluginOptions
        }
    }
}
