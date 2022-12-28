// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins

struct FlutterOutboxStatusEvent: FlutterHubEvent {
    var eventName: String
    var isEmpty: Bool

    init(payload: HubPayload) throws {
        guard let outboxStatus = payload.data as? OutboxStatusEvent else {
                  throw FlutterDataStoreError.hubEventCast
              }
        self.eventName = shortEventName(eventName: payload.eventName)
        self.isEmpty = outboxStatus.isEmpty
    }

    func toValueMap() -> [String: Any] {
        return [
            "eventName": eventName,
            "isEmpty": isEmpty
        ]
    }
}
