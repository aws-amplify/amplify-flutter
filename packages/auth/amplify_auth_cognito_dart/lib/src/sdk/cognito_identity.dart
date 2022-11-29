// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

/// # Amazon Cognito Identity
///
/// ## Amazon Cognito Federated Identities
///
/// Amazon Cognito Federated Identities is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. It uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.
///
/// Using Amazon Cognito Federated Identities, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon Cognito user pool, and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.
///
/// For a description of the authentication flow from the Amazon Cognito Developer Guide see [Authentication Flow](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).
///
/// For more information see [Amazon Cognito Federated Identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
library amplify_auth_cognito_dart.cognito_identity;

export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/cognito_identity_client.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/credentials.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/external_service_exception.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_credentials_for_identity_input.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_credentials_for_identity_response.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_input.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_response.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/internal_error_exception.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/invalid_identity_pool_configuration_exception.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/invalid_parameter_exception.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/limit_exceeded_exception.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/not_authorized_exception.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/resource_conflict_exception.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/resource_not_found_exception.dart';
export 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/too_many_requests_exception.dart';
