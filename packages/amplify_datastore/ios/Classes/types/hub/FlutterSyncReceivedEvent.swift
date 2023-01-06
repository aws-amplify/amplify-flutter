// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins

struct FlutterSyncReceivedEvent: FlutterHubEvent {
    var eventName: String
    var modelName: String
    var element: FlutterHubElement

    init(
        event: MutationEvent,
        eventName: String,
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry
    ) throws {
        self.eventName = shortEventName(eventName: eventName)
        self.modelName = event.modelName
        do {
            self.element = try FlutterHubElement(
                hubElement: event, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemaRegistry: customTypeSchemaRegistry, modelName: event.modelName)
        } catch {
            throw FlutterDataStoreError.acquireSchemaForHub
        }
    }

    func toValueMap() -> [String: Any] {
        return [
            "eventName": eventName,
            "modelName": modelName,
            "element": element.toValueMap()
        ]
    }
}
