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
import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSCore
import Combine

public struct FlutterHubElement {
    
    var model: [String: Any]
    var version: Int?
    var lastChangedAt: Int?
    var deleted: Bool
    
    init(
        hubElement: OutboxMutationEvent.OutboxMutationEventElement,
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry,
        modelName: String
    ) throws {
        guard let model = hubElement.model as? FlutterSerializedModel else {
            throw FlutterDataStoreError.hubEventCast
        }
        self.model = try model.toMap(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemaRegistry,
            modelName: modelName
        )
        self.version = hubElement.version
        self.lastChangedAt = hubElement.lastChangedAt
        self.deleted = hubElement.deleted ?? false
    }

    init(
        hubElement: MutationEvent,
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry,
        modelName: String
    ) throws {
        do {
            guard let decodedModel = (try ModelRegistry.decode(modelName: modelName, from: hubElement.json) as? FlutterSerializedModel) else {
                throw FlutterDataStoreError.hubEventCast
            }
            model = try decodedModel.toMap(
                modelSchemaRegistry: modelSchemaRegistry,
                customTypeSchemaRegistry: customTypeSchemaRegistry,
                modelName: modelName
            )
            self.version = hubElement.version
            let serializedData = model["serializedData"] as? [String: Any] ?? [:]
            self.deleted = serializedData["_deleted"] as? Bool ?? false
            if let value = serializedData["_lastChangedAt"] as? Double {
                self.lastChangedAt = Int(value)
            } else if let value = serializedData["_lastChangedAt"] as? String {
                self.lastChangedAt = Int(value)
            } else if let value = serializedData["_lastChangedAt"] as? Int {
                self.lastChangedAt = value
            }
        }
        catch {
            throw FlutterDataStoreError.hubEventCast
        }
    }
    
    func toValueMap() -> Dictionary<String, Any> {
        return [
            "model": self.model,
            "syncMetadata": [
                "_version": self.version as Any,
                "_lastChangedAt": self.lastChangedAt as Any,
                "_deleted": self.deleted as Any
            ]
        ]
    }
}

