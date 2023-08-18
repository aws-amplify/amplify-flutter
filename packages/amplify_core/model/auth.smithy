$version: "2"

namespace com.amazonaws.amplify.core

union AuthConfig {
    cognito: AuthCognitoConfig
}

structure AuthCognitoConfig {
    userPool: AuthUserPoolConfig
    identityPool: AuthIdentityPoolConfig
}

structure AuthUserPoolConfig {
    @required
    poolId: String

    @required
    region: AWSRegion

    @required
    clientId: String
    clientSecret: String
    endpoint: Uri
    authFlowType: AuthFlowType
    socialProviders: AuthProviders
    usernameAttributes: AuthUsernameAttributes
    signUpAttributes: AuthUserAttributeKeys
    verificationMechanisms: AuthUserAttributeKeys
    pinpointConfig: AnalyticsPinpointConfig
    passwordPolicy: AuthPasswordPolicy
    mfaConfiguration: AuthMfaConfiguration
    hostedUi: AuthHostedUiConfig
}

enum AuthFlowType {
    USER_SRP_AUTH
    USER_PASSWORD_AUTH
    CUSTOM_AUTH_WITH_SRP
    CUSTOM_AUTH_WITHOUT_SRP

    @deprecated(message: "Use CUSTOM_AUTH_WITH_SRP or CUSTOM_AUTH_WITHOUT_SRP instead")
    CUSTOM_AUTH
}

union AuthProvider {
    cognito: Unit
    google: Unit
    facebook: Unit
    amazon: Unit
    apple: Unit
    oidc: AuthProviderOIDC
    saml: AuthProviderSAML
    custom: AuthProviderCustom
}

structure AuthProviderOIDC {
    @required
    name: String

    @required
    issuer: String
}

structure AuthProviderSAML {
    @required
    name: String
    providerArn: String
}

structure AuthProviderCustom {
    @required
    developerProvidedName: String
}

list AuthProviders {
    member: AuthProvider
}

union AuthUserAttributeKey {
    address: Unit
    birthdate: Unit
    email: Unit
    emailVerified: Unit
    familyName: Unit
    gender: Unit
    givenName: Unit
    locale: Unit
    middleName: Unit
    name: Unit
    nickname: Unit
    phoneNumber: Unit
    phoneNumberVerified: Unit
    picture: Unit
    preferredUsername: Unit
    profile: Unit
    sub: Unit
    updatedAt: Unit
    website: Unit
    zoneinfo: Unit
    custom: String
}

list AuthUserAttributeKeys {
    member: AuthUserAttributeKey
}

enum AuthUsernameAttribute {
    EMAIL = "email"
    PHONE_NUMBER = "phone_number"
}

list AuthUsernameAttributes {
    member: AuthUsernameAttribute
}

structure AuthMfaConfiguration {
    @required
    enforcementLevel: AuthMfaEnforcementLevel

    @required
    sms: Boolean = false

    @required
    totp: Boolean = false
}

enum AuthMfaEnforcementLevel {
    OPTIONAL
    ON
    OFF
}

structure AuthHostedUiConfig {
    // Defaults to the value in AuthUserPoolConfig
    @required
    @clientOptional
    clientId: String

    // Defaults to the value in AuthUserPoolConfig
    @required
    @clientOptional
    clientSecret: String

    @required
    domainName: DomainName

    @required
    signInRedirectUris: UriList

    @required
    signOutRedirectUris: UriList

    @required
    scopes: StringList

    signInUri: Uri
    signOutUri: Uri
    tokenUri: Uri
}

structure AuthPasswordPolicy {
    minLength: Integer
    
    // TODO(dnys1): Why does no `required` cause the default to not appear?
    @required
    requiresLowercase: Boolean = false
    
    @required
    requiresUppercase: Boolean = false
    
    @required
    requiresNumbers: Boolean = false
    
    @required
    requiresSymbols: Boolean = false
}

structure AuthIdentityPoolConfig {
    @required
    poolId: String

    @required
    region: AWSRegion

    // TODO: Is there value in allowing this?
    // The use case would be better control over authenticated calls.
    // Knowing whether an identity pool supports unauthenticated identities
    // or not allows saving needless API calls in the case they're not allowed.
    allowUnauthenticatedIdentities: Boolean
}
