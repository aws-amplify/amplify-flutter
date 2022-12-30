// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins

struct FlutterSyncQueriesStartedEvent: FlutterHubEvent {
    var eventName: String
    var models: [String]

    init(payload: HubPayload) throws {
        guard let syncQueriesStarted = payload.data as? SyncQueriesStartedEvent else {
                  throw FlutterDataStoreError.hubEventCast
              }
        self.eventName = shortEventName(eventName: payload.eventName)
        self.models = syncQueriesStarted.models
    }

    func toValueMap() -> [String: Any] {
        return [
            "eventName": eventName,
            "models": models.description
        ]
    }
}
