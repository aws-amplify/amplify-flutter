//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Represents a request to download an individual object as `Data`, initiated by an implementation of the
/// [StorageCategoryPlugin](x-source-tag://StorageCategoryPlugin) protocol.
///
/// - Tag: StorageDownloadDataRequest
public struct StorageDownloadDataRequest: AmplifyOperationRequest {

    /// The unique identifier for the object in storage
    ///
    /// - Tag: StorageDownloadDataRequest.key
    public let key: String

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageDownloadDataRequest.options
    public let options: Options

    /// - Tag: StorageDownloadDataRequest.key
    public init(key: String, options: Options) {
        self.key = key
        self.options = options
    }
}

public extension StorageDownloadDataRequest {

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageDownloadDataRequestOptions
    struct Options {

        /// Access level of the storage system. Defaults to `public`
        ///
        /// - Tag: StorageDownloadDataRequestOptions.accessLevel
        public let accessLevel: StorageAccessLevel

        /// Target user to apply the action on.
        ///
        /// - Tag: StorageDownloadDataRequestOptions.targetIdentityId
        public let targetIdentityId: String?

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying storage system's functionality. See plugin documentation for expected
        /// key/values
        ///
        /// As an example, if using the AWSS3StoragePlugin, one may be want to add something like the
        /// following (please note that `useAccelerateEndpoint`
        /// [should first be setup](https://docs.amplify.aws/lib/storage/transfer-acceleration/q/platform/js/),
        /// otherwise, requests will fail):
        ///
        /// ```
        ///  let options = StorageDownloadDataRequest.Options(
        ///      pluginOptions: [
        ///          "useAccelerateEndpoint": true
        ///      ]
        ///  )
        /// ```
        ///
        /// # Reference
        /// * [Storage - Use Transfer Acceleration](https://docs.amplify.aws/lib/storage/transfer-acceleration/q/platform/js/)
        /// * [Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html)
        ///
        /// - Tag: StorageDownloadDataRequestOptions.pluginOptions
        public let pluginOptions: Any?

        ///
        /// - Tag: StorageDownloadDataRequestOptions.init
        public init(accessLevel: StorageAccessLevel = .guest,
                    targetIdentityId: String? = nil,
                    pluginOptions: Any? = nil) {
            self.accessLevel = accessLevel
            self.targetIdentityId = targetIdentityId
            self.pluginOptions = pluginOptions
        }
    }
}
