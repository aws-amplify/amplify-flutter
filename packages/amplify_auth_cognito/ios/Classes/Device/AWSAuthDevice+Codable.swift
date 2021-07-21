//
//  AWSAuthDevice+Codable.swift
//  amplify_auth_cognito
//
//  Created by Nys, Dillon on 7/15/21.
//

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
        let name = try container.decode(String.self, forKey: .name)
        let attributes = try container.decode([String: String]?.self, forKey: .attributes)
        let createdDate = try container.decode(Date?.self, forKey: .createdDate)
        let lastAuthenticatedDate = try container.decode(Date?.self, forKey: .lastAuthenticatedDate)
        let lastModifiedDate = try container.decode(Date?.self, forKey: .lastModifiedDate)
        self.init(
            id: id,
            name: name,
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
