//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

/// Convenience error types
extension DataStoreError {

    static func nilAPIHandle(file: StaticString = #file,
                             function: StaticString = #function,
                             line: UInt = #line) -> DataStoreError {
        .internalOperation(
            "The reference to Amplify API is unexpectedly nil in an internal operation",
            """
            \(AmplifyErrorMessages.reportBugToAWS()) \
            The reference to API has been released while the DataStore was attempting to access the remote API. \
            \(file), \(function), \(line)
            """
        )
    }

    static func nilReconciliationQueue(file: StaticString = #file,
                                       function: StaticString = #function,
                                       line: UInt = #line) -> DataStoreError {
        .internalOperation(
            "The reference to IncomingEventReconciliationQueue is unexpectedly nil in an internal operation",
            """
            \(AmplifyErrorMessages.reportBugToAWS()) \
            The reference to IncomingEventReconciliationQueue has been released while the DataStore was attempting to \
            enqueue a remote subscription or mutation event. \
            \(file), \(function), \(line)
            """
        )
    }

    static func nilStorageAdapter(file: StaticString = #file,
                                  function: StaticString = #function,
                                  line: UInt = #line) -> DataStoreError {
        .internalOperation(
            "storageAdapter is unexpectedly nil in an internal operation",
            """
            \(AmplifyErrorMessages.reportBugToAWS()) \
            The reference to storageAdapter has been released while the DataStore was attempting to access the local \
            database. \
            \(file), \(function), \(line)
            """
        )
    }

}
