//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public extension HubPayload.EventName {
    struct DataStore { }
}

public extension HubPayload.EventName.DataStore {
    /// Dispatched when DataStore begins syncing to the remote API via the API category
    static let syncStarted = "DataStore.syncStarted"

    /// Dispatched when DataStore receives a sync response from the remote API via the API category. This event does not
    /// define the source of the event--it could be in response to either a subscription or a locally-sourced mutation.
    /// Regardless of source, incoming sync updates always have the possibility of updating local data, so listeners
    /// who are interested in model updates must be notified in any case of a sync received. The HubPayload will be a
    /// `MutationEvent` instance containing the newly mutated data from the remote API.
    static let syncReceived = "DataStore.syncReceived"

    /// Dispatched when DataStore receives a sync response from the remote API via the API category. The Hub Payload
    /// will be a `MutationEvent` instance that caused the conditional save failed.
    static let conditionalSaveFailed = "DataStore.conditionalSaveFailed"

    /// Dispatched when:
    /// - the DataStore starts
    /// - each time a local mutation is enqueued into the outbox
    /// - each time a local mutation is finished processing
    /// HubPayload `OutboxStatusEvent` contains a boolean value `isEmpty` to notify if there are mutations in the outbox
    static let outboxStatus = "DataStore.outboxStatus"

    /// Dispatched when DataStore has finished establishing its subscriptions to all syncable models
    static let subscriptionsEstablished = "DataStore.subscriptionEstablished"

    /// Dispatched when DataStore is about to start sync queries
    /// HubPayload `syncQueriesStartedEvent` contains an array of each model's `name`
    static let syncQueriesStarted = "DataStore.syncQueriesStarted"

    /// Dispatched once for each model after the model instances have been synced from the cloud.
    /// HubPayload `modelSyncedEvent` contains: name of model, sync type (full/delta), count of instances' mutation type
    static let modelSynced = "DataStore.modelSynced"

    /// Dispatched when all models have been synced
    static let syncQueriesReady = "DataStore.syncQueriesReady"

    /// Dispatched when:
    /// - local store has loaded outgoing mutations from local storage
    /// - if online, all data has finished syncing with cloud
    /// When this event is emitted, DataStore is ready to sync changes between the local device and the cloud
    static let ready = "DataStore.ready"

    /// Dispatched when DataStore starts and everytime network status changes
    /// HubPayload `NetworkStatusEvent` contains a boolean value `active` to notify network status
    static let networkStatus = "DataStore.networkStatus"

    /// Dispatched when a local mutation is enqueued into the outgoing mutation queue `outbox`
    /// HubPayload `outboxMutationEvent` contains the name and instance of the model
    static let outboxMutationEnqueued = "DataStore.outboxMutationEnqueued"

    /// Dispatched when a mutation from outgoing mutation queue `outbox` is sent to backend and updated locally.
    /// HubPayload `outboxMutationEvent` contains the name and instance of the model
    static let outboxMutationProcessed = "DataStore.outboxMutationProcessed"
}
