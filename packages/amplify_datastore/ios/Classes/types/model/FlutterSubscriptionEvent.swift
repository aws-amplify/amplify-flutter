// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
