// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins

struct FlutterNetworkStatusEvent: FlutterHubEvent {
    var eventName: String
    var active: Bool

    init(payload: HubPayload) throws {
        guard let networkStatus = payload.data as? NetworkStatusEvent else {
                  throw FlutterDataStoreError.hubEventCast
              }
        self.eventName = shortEventName(eventName: payload.eventName)
        self.active = networkStatus.active
    }

    func toValueMap() -> [String: Any] {
        return [
            "eventName": eventName,
            "active": active
        ]
    }
}
