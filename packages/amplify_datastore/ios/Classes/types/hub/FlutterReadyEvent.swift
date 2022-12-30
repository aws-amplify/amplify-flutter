// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins

struct FlutterReadyEvent: FlutterHubEvent {
    var eventName: String

    init(payload: HubPayload) throws {
        self.eventName = shortEventName(eventName: payload.eventName)
    }

    func toValueMap() -> [String: Any] {
        return [
            "eventName": eventName,
        ]
    }
}
