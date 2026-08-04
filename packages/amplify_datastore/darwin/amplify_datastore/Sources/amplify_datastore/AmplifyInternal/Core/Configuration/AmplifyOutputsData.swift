//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

// swiftlint:disable nesting
// `nesting` is disabled to best represent `AmplifyOutputsData` as close as possible
// to the JSON schema which is derived from. The JSON schema is hosted at
// https://github.com/aws-amplify/amplify-backend/blob/main/packages/client-config/src/client-config-schema/schema_v1.json

/// Represents Amplify's Gen2 configuration for all categories intended to be used in an application.
///
/// See: [Amplify.configure](x-source-tag://Amplify.configure)
///
/// - Tag: AmplifyOutputs
///
@_spi(InternalAmplifyConfiguration)
public struct AmplifyOutputsData: Codable {
    public let version: String
    public let analytics: Analytics?
    public let auth: Auth?
    public let data: DataCategory?
    public let geo: Geo?
    public let notifications: Notifications?
    public let storage: Storage?
    public let custom: CustomOutput?

    @_spi(InternalAmplifyConfiguration)
    public struct Analytics: Codable {
        public let amazonPinpoint: AmazonPinpoint?

        public struct AmazonPinpoint: Codable {
            public let awsRegion: AWSRegion
            public let appId: String
        }
    }

    @_spi(InternalAmplifyConfiguration)
    public struct Auth: Codable {
        public let awsRegion: AWSRegion
        public let userPoolId: String
        public let userPoolClientId: String
        public let identityPoolId: String?
        public let passwordPolicy: PasswordPolicy?
        public let oauth: OAuth?
        public let standardRequiredAttributes: [AmazonCognitoStandardAttributes]?
        public let usernameAttributes: [UsernameAttributes]?
        public let userVerificationTypes: [UserVerificationType]?
        public let unauthenticatedIdentitiesEnabled: Bool?
        public let mfaConfiguration: String?
        public let mfaMethods: [String]?

        @_spi(InternalAmplifyConfiguration)
        public struct PasswordPolicy: Codable {
            public let minLength: UInt
            public let requireNumbers: Bool
            public let requireLowercase: Bool
            public let requireUppercase: Bool
            public let requireSymbols: Bool
        }

        @_spi(InternalAmplifyConfiguration)
        public struct OAuth: Codable {
            public let identityProviders: [String]
            public let domain: String
            public let scopes: [String]
            public let redirectSignInUri: [String]
            public let redirectSignOutUri: [String]
            public let responseType: String
        }

        @_spi(InternalAmplifyConfiguration)
        public enum UsernameAttributes: String, Codable {
            case email = "email"
            case phoneNumber = "phone_number"
        }

        @_spi(InternalAmplifyConfiguration)
        public enum UserVerificationType: String, Codable {
            case email = "email"
            case phoneNumber = "phone_number"
        }

        init(awsRegion: AWSRegion,
             userPoolId: String,
             userPoolClientId: String,
             identityPoolId: String? = nil,
             passwordPolicy: PasswordPolicy? = nil,
             oauth: OAuth? = nil,
             standardRequiredAttributes: [AmazonCognitoStandardAttributes]? = nil,
             usernameAttributes: [UsernameAttributes]? = nil,
             userVerificationTypes: [UserVerificationType]? = nil,
             unauthenticatedIdentitiesEnabled: Bool? = nil,
             mfaConfiguration: String? = nil,
             mfaMethods: [String]? = nil) {
            self.awsRegion = awsRegion
            self.userPoolId = userPoolId
            self.userPoolClientId = userPoolClientId
            self.identityPoolId = identityPoolId
            self.passwordPolicy = passwordPolicy
            self.oauth = oauth
            self.standardRequiredAttributes = standardRequiredAttributes
            self.usernameAttributes = usernameAttributes
            self.userVerificationTypes = userVerificationTypes
            self.unauthenticatedIdentitiesEnabled = unauthenticatedIdentitiesEnabled
            self.mfaConfiguration = mfaConfiguration
            self.mfaMethods = mfaMethods
        }

    }

