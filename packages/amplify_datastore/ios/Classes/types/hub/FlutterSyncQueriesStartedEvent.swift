/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    
    func toValueMap() -> Dictionary<String, Any> {
        return [
            "eventName": self.eventName,
            "models": self.models.description
        ]
    }
}
