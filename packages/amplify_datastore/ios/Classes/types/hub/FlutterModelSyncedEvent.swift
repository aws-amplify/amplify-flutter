// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins

struct FlutterModelSyncedEvent: FlutterHubEvent {
    var eventName: String
    var modelName: String
    var isFullSync: Bool
    var isDeltaSync: Bool
    var added: Int
    var updated: Int
    var deleted: Int

    init(payload: HubPayload) throws {
        guard let modelSynced = payload.data as? ModelSyncedEvent else {
                  throw FlutterDataStoreError.hubEventCast
              }
        self.eventName = shortEventName(eventName: payload.eventName)
        self.modelName = modelSynced.modelName
        self.isFullSync = modelSynced.isFullSync
        self.isDeltaSync = modelSynced.isDeltaSync
        self.added = modelSynced.added
        self.updated = modelSynced.updated
        self.deleted = modelSynced.deleted
    }

    func toValueMap() -> [String: Any] {
        return [
            "eventName": eventName,
            "model": modelName,
            "isFullSync": isFullSync,
            "isDeltaSync": isDeltaSync,
            "added": added,
            "updated": updated,
            "deleted": deleted
        ]
    }
}
