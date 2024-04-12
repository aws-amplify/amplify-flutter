//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

public struct AnyModel: Model {
    public let id: String
    public let instance: Model

    /// Overrides the convenience property with the model name of the instance, so that AnyModel can still be decoded
    /// into the instances's original type.
    public let modelName: String

    public init(_ instance: Model) {
        self.id = instance.identifier
        self.instance = instance
        self.modelName = instance.modelName
    }

    /// Delegates the identifier resolution to the wrapped model istance.
    public func identifier(schema: ModelSchema) -> ModelIdentifierProtocol {
        instance.identifier(schema: schema)
    }

    /// Delegates the identifier resolution to the wrapped model istance.
    public var identifier: String {
        instance.identifier
    }
}

extension AnyModel {
    // MARK: - CodingKeys

    public enum CodingKeys: String, ModelKey {
        case id
        case instance
        case modelName
    }

    public static let keys = CodingKeys.self

    // MARK: - ModelSchema

    public static let schema = defineSchema { definition in
        let anyModel = AnyModel.keys

        definition.attributes(.isSystem,
                              .primaryKey(fields: [anyModel.id]))

        definition.fields(
            .field(anyModel.id, is: .required, ofType: .string),
            .field(anyModel.instance, is: .required, ofType: .string),
            .field(anyModel.modelName, is: .required, ofType: .string)
        )
    }
}
