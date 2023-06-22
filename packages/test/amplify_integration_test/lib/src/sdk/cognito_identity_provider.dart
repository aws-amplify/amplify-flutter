// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

/// # Amazon Cognito Identity Provider
///
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
library amplify_integration_test.cognito_identity_provider;

export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/cognito_identity_provider_client.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_request.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_response.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/auth_event_type.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_name.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_response.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_response_type.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_context_data_type.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_feedback_type.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_response_type.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_risk_type.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_type.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/feedback_value_type.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/risk_decision_type.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/risk_level_type.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart';
export 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/user_pool_add_on_not_enabled_exception.dart';
