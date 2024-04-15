//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify
import AWSPluginsCore

extension DataStoreConfiguration {

    public static let defaultSyncInterval: TimeInterval = .hours(24)
    public static let defaultSyncMaxRecords: UInt = 10_000
    public static let defaultSyncPageSize: UInt = 1_000

    #if os(watchOS)
    /// Creates a custom configuration. The only required property is `conflictHandler`.
    ///
    /// - Parameters:
    ///   - errorHandler: a callback function called on unhandled errors
    ///   - conflictHandler: a callback called when a conflict could not be resolved by the service
    ///   - syncInterval: how often the sync engine will run (in seconds)
    ///   - syncMaxRecords: the number of records to sync per execution
    ///   - syncPageSize: the page size of each sync execution
    ///   - authModeStrategy: authorization strategy (.default | multiauth)
    ///   - disableSubscriptions: called before establishing subscriptions. Return true to disable subscriptions.
    /// - Returns: an instance of `DataStoreConfiguration` with the passed parameters.
    public static func custom(
        errorHandler: @escaping DataStoreErrorHandler = { error in
            Amplify.Logging.error(error: error)
        },
        conflictHandler: @escaping DataStoreConflictHandler = { _, resolve  in
            resolve(.applyRemote)
        },
        syncInterval: TimeInterval = DataStoreConfiguration.defaultSyncInterval,
        syncMaxRecords: UInt = DataStoreConfiguration.defaultSyncMaxRecords,
        syncPageSize: UInt = DataStoreConfiguration.defaultSyncPageSize,
        syncExpressions: [DataStoreSyncExpression] = [],
        authModeStrategy: AuthModeStrategyType = .default,
        disableSubscriptions: @escaping () -> Bool
    ) -> DataStoreConfiguration {
        return DataStoreConfiguration(errorHandler: errorHandler,
                                      conflictHandler: conflictHandler,
                                      syncInterval: syncInterval,
                                      syncMaxRecords: syncMaxRecords,
                                      syncPageSize: syncPageSize,
                                      syncExpressions: syncExpressions,
                                      authModeStrategy: authModeStrategy,
                                      disableSubscriptions: disableSubscriptions)
    }
    #else
    /// Creates a custom configuration. The only required property is `conflictHandler`.
    ///
    /// - Parameters:
    ///   - errorHandler: a callback function called on unhandled errors
    ///   - conflictHandler: a callback called when a conflict could not be resolved by the service
    ///   - syncInterval: how often the sync engine will run (in seconds)
    ///   - syncMaxRecords: the number of records to sync per execution
    ///   - syncPageSize: the page size of each sync execution
    ///   - authModeStrategy: authorization strategy (.default | multiauth)
    /// - Returns: an instance of `DataStoreConfiguration` with the passed parameters.
    public static func custom(
        errorHandler: @escaping DataStoreErrorHandler = { error in
            Amplify.Logging.error(error: error)
        },
        conflictHandler: @escaping DataStoreConflictHandler = { _, resolve  in
            resolve(.applyRemote)
        },
        syncInterval: TimeInterval = DataStoreConfiguration.defaultSyncInterval,
        syncMaxRecords: UInt = DataStoreConfiguration.defaultSyncMaxRecords,
        syncPageSize: UInt = DataStoreConfiguration.defaultSyncPageSize,
        syncExpressions: [DataStoreSyncExpression] = [],
        authModeStrategy: AuthModeStrategyType = .default
    ) -> DataStoreConfiguration {
        return DataStoreConfiguration(errorHandler: errorHandler,
                                      conflictHandler: conflictHandler,
                                      syncInterval: syncInterval,
                                      syncMaxRecords: syncMaxRecords,
                                      syncPageSize: syncPageSize,
                                      syncExpressions: syncExpressions,
                                      authModeStrategy: authModeStrategy)
    }
    #endif

    #if os(watchOS)
    /// Default configuration with subscriptions disabled for watchOS. DataStore uses subscriptions via websockets,
    /// which work on the watchOS simulator but not on the device. Running DataStore on watchOS with subscriptions
    /// enabled is only possible during special circumstances such as actively streaming audio.
    /// See https://github.com/aws-amplify/amplify-swift/pull/3368 for more details.
    public static var subscriptionsDisabled: DataStoreConfiguration {
        .custom(disableSubscriptions: { true })
    }
    #else
    /// The default configuration.
    public static var `default`: DataStoreConfiguration {
        .custom()
    }
    #endif

    #if os(watchOS)
    /// Internal method for testing
    static func testDefault(disableSubscriptions: @escaping () -> Bool = { false }) -> DataStoreConfiguration {
        .custom(disableSubscriptions: disableSubscriptions)
    }
    #else
    /// Internal method for testing
    static func testDefault() -> DataStoreConfiguration {
        .custom()
    }
    #endif
}
