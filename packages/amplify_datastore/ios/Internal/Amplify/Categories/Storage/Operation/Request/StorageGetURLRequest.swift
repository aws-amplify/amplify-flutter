//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Represents a request initiated by an implementation of the
/// [StorageCategoryPlugin](x-source-tag://StorageCategoryPlugin) protocol used to generate
/// a pre-signed download URL for a given object key.
///
/// - Tag: StorageListRequest
public struct StorageGetURLRequest: AmplifyOperationRequest {

    /// The unique identifier for the object in storage
    ///
    /// - Tag: StorageListRequest.key
    public let key: String

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageListRequest.options
    public let options: Options

    /// - Tag: StorageListRequest.init
    public init(key: String, options: Options) {
        self.key = key
        self.options = options
    }
}

public extension StorageGetURLRequest {

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageListRequestOptions
    struct Options {
        /// The default amount of time before the URL expires is 18000 seconds, or 5 hours.
        ///
        /// - Tag: StorageListRequestOptions.defaultExpireInSeconds
        public static let defaultExpireInSeconds = 18_000

        /// Access level of the storage system. Defaults to `public`
        ///
        /// - Tag: StorageListRequestOptions.accessLevel
        public let accessLevel: StorageAccessLevel

        /// Target user to apply the action on.
        ///
        /// - Tag: StorageListRequestOptions.targetIdentityId
        public let targetIdentityId: String?

        /// Number of seconds before the URL expires. Defaults to
        /// [defaultExpireInSeconds](x-source-tag://StorageListRequestOptions.defaultExpireInSeconds)
        ///
        /// - Tag: StorageListRequestOptions.expires
        public let expires: Int

        /// Extra plugin specific options, only used in special circumstances when the existing options do
        /// not provide a way to utilize the underlying storage system's functionality. See plugin
        /// documentation or
        /// [AWSStorageGetURLOptions](x-source-tag://AWSStorageGetURLOptions) for
        /// expected key/values.
        ///
        /// - Tag: StorageListRequestOptions.pluginOptions
        public let pluginOptions: Any?

        /// - Tag: StorageListRequestOptions.init
        public init(accessLevel: StorageAccessLevel = .guest,
                    targetIdentityId: String? = nil,
                    expires: Int = Options.defaultExpireInSeconds,
                    pluginOptions: Any? = nil) {
            self.accessLevel = accessLevel
            self.targetIdentityId = targetIdentityId
            self.expires = expires
            self.pluginOptions = pluginOptions
        }
    }
}
