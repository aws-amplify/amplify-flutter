// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_integration_test.cognito_identity_provider.cognito_identity_provider_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_request.dart'
    as _i6;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/auth_event_type.dart'
    as _i5;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/operation/admin_list_user_auth_events_operation.dart'
    as _i7;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i3;

/// Using the Amazon Cognito user pools API, you can create a user pool to manage directories and users. You can authenticate a user to obtain tokens related to user identity and access policies.
///
/// This API reference provides information about user pools in Amazon Cognito user pools.
///
/// For more information, see the [Amazon Cognito Documentation](https://docs.aws.amazon.com/cognito/latest/developerguide/what-is-amazon-cognito.html).
class CognitoIdentityProviderClient {
  /// Using the Amazon Cognito user pools API, you can create a user pool to manage directories and users. You can authenticate a user to obtain tokens related to user identity and access policies.
  ///
  /// This API reference provides information about user pools in Amazon Cognito user pools.
  ///
  /// For more information, see the [Amazon Cognito Documentation](https://docs.aws.amazon.com/cognito/latest/developerguide/what-is-amazon-cognito.html).
  const CognitoIdentityProviderClient({
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

  /// A history of user activity and any risks detected as part of Amazon Cognito advanced security.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<_i5.AuthEventType>, int, String>>
      adminListUserAuthEvents(
    _i6.AdminListUserAuthEventsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i7.AdminListUserAuthEventsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }
}
