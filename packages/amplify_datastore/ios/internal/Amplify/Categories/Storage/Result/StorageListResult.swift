//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Represents the output of a call to
/// [StorageCategoryBehavior.list](x-source-tag://StorageCategoryBehavior.list)
///
/// - Tag: StorageListResult
public struct StorageListResult {

    /// This is meant to be called by plugins implementing
    /// [StorageCategoryBehavior.list](x-source-tag://StorageCategoryBehavior.list).
    ///
    /// - Tag: StorageListResult.init
    public init(items: [Item], nextToken: String? = nil) {
        self.items = items
        self.nextToken = nextToken
    }

    /// Array of Items in the Result
    ///
    /// - Tag: StorageListResult.items
    public var items: [Item]

    /// Opaque string indicating the page offset at which to resume a listing. This value is usually copied to
    /// [StorageListRequestOptions.nextToken](x-source-tag://StorageListRequestOptions.nextToken).
    ///
    /// - SeeAlso:
    /// [StorageListRequestOptions.nextToken](x-source-tag://StorageListRequestOptions.nextToken)
    ///
    /// - Tag: StorageListResult.nextToken
    public let nextToken: String?
}

extension StorageListResult {

    /// - Tag: StorageListResultItem
    public struct Item {

        /// The unique identifier of the object in storage.
        ///
        /// - Tag: StorageListResultItem.key
        public let key: String

        /// Size in bytes of the object
        ///
        /// - Tag: StorageListResultItem.size
        public let size: Int?

        /// The date the Object was Last Modified
        ///
        /// - Tag: StorageListResultItem.lastModified
        public let lastModified: Date?

        /// The entity tag is an MD5 hash of the object.
        /// ETag reflects only changes to the contents of an object, not its metadata.
        ///
        /// - Tag: StorageListResultItem.eTag
        public let eTag: String?

        /// Additional results specific to the plugin.
        ///
        /// - Tag: StorageListResultItem.pluginResults
        public let pluginResults: Any?

        /// This is meant to be called by plugins implementing
        /// [StorageCategoryBehavior.list](x-source-tag://StorageCategoryBehavior.list).
        ///
        /// - Tag: StorageListResultItem.init
        public init(key: String,
                    size: Int? = nil,
                    eTag: String? = nil,
                    lastModified: Date? = nil,
                    pluginResults: Any? = nil) {
            self.key = key
            self.size = size
            self.eTag = eTag
            self.lastModified = lastModified
            self.pluginResults  = pluginResults
        }
    }
}
