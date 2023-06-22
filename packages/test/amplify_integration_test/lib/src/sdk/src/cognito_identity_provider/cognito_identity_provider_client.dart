// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

/// With the Amazon Cognito user pools API, you can set up user pools and app clients, and authenticate users. To authenticate users from third-party identity providers (IdPs) in this API, you can [link IdP users to native user profiles](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html). Learn more about the authentication and authorization of federated users in the [User pool OIDC and hosted UI API endpoints reference](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html).
///
/// This API reference provides detailed information about API operations and object types in Amazon Cognito. At the bottom of the page for each API operation and object, under _See Also_, you can learn how to use it in an Amazon Web Services SDK in the language of your choice.
///
/// Along with resource management operations, the Amazon Cognito user pools API includes classes of operations and authorization models for client-side and server-side user operations. For more information, see [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html) in the _Amazon Cognito Developer Guide_.
///
/// You can also start reading about the `CognitoIdentityProvider` client in the following SDK guides.
///
/// *   [Amazon Web Services Command Line Interface](https://docs.aws.amazon.com/cli/latest/reference/cognito-idp/index.html#cli-aws-cognito-idp)
///
/// *   [Amazon Web Services SDK for .NET](https://docs.aws.amazon.com/sdkfornet/v3/apidocs/items/CognitoIdentityProvider/TCognitoIdentityProviderClient.html)
///
/// *   [Amazon Web Services SDK for C++](https://sdk.amazonaws.com/cpp/api/LATEST/aws-cpp-sdk-cognito-idp/html/class_aws_1_1_cognito_identity_provider_1_1_cognito_identity_provider_client.html)
///
/// *   [Amazon Web Services SDK for Go](https://docs.aws.amazon.com/sdk-for-go/api/service/cognitoidentityprovider/#CognitoIdentityProvider)
///
/// *   [Amazon Web Services SDK for Java V2](https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/cognitoidentityprovider/CognitoIdentityProviderClient.html)
///
/// *   [Amazon Web Services SDK for JavaScript](https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/CognitoIdentityServiceProvider.html)
///
/// *   [Amazon Web Services SDK for PHP V3](https://docs.aws.amazon.com/aws-sdk-php/v3/api/api-cognito-idp-2016-04-18.html)
///
/// *   [Amazon Web Services SDK for Python](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/cognito-idp.html)
///
/// *   [Amazon Web Services SDK for Ruby V3](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/CognitoIdentityProvider/Client.html)
///
///
/// To get started with an Amazon Web Services SDK, see [Tools to Build on Amazon Web Services](http://aws.amazon.com/developer/tools/). For example actions and scenarios, see [Code examples for Amazon Cognito Identity Provider using Amazon Web Services SDKs](https://docs.aws.amazon.com/cognito/latest/developerguide/service_code_examples_cognito-identity-provider.html).
class CognitoIdentityProviderClient {
  /// With the Amazon Cognito user pools API, you can set up user pools and app clients, and authenticate users. To authenticate users from third-party identity providers (IdPs) in this API, you can [link IdP users to native user profiles](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html). Learn more about the authentication and authorization of federated users in the [User pool OIDC and hosted UI API endpoints reference](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html).
  ///
  /// This API reference provides detailed information about API operations and object types in Amazon Cognito. At the bottom of the page for each API operation and object, under _See Also_, you can learn how to use it in an Amazon Web Services SDK in the language of your choice.
  ///
  /// Along with resource management operations, the Amazon Cognito user pools API includes classes of operations and authorization models for client-side and server-side user operations. For more information, see [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html) in the _Amazon Cognito Developer Guide_.
  ///
  /// You can also start reading about the `CognitoIdentityProvider` client in the following SDK guides.
  ///
  /// *   [Amazon Web Services Command Line Interface](https://docs.aws.amazon.com/cli/latest/reference/cognito-idp/index.html#cli-aws-cognito-idp)
  ///
  /// *   [Amazon Web Services SDK for .NET](https://docs.aws.amazon.com/sdkfornet/v3/apidocs/items/CognitoIdentityProvider/TCognitoIdentityProviderClient.html)
  ///
  /// *   [Amazon Web Services SDK for C++](https://sdk.amazonaws.com/cpp/api/LATEST/aws-cpp-sdk-cognito-idp/html/class_aws_1_1_cognito_identity_provider_1_1_cognito_identity_provider_client.html)
  ///
  /// *   [Amazon Web Services SDK for Go](https://docs.aws.amazon.com/sdk-for-go/api/service/cognitoidentityprovider/#CognitoIdentityProvider)
  ///
  /// *   [Amazon Web Services SDK for Java V2](https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/cognitoidentityprovider/CognitoIdentityProviderClient.html)
  ///
  /// *   [Amazon Web Services SDK for JavaScript](https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/CognitoIdentityServiceProvider.html)
  ///
  /// *   [Amazon Web Services SDK for PHP V3](https://docs.aws.amazon.com/aws-sdk-php/v3/api/api-cognito-idp-2016-04-18.html)
  ///
  /// *   [Amazon Web Services SDK for Python](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/cognito-idp.html)
  ///
  /// *   [Amazon Web Services SDK for Ruby V3](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/CognitoIdentityProvider/Client.html)
  ///
  ///
  /// To get started with an Amazon Web Services SDK, see [Tools to Build on Amazon Web Services](http://aws.amazon.com/developer/tools/). For example actions and scenarios, see [Code examples for Amazon Cognito Identity Provider using Amazon Web Services SDKs](https://docs.aws.amazon.com/cognito/latest/developerguide/service_code_examples_cognito-identity-provider.html).
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
