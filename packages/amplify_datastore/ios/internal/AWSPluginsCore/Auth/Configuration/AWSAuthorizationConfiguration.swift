//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

public enum AWSAuthorizationConfiguration {
    case none
    case apiKey(APIKeyConfiguration)
    case awsIAM(AWSIAMConfiguration)
    case openIDConnect(OIDCConfiguration)
    case amazonCognitoUserPools(CognitoUserPoolsConfiguration)
    case function(AWSLambdaAuthConfiguration)
}

// MARK: - AWSAuthorizationConfiguration factory
extension AWSAuthorizationConfiguration {
    private static func awsIAMAuthorizationConfiguration(region: String?)
        throws -> AWSAuthorizationConfiguration {
            guard let region = region else {
                throw PluginError.pluginConfigurationError("Region is not set for IAM",
                                                           "Set the region")
            }
            return .awsIAM(AWSIAMConfiguration(region: region))
    }

    private static func apiKeyAuthorizationConfiguration(apiKey: String?)
        throws -> AWSAuthorizationConfiguration {

            guard let apiKey = apiKey else {
                throw PluginError.pluginConfigurationError(
                    "Could not get `ApiKey` from plugin configuration",
                    """
                    The specified configuration does not have a string with the key `apiKey`. Review the \
                    configuration and ensure it contains the expected values.
                    """
                )
            }

            let config = APIKeyConfiguration(apiKey: apiKey)
            return .apiKey(config)
    }

    /// Instantiates a new configuration conforming to AWSAuthorizationConfiguration
    /// - Parameters:
    ///   - authType: authentication type
    ///   - region: AWS region
    ///   - apiKey: API key used when `authType` is `apiKey`
    /// - Throws: if the region is not valid and `authType` is `iam`
    ///           or if `apiKey` is not valid and `authType` is `apiKey`
    /// - Returns: an `AWSAuthorizationConfiguration` according to the provided `authType`
    public static func makeConfiguration(authType: AWSAuthorizationType,
                                         region: String?,
                                         apiKey: String?) throws -> AWSAuthorizationConfiguration {
        switch authType {
        case .none:
            return .none
        case .apiKey:
            return try apiKeyAuthorizationConfiguration(apiKey: apiKey)
        case .awsIAM:
            return try awsIAMAuthorizationConfiguration(region: region)
        case .openIDConnect:
            return .openIDConnect(OIDCConfiguration())
        case .amazonCognitoUserPools:
            return .amazonCognitoUserPools(CognitoUserPoolsConfiguration())
        case .function:
            return .function(AWSLambdaAuthConfiguration())
        }
    }
}
