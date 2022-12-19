// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins
import AWSCore
import Combine

struct FlutterOutboxMutationProcessedEvent: FlutterHubEvent {
    var eventName: String
    var modelName: String
    var element: FlutterHubElement

    init(
        outboxMutationProcessed: OutboxMutationEvent,
        eventName: String,
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry
    ) throws {
        self.eventName = shortEventName(eventName: eventName)
        self.modelName = outboxMutationProcessed.modelName
        do {
            self.element = try FlutterHubElement(
                hubElement: outboxMutationProcessed.element,
                modelSchemaRegistry: modelSchemaRegistry,
                customTypeSchemaRegistry: customTypeSchemaRegistry,
                modelName: modelName
            )
        } catch {
            throw FlutterDataStoreError.acquireSchemaForHub
        }
    }

    func toValueMap() -> [String: Any] {
        return [
            "eventName": eventName,
            "modelName": modelName,
            "element": element.toValueMap() as Any
        ]
    }
}
