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
    /// - Tag: StorageGetURLRequest.key
    @available(*, deprecated, message: "Use `path` in Storage API instead of `key`")
    public let key: String

    /// The unique path for the object in storage
    ///
    /// - Tag: StorageGetURLRequest.path
    public let path: (any StoragePath)?

    /// Options to adjust the behaviour of this request, including plugin-options
    ///
    /// - Tag: StorageGetURLRequest.options
    public let options: Options

    /// - Tag: StorageGetURLRequest.init
    @available(*, deprecated, message: "Use init(path:options)")
    public init(key: String, options: Options) {
        self.key = key
        self.options = options
        self.path = nil
    }

    /// - Tag: StorageGetURLRequest.init
    public init(path: any StoragePath, options: Options) {
        self.key = ""
        self.options = options
        self.path = path
    }
}

public extension StorageGetURLRequest {

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageGetURLRequest.Options
    struct Options {
        /// The default amount of time before the URL expires is 18000 seconds, or 5 hours.
        ///
        /// - Tag: StorageGetURLRequest.Options.defaultExpireInSeconds
        public static let defaultExpireInSeconds = 18_000

        /// Access level of the storage system. Defaults to `public`
        ///
        /// - Tag: StorageGetURLRequest.Options.accessLevel
        @available(*, deprecated, message: "Use `path` in Storage API instead of `Options`")
        public let accessLevel: StorageAccessLevel

        /// Target user to apply the action on.
        ///
        /// - Tag: StorageGetURLRequest.Options.targetIdentityId
        @available(*, deprecated, message: "Use `path` in Storage API instead of `Options`")
        public let targetIdentityId: String?

        /// Number of seconds before the URL expires. Defaults to
        /// [defaultExpireInSeconds](x-source-tag://StorageListRequestOptions.defaultExpireInSeconds)
        ///
        /// - Tag: StorageGetURLRequest.Options.expires
        public let expires: Int

        /// Extra plugin specific options, only used in special circumstances when the existing options do
        /// not provide a way to utilize the underlying storage system's functionality. See plugin
        /// documentation or
        /// [AWSStorageGetURLOptions](x-source-tag://AWSStorageGetURLOptions) for
        /// expected key/values.
        ///
        /// - Tag: StorageGetURLRequest.Options.pluginOptions
        public let pluginOptions: Any?

        /// - Tag: StorageGetURLRequest.Options.init
        @available(*, deprecated, message: "Use init(expires:pluginOptions)")
        public init(accessLevel: StorageAccessLevel = .guest,
                    targetIdentityId: String? = nil,
                    expires: Int = Options.defaultExpireInSeconds,
                    pluginOptions: Any? = nil) {
            self.accessLevel = accessLevel
            self.targetIdentityId = targetIdentityId
            self.expires = expires
            self.pluginOptions = pluginOptions
        }

        /// - Tag: StorageGetURLRequest.Options.init
        public init(expires: Int = Options.defaultExpireInSeconds,
                    pluginOptions: Any? = nil) {
            self.expires = expires
            self.pluginOptions = pluginOptions
            self.accessLevel = .guest
            self.targetIdentityId = nil
        }
    }
}
