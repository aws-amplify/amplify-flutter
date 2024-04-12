//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Represents an **data** upload request initiated by an implementation of the
/// [StorageCategoryPlugin](x-source-tag://StorageCategoryPlugin) protocol.
///
/// - Tag: StorageUploadDataRequest
public struct StorageUploadDataRequest: AmplifyOperationRequest {

    /// The unique identifier for the object in storage
    ///
    /// - Tag: StorageUploadDataRequest.key
    public let key: String

    /// The data in memory to be uploaded
    ///
    /// - Tag: StorageUploadDataRequest.data
    public let data: Data

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageUploadDataRequest.options
    public let options: Options

    /// - Tag: StorageUploadDataRequest.init
    public init(key: String, data: Data, options: Options) {
        self.key = key
        self.data = data
        self.options = options
    }
}

public extension StorageUploadDataRequest {

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageUploadDataRequestOptions
    struct Options {

        /// Access level of the storage system. Defaults to `public`
        ///
        /// - Tag: StorageUploadDataRequestOptions.accessLevel
        public let accessLevel: StorageAccessLevel

        /// Target user to apply the action on.
        ///
        /// - Tag: StorageUploadDataRequestOptions.targetIdentityId
        public let targetIdentityId: String?

        /// Metadata for the object to store
        ///
        /// - Tag: StorageUploadDataRequestOptions.metadata
        public let metadata: [String: String]?

        /// The standard MIME type describing the format of the object to store
        ///
        /// - Tag: StorageUploadDataRequestOptions.contentType
        public let contentType: String?

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying storage system's functionality. See plugin documentation for expected
        /// key/values
        ///
        /// - Tag: StorageUploadDataRequestOptions.pluginOptions
        public let pluginOptions: Any?

        /// - Tag: StorageUploadDataRequestOptions.init
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
