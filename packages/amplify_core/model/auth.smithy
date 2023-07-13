$version: "2"

namespace com.amazonaws.amplify.core

union AWSAuthConfig {
    cognito: AWSAuthCognitoConfig
}

structure AWSAuthCognitoConfig {
    userPool: AWSAuthUserPoolConfig
    identityPool: AWSAuthIdentityPoolConfig
}

structure AWSAuthUserPoolConfig {
    @required
    poolId: String

    @required
    region: AWSRegion

    @required
    clientId: String
    clientSecret: String
    endpoint: Uri
    authFlowType: AWSAuthFlowType
    socialProviders: AWSAuthProviders
    usernameAttributes: AWSAuthUsernameAttributes
    signUpAttributes: AWSAuthUserAttributeKeys
    verificationMechanisms: AWSAuthUserAttributeKeys
    pinpointConfig: AWSAnalyticsPinpointConfig
    passwordProtectionSettings: AWSAuthPasswordProtectionSettings
    mfaConfiguration: AWSAuthMfaConfiguration
    hostedUi: AWSAuthHostedUiConfig
}

enum AWSAuthFlowType {
    USER_SRP_AUTH
    USER_PASSWORD_AUTH
    CUSTOM_AUTH_WITH_SRP
    CUSTOM_AUTH_WITHOUT_SRP

    @deprecated(message: "Use CUSTOM_AUTH_WITH_SRP or CUSTOM_AUTH_WITHOUT_SRP instead")
    CUSTOM_AUTH
}

union AWSAuthProvider {
    cognito: Unit
    google: Unit
    facebook: Unit
    amazon: Unit
    apple: Unit
    oidc: AWSAuthProviderOIDC
    saml: AWSAuthProviderSAML
    custom: AWSAuthProviderCustom
}

structure AWSAuthProviderOIDC {
    @required
    name: String

    @required
    issuer: String
}

structure AWSAuthProviderSAML {
    @required
    name: String
    providerArn: String
}

structure AWSAuthProviderCustom {
    @required
    developerProvidedName: String
}

list AWSAuthProviders {
    member: AWSAuthProvider
}

union AWSAuthUserAttributeKey {
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

@uniqueItems
list AWSAuthUserAttributeKeys {
    member: AWSAuthUserAttributeKey
}

enum AWSAuthUsernameAttribute {
    EMAIL = "email"
    PHONE_NUMBER = "phone_number"
}

@uniqueItems
list AWSAuthUsernameAttributes {
    member: AWSAuthUsernameAttribute
}

structure AWSAuthMfaConfiguration {
    @required
    status: AWSAuthMfaStatus

    @required
    enabledTypes: AWSAuthMfaTypes
}

enum AWSAuthMfaStatus {
    OPTIONAL
    ON
    OFF
}

enum AWSAuthMfaType {
    SMS
    TOTP
}

@uniqueItems
list AWSAuthMfaTypes {
    member: AWSAuthMfaType
}

structure AWSAuthHostedUiConfig {
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

structure AWSAuthPasswordProtectionSettings {
    passwordPolicyMinLength: Integer
    passwordPolicyCharacters: AWSAuthPasswordPolicyCharactersList
}

enum AWSAuthPasswordPolicyCharacters {
    REQUIRES_LOWERCASE
    REQUIRES_UPPERCASE
    REQUIRES_NUMBERS
    REQUIRES_SYMBOLS
}

list AWSAuthPasswordPolicyCharactersList {
    member: AWSAuthPasswordPolicyCharacters
}

structure AWSAuthIdentityPoolConfig {
    @required
    poolId: String

    @required
    region: AWSRegion

    allowUnauthenticatedIdentities: Boolean = true
}
