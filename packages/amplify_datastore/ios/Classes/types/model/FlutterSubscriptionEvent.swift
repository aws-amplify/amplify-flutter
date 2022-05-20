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

import Flutter
import Foundation
import Amplify

struct FlutterSubscriptionEvent {
    let item: FlutterSerializedModel
    let eventType: EventType
    public init(item: FlutterSerializedModel, eventType: EventType) {
        self.item = item
        self.eventType = eventType
    }

    public func toJSON(modelSchemaRegistry: FlutterSchemaRegistry, customTypeSchemaRegistry: FlutterSchemaRegistry, modelName: String) throws -> [String: Any] {
        return [
            "item": try item.toMap(
                modelSchemaRegistry: modelSchemaRegistry,
                customTypeSchemaRegistry: customTypeSchemaRegistry,
                modelName: modelName
            ),
            "eventType": eventType.rawValue
        ]
    }
}

enum EventType: String {
    case create
    case update
    case delete
}
