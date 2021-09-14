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

struct FlutterObserveQueryEvent {
    let querySnapshot: DataStoreQuerySnapshot<FlutterSerializedModel>
    public init(querySnapshot: DataStoreQuerySnapshot<FlutterSerializedModel>) {
        self.querySnapshot = querySnapshot
    }
    
    private func subscriptionEventFromMutationEvent(mutationEvent: MutationEvent) throws -> FlutterSubscriptionEvent {
        let serializedMutationEvent = try mutationEvent.decodeModel(as: FlutterSerializedModel.self)
        let eventType = EventType(rawValue: mutationEvent.mutationType)
        let flutterSubscriptionEvent = FlutterSubscriptionEvent.init(
            item: serializedMutationEvent,
            eventType: eventType!
        )
        return flutterSubscriptionEvent
    }

    public func toJSON(flutterModelRegistration: FlutterModels, modelName: String) throws -> [String: Any] {
        return [
            "items": try self.querySnapshot.items.map {
                try $0.toMap(flutterModelRegistration: flutterModelRegistration, modelName: modelName)
            },
            "events": try self.querySnapshot.itemsChanged.map {
                try subscriptionEventFromMutationEvent(mutationEvent: $0).toJSON(
                    flutterModelRegistration: flutterModelRegistration,
                    modelName: modelName
                )
            },
            "isSynced": self.querySnapshot.isSynced,
        ]
    }
}

