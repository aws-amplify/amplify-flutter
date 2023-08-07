// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/credentials.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/external_service_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_credentials_for_identity_input.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_credentials_for_identity_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_input.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/internal_error_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/invalid_identity_pool_configuration_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/invalid_parameter_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/limit_exceeded_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/not_authorized_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/resource_conflict_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/resource_not_found_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/too_many_requests_exception.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...GetCredentialsForIdentityInput.serializers,
  ...Credentials.serializers,
  ...GetCredentialsForIdentityResponse.serializers,
  ...ExternalServiceException.serializers,
  ...InternalErrorException.serializers,
  ...InvalidIdentityPoolConfigurationException.serializers,
  ...InvalidParameterException.serializers,
  ...NotAuthorizedException.serializers,
  ...ResourceConflictException.serializers,
  ...ResourceNotFoundException.serializers,
  ...TooManyRequestsException.serializers,
  ...GetIdInput.serializers,
  ...GetIdResponse.serializers,
  ...LimitExceededException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new
};
