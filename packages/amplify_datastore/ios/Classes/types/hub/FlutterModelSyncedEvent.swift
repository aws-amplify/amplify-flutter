/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
