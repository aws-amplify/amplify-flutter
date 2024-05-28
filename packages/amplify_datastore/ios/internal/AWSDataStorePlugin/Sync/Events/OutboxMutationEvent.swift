//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore

/// Used as HubPayload for `OutboxMutationEnqueued` and `OutboxMutationProcessed`
public struct OutboxMutationEvent {
    public let modelName: String
    public let element: OutboxMutationEventElement

    public init(modelName: String, element: OutboxMutationEventElement) {
        self.modelName = modelName
        self.element = element
    }
    public static func fromModelWithMetadata(modelName: String,
                                             model: Model,
                                             mutationSync: MutationSync<AnyModel>) -> OutboxMutationEvent {
        let element = OutboxMutationEventElement(model: model,
                                                 version: mutationSync.syncMetadata.version,
                                                 lastChangedAt: mutationSync.syncMetadata.lastChangedAt,
                                                 deleted: mutationSync.syncMetadata.deleted)
        return OutboxMutationEvent(modelName: modelName, element: element)
    }

    public static func fromModelWithoutMetadata(modelName: String,
                                                model: Model) -> OutboxMutationEvent {
        let element = OutboxMutationEventElement(model: model)
        return OutboxMutationEvent(modelName: modelName, element: element)
    }

    public struct OutboxMutationEventElement {
        public let model: Model
        public var version: Int?
        public var lastChangedAt: Int64?
        public var deleted: Bool?
    }
}