    @_spi(InternalAmplifyConfiguration)
    public struct DataCategory: Codable {
        public let awsRegion: AWSRegion
        public let url: String
        public let modelIntrospection: JSONValue?
        public let apiKey: String?
        public let defaultAuthorizationType: AWSAppSyncAuthorizationType
        public let authorizationTypes: [AWSAppSyncAuthorizationType]
    }

    @_spi(InternalAmplifyConfiguration)
    public struct Geo: Codable {
        public let awsRegion: AWSRegion
        public let maps: Maps?
        public let searchIndices: SearchIndices?
        public let geofenceCollections: GeofenceCollections?

        @_spi(InternalAmplifyConfiguration)
        public struct Maps: Codable {
            public let items: [String: AmazonLocationServiceConfig]
            public let `default`: String

            @_spi(InternalAmplifyConfiguration)
            public struct AmazonLocationServiceConfig: Codable {
                public let style: String
            }
        }

        @_spi(InternalAmplifyConfiguration)
        public struct SearchIndices: Codable {
            public let items: [String]
            public let `default`: String
        }

        @_spi(InternalAmplifyConfiguration)
        public struct GeofenceCollections: Codable {
            public let items: [String]
            public let `default`: String
        }

        // Internal init used for testing
        init(awsRegion: AWSRegion,
             maps: Maps? = nil,
             searchIndices: SearchIndices? = nil,
             geofenceCollections: GeofenceCollections? = nil) {
            self.awsRegion = awsRegion
            self.maps = maps
            self.searchIndices = searchIndices
            self.geofenceCollections = geofenceCollections
        }
    }

    @_spi(InternalAmplifyConfiguration)
    public struct Notifications: Codable {
        public let awsRegion: String
        public let amazonPinpointAppId: String
        public let channels: [AmazonPinpointChannelType]
    }

    @_spi(InternalAmplifyConfiguration)
    public struct Storage: Codable {
        public let awsRegion: AWSRegion
        public let bucketName: String
    }

    @_spi(InternalAmplifyConfiguration)
    public struct CustomOutput: Codable {}

    @_spi(InternalAmplifyConfiguration)
    public typealias AWSRegion = String

    @_spi(InternalAmplifyConfiguration)
    public enum AmazonCognitoStandardAttributes: String, Codable, CodingKeyRepresentable {
        case address
        case birthdate
        case email
        case familyName = "family_name"
        case gender
        case givenName = "given_name"
        case locale
        case middleName = "middle_name"
        case name
        case nickname
        case phoneNumber = "phone_number"
        case picture
        case preferredUsername = "preferred_username"
        case profile
        case sub
        case updatedAt = "updated_at"
        case website
        case zoneinfo
    }

    @_spi(InternalAmplifyConfiguration)
    public enum AWSAppSyncAuthorizationType: String, Codable {
        case amazonCognitoUserPools = "AMAZON_COGNITO_USER_POOLS"
        case apiKey = "API_KEY"
        case awsIAM = "AWS_IAM"
        case awsLambda = "AWS_LAMBDA"
        case openIDConnect = "OPENID_CONNECT"
    }

    @_spi(InternalAmplifyConfiguration)
    public enum AmazonPinpointChannelType: String, Codable {
        case inAppMessaging = "IN_APP_MESSAGING"
        case fcm = "FCM"
        case apns = "APNS"
        case email = "EMAIL"
        case sms = "SMS"
    }

    // Internal init used for testing
    init(version: String = "",
         analytics: Analytics? = nil,
         auth: Auth? = nil,
         data: DataCategory? = nil,
         geo: Geo? = nil,
         notifications: Notifications? = nil,
         storage: Storage? = nil,
         custom: CustomOutput? = nil) {
        self.version = version
        self.analytics = analytics
        self.auth = auth
        self.data = data
        self.geo = geo
        self.notifications = notifications
        self.storage = storage
        self.custom = custom
    }
}
// swiftlint:enable nesting

// MARK: - Configure

