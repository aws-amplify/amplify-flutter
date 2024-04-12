//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Represents a object listing request initiated by an implementation of the
/// [StorageCategoryPlugin](x-source-tag://StorageCategoryPlugin) protocol.
///
/// - Tag: StorageListRequest
public struct StorageListRequest: AmplifyOperationRequest {

    /// Options to adjust the behavior of this request, including plugin-options
    /// - Tag: StorageListRequest
    public let options: Options

    /// - Tag: StorageListRequest.init
    public init(options: Options) {
        self.options = options
    }
}

public extension StorageListRequest {

    /// Options available to callers of
    /// [StorageCategoryBehavior.list](x-source-tag://StorageCategoryBehavior.list).
    ///
    /// Tag: StorageListRequestOptions
    struct Options {

        /// Access level of the storage system. Defaults to `public`
        ///
        /// - Tag: StorageListRequestOptions.accessLevel
        public let accessLevel: StorageAccessLevel

        /// Target user to apply the action on
        ///
        /// - Tag: StorageListRequestOptions.targetIdentityId
        public let targetIdentityId: String?

        /// Path to the keys
        ///
        /// - Tag: StorageListRequestOptions.path
        public let path: String?

        /// Number between 1 and 1,000 that indicates the limit of how many entries to fetch when
        /// retreiving file lists from the server.
        ///
        /// NOTE: Plugins may decide to throw or perform normalization when encoutering vaues outside
        ///       the specified range.
        ///
        /// - SeeAlso:
        /// [StorageListRequestOptions.nextToken](x-source-tag://StorageListRequestOptions.nextToken)
        /// [StorageListResult.nextToken](x-source-tag://StorageListResult.nextToken)
        ///
        /// - Tag: StorageListRequestOptions.pageSize
        public let pageSize: UInt

        /// Opaque string indicating the page offset at which to resume a listing. This is usually a copy of
        /// the value from [StorageListResult.nextToken](x-source-tag://StorageListResult.nextToken).
        ///
        /// - SeeAlso:
        /// [StorageListRequestOptions.pageSize](x-source-tag://StorageListRequestOptions.pageSize)
        /// [StorageListResult.nextToken](x-source-tag://StorageListResult.nextToken)
        ///
        /// - Tag: StorageListRequestOptions.nextToken
        public let nextToken: String?

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying storage system's functionality. See plugin documentation for expected
        /// key/values
        ///
        /// - Tag: StorageListRequestOptions.pluginOptions
        public let pluginOptions: Any?

        /// - Tag: StorageListRequestOptions.init
        public init(accessLevel: StorageAccessLevel = .guest,
                    targetIdentityId: String? = nil,
                    path: String? = nil,
                    pageSize: UInt = 1000,
                    nextToken: String? = nil,
                    pluginOptions: Any? = nil) {
            self.accessLevel = accessLevel
            self.targetIdentityId = targetIdentityId
            self.path = path
            self.pageSize = pageSize
            self.nextToken = nextToken
            self.pluginOptions = pluginOptions
        }
    }
}
