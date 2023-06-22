// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity.cognito_identity_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_credentials_for_identity_input.dart'
    as _i5;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_credentials_for_identity_response.dart'
    as _i4;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_input.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_response.dart'
    as _i7;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/operation/get_credentials_for_identity_operation.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/operation/get_id_operation.dart'
    as _i9;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

/// ## Amazon Cognito Federated Identities
///
/// Amazon Cognito Federated Identities is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. It uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.
///
/// Using Amazon Cognito Federated Identities, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon Cognito user pool, and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.
///
/// For a description of the authentication flow from the Amazon Cognito Developer Guide see [Authentication Flow](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).
///
/// For more information see [Amazon Cognito Federated Identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
class CognitoIdentityClient {
  /// ## Amazon Cognito Federated Identities
  ///
  /// Amazon Cognito Federated Identities is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. It uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.
  ///
  /// Using Amazon Cognito Federated Identities, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon Cognito user pool, and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.
  ///
  /// For a description of the authentication flow from the Amazon Cognito Developer Guide see [Authentication Flow](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).
  ///
  /// For more information see [Amazon Cognito Federated Identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
  const CognitoIdentityClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
    List<_i3.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i3.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i3.HttpRequestInterceptor> _requestInterceptors;

  final List<_i3.HttpResponseInterceptor> _responseInterceptors;

  /// Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.
  ///
  /// This is a public API. You do not need any credentials to call this API.
  _i3.SmithyOperation<_i4.GetCredentialsForIdentityResponse>
      getCredentialsForIdentity(
    _i5.GetCredentialsForIdentityInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i6.GetCredentialsForIdentityOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.
  ///
  /// This is a public API. You do not need any credentials to call this API.
  _i3.SmithyOperation<_i7.GetIdResponse> getId(
    _i8.GetIdInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i9.GetIdOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
