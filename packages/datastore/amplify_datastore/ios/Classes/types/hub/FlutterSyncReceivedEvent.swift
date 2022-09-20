/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

struct FlutterSyncReceivedEvent: FlutterHubEvent {
    var eventName: String
    var modelName: String
    var element:  FlutterHubElement

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

    func toValueMap() -> Dictionary<String, Any> {
        return [
            "eventName": self.eventName,
            "modelName": self.modelName,
            "element": self.element.toValueMap()
        ]
    }
}
