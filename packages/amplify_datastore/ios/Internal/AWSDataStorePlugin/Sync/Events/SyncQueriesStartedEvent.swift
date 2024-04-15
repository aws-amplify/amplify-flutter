//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Used as HubPayload for the `SyncQueriesStarted`
public struct SyncQueriesStartedEvent {
    /// A list of all model names for which DataStore has started establishing subscriptions
    public let models: [String]

    public init(models: [String]) {
        self.models = models
    }
}
