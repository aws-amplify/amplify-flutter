// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Flutter
import UIKit
import Combine

public struct FlutterHubElement {
    var model: [String: Any]
    var version: Int?
    var lastChangedAt: Int64?
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
            self.model = try decodedModel.toMap(
                modelSchemaRegistry: modelSchemaRegistry,
                customTypeSchemaRegistry: customTypeSchemaRegistry,
                modelName: modelName
            )
            self.version = hubElement.version
            self.deleted = self.model["_deleted"] as? Bool ?? false
            if let value = self.model["_lastChangedAt"] as? Double {
                self.lastChangedAt = Int64(value)
            } else if let value = self.model["_lastChangedAt"] as? String {
                self.lastChangedAt = Int64(value)
            } else if let value = self.model["_lastChangedAt"] as? Int {
                self.lastChangedAt = Int64(value)
            }
        } catch {
            throw FlutterDataStoreError.hubEventCast
        }
    }

    func toValueMap() -> [String: Any] {
        return [
            "model": model,
            "syncMetadata": [
                "_version": version as Any,
                "_lastChangedAt": lastChangedAt as Any,
                "_deleted": deleted as Any
            ]
        ]
    }
}
