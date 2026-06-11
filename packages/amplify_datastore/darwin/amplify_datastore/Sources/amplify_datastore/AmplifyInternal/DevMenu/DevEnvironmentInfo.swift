//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

// struct to decode/encode information about developer environment in json format
struct DevEnvironmentInfo: Codable {
    let nodejsVersion: String?
    let npmVersion: String?
    let amplifyCLIVersion: String?
    let podVersion: String?
    let xcodeVersion: String?
    let osVersion: String?

    enum CodingKeys: String, CodingKey {
        case nodejsVersion
        case npmVersion
        case amplifyCLIVersion = "amplifyCliVersion"
        case podVersion
        case xcodeVersion
        case osVersion
    }
}
#endif
