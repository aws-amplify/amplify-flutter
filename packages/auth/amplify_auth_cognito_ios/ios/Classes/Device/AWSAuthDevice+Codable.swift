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

import Foundation
import Amplify
import AmplifyPlugins

/// Adds JSON coding capabilities to [AWSAuthDevice].
extension AWSAuthDevice: Codable {
    /// Attribute key for retrieving a device's name.
    static let deviceNameKey = "device_name"

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case attributes
        case createdDate
        case lastAuthenticatedDate
        case lastModifiedDate
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let id = try container.decode(String.self, forKey: .id)
        let name = try container.decodeIfPresent(String?.self, forKey: .name) ?? nil
        let attributes = try container.decodeIfPresent([String: String]?.self, forKey: .attributes) ?? nil
        let createdDate = try container.decodeIfPresent(Date?.self, forKey: .createdDate) ?? nil
        let lastAuthenticatedDate = try container.decodeIfPresent(Date?.self, forKey: .lastAuthenticatedDate) ?? nil
        let lastModifiedDate = try container.decodeIfPresent(Date?.self, forKey: .lastModifiedDate) ?? nil
        self.init(
            id: id,
            name: name ?? "",
            attributes: attributes,
            createdDate: createdDate,
            lastAuthenticatedDate: lastAuthenticatedDate,
            lastModifiedDate: lastModifiedDate)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        // Do not use `name` since it is set by Amplify iOS to empty string.
        try container.encode(attributes?[AWSAuthDevice.deviceNameKey], forKey: .name)
        try container.encode(attributes, forKey: .attributes)
        try container.encode(createdDate, forKey: .createdDate)
        try container.encode(lastAuthenticatedDate, forKey: .lastAuthenticatedDate)
        try container.encode(lastModifiedDate, forKey: .lastModifiedDate)
    }
}