/// Represents helper methods to configure with Amplify CLI Gen2 configuration.
public struct AmplifyOutputs {

    /// A closure that resolves the `AmplifyOutputsData` configuration
    let resolveConfiguration: () throws -> AmplifyOutputsData

    /// Resolves configuration with `amplify_outputs.json` in the main bundle.
    public static let amplifyOutputs: AmplifyOutputs = {
        .init {
            try AmplifyOutputsData(bundle: Bundle.main, resource: "amplify_outputs")
        }
    }()

    /// Resolves configuration with a data object, from the contents of an `amplify_outputs.json` file.
    public static func data(_ data: Data) -> AmplifyOutputs {
        .init {
            try AmplifyOutputsData.decodeAmplifyOutputsData(from: data)
        }
    }

    /// Resolves configuration with the resource in the main bundle.
    public static func resource(named resource: String) -> AmplifyOutputs {
        .init {
            try AmplifyOutputsData(bundle: Bundle.main, resource: resource)
        }
    }
}

extension Amplify {

    /// API to configure with Amplify CLI Gen2's configuration.
    ///
    /// - Parameter with: `AmplifyOutputs` configuration resolver
    public static func configure(with amplifyOutputs: AmplifyOutputs) throws {
        do {
            let resolvedConfiguration = try amplifyOutputs.resolveConfiguration()
            try configure(resolvedConfiguration)
        } catch {
            log.info("Failed to find configuration.")
            if isRunningForSwiftUIPreviews {
                log.info("Running for SwiftUI previews with no configuration file present, skipping configuration.")
                return
            } else {
                throw error
            }
        }
    }

    /// Configures Amplify with the specified configuration.
    ///
    /// This method must be invoked after registering plugins, and before using any Amplify category. It must not be
    /// invoked more than once.
    ///
    /// **Lifecycle**
    ///
    /// Internally, Amplify configures the Hub and Logging categories first, so they are available to plugins in the
    /// remaining categories during the configuration phase. Plugins for the Hub and Logging categories must not
    /// assume that any other categories are available.
    ///
    /// After Amplify has configured all of its categories, it will dispatch a `HubPayload.EventName.Amplify.configured`
    /// event to each Amplify Hub channel. After this point, plugins may invoke calls on other Amplify categories.
    ///
    /// - Parameter configuration: The AmplifyOutputsData object
    ///
    /// - Tag: Amplify.configure
    @_spi(InternalAmplifyConfiguration)
    public static func configure(_ configuration: AmplifyOutputsData) throws {
        // Always configure logging first since Auth dependings on logging
        try configure(CategoryType.logging.category, using: configuration)

        // Always configure Hub and Auth next, so they are available to other categories.
        // Auth is a special case for other plugins which depend on using Auth when being configured themselves.
        let manuallyConfiguredCategories = [CategoryType.hub, .auth]
        for categoryType in manuallyConfiguredCategories {
            try configure(categoryType.category, using: configuration)
        }

        // Looping through all categories to ensure we don't accidentally forget a category at some point in the future
        let remainingCategories = CategoryType.allCases.filter { !manuallyConfiguredCategories.contains($0) }
        for categoryType in remainingCategories {
            switch categoryType {
            case .analytics:
                try configure(Analytics, using: configuration)
            case .api:
                try configure(API, using: configuration)
            case .dataStore:
                try configure(DataStore, using: configuration)
            case .geo:
                try configure(Geo, using: configuration)
            case .predictions:
                try configure(Predictions, using: configuration)
            case .pushNotifications:
                try configure(Notifications.Push, using: configuration)
            case .storage:
                try configure(Storage, using: configuration)
            case .hub, .logging, .auth:
                // Already configured
                break
            }
        }
        isConfigured = true

        notifyAllHubChannels()
    }

    /// If `candidate` is `CategoryConfigurable`, then invokes `candidate.configure(using: configuration)`.
    private static func configure(_ candidate: Category, using configuration: AmplifyOutputsData) throws {
        guard let configurable = candidate as? CategoryConfigurable else {
            return
        }

        try configurable.configure(using: configuration)
    }
}
