//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import AWSPluginsCore

/// Error Handler function typealias
public typealias DataStoreErrorHandler = (AmplifyError) -> Void

/// Holds a reference to both the local `Model` and the remote one during a conflict
/// resolution. Implementations of the `DataStoreConflictHandler` use this to decide
/// what the outcome of a conflict should be.
public struct DataStoreConflictData {
    public let local: Model
    public let remote: Model
}

/// The `DataStoreConflictHandler` is an asynchronous callback which allows consumers to decide how to resolve conflicts
/// between the frontend and backend. This can be configured on the `conflictHandler` of the `DataStoreConfiguration`
/// by implementing the body of the closure, processing `DataStoreConflictData` and resolving the conflict by calling
/// `DataStoreConflictHandlerResolver`
public typealias DataStoreConflictHandler = (DataStoreConflictData, @escaping DataStoreConflictHandlerResolver) -> Void

/// Callback for the `DataStoreConflictHandler`.
public typealias DataStoreConflictHandlerResolver = (DataStoreConflictHandlerResult) -> Void

/// The conflict resolution result enum.
public enum DataStoreConflictHandlerResult {

    /// Discard the local changes in favor of the remote ones. Semantically the same as `DISCARD` on Amplify-JS
    case applyRemote

    /// Keep the local changes. (semantic shortcut to `retry(local)`).
    case retryLocal

    /// Return a new `Model` instance that should used instead of the local and remote changes.
    case retry(Model)
}

/// The `DataStore` plugin configuration object.
public struct DataStoreConfiguration {

    /// A callback function called on unhandled errors
    public let errorHandler: DataStoreErrorHandler

    /// A callback called when a conflict could not be resolved by the service
    public let conflictHandler: DataStoreConflictHandler

    /// The maximum interval (in seconds) the system will continue to perform delta queries.
    /// After this interval expires, the system performs a base query to retrieve all data.
    /// This defaults to 24 hours, and developers should rarely need to customize this.
    /// More information can be found here:
    /// https://docs.amplify.aws/lib/datastore/how-it-works/q/platform/ios#sync-data-to-cloud
    public let syncInterval: TimeInterval

    /// The number of records to sync per execution
    public let syncMaxRecords: UInt

    /// The page size of each sync execution
    public let syncPageSize: UInt

    /// Selective sync expressions
    public let syncExpressions: [DataStoreSyncExpression]

    /// Authorization mode strategy
    public var authModeStrategyType: AuthModeStrategyType

    public let disableSubscriptions: () -> Bool

    #if os(watchOS)
    init(errorHandler: @escaping DataStoreErrorHandler,
         conflictHandler: @escaping DataStoreConflictHandler,
         syncInterval: TimeInterval,
         syncMaxRecords: UInt,
         syncPageSize: UInt,
         syncExpressions: [DataStoreSyncExpression],
         authModeStrategy: AuthModeStrategyType = .default,
         disableSubscriptions: @escaping () -> Bool) {
        self.errorHandler = errorHandler
        self.conflictHandler = conflictHandler
        self.syncInterval = syncInterval
        self.syncMaxRecords = syncMaxRecords
        self.syncPageSize = syncPageSize
        self.syncExpressions = syncExpressions
        self.authModeStrategyType = authModeStrategy
        self.disableSubscriptions = disableSubscriptions
    }
    #else
    init(errorHandler: @escaping DataStoreErrorHandler,
         conflictHandler: @escaping DataStoreConflictHandler,
         syncInterval: TimeInterval,
         syncMaxRecords: UInt,
         syncPageSize: UInt,
         syncExpressions: [DataStoreSyncExpression],
         authModeStrategy: AuthModeStrategyType = .default) {
        self.errorHandler = errorHandler
        self.conflictHandler = conflictHandler
        self.syncInterval = syncInterval
        self.syncMaxRecords = syncMaxRecords
        self.syncPageSize = syncPageSize
        self.syncExpressions = syncExpressions
        self.authModeStrategyType = authModeStrategy
        self.disableSubscriptions = { false }
    }
    #endif
}
