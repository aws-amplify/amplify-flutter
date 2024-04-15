//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// Custom implementation of Codable for AnyModel stores the instance as its JSON string representation and uses the
/// ModelRegistry utilities to deserialize it
public extension AnyModel {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        id = try values.decode(String.self, forKey: .id)
        modelName = try values.decode(String.self, forKey: .modelName)

        let instanceJSON = try values.decode(String.self, forKey: .instance)
        instance = try ModelRegistry.decode(modelName: modelName, from: instanceJSON)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(modelName, forKey: .modelName)

        try container.encode(instance.toJSON(), forKey: .instance)
    }
}
