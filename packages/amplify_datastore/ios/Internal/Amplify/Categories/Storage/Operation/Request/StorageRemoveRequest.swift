//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Represents a object removal request initiated by an implementation of the
/// [StorageCategoryPlugin](x-source-tag://StorageCategoryPlugin) protocol.
///
/// - Tag: StorageRemoveRequest
public struct StorageRemoveRequest: AmplifyOperationRequest {

    /// The unique identifier for the object in storage
    ///
    /// - Tag: StorageRemoveRequest.key
    @available(*, deprecated, message: "Use `path` in Storage API instead of `key`")
    public let key: String

    /// The unique path for the object in storage
    ///
    /// - Tag: StorageRemoveRequest.path
    public let path: (any StoragePath)?

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageRemoveRequest.options
    public let options: Options

    /// - Tag: StorageRemoveRequest.init
    @available(*, deprecated, message: "Use init(path:options)")
    public init(key: String, options: Options) {
        self.key = key
        self.options = options
        self.path = nil
    }

    /// - Tag: StorageRemoveRequest.init
    public init(path: any StoragePath, options: Options) {
        self.key = ""
        self.options = options
        self.path = path
    }
}

public extension StorageRemoveRequest {

    /// Options to adjust the behavior of this request, including plugin-options
    ///
    /// - Tag: StorageRemoveRequestOptions
    struct Options {

        /// Access level of the storage system. Defaults to `public`
        ///
        /// - Tag: StorageRemoveRequestOptions.accessLevel
        @available(*, deprecated, message: "Use `path` in Storage API instead of `Options`")
        public let accessLevel: StorageAccessLevel

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying storage system's functionality. See plugin documentation for expected
        /// key/values
        ///
        /// - Tag: StorageRemoveRequestOptions.pluginOptions
        public let pluginOptions: Any?

        /// - Tag: StorageRemoveRequestOptions.init
        public init(accessLevel: StorageAccessLevel = .guest,
                    pluginOptions: Any? = nil) {
            self.accessLevel = accessLevel
            self.pluginOptions = pluginOptions
        }
    }
}
