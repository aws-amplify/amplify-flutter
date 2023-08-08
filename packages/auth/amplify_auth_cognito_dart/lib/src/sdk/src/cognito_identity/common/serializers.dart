// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/credentials.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/external_service_exception.dart'
    as _i5;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_credentials_for_identity_input.dart'
    as _i2;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_credentials_for_identity_response.dart'
    as _i4;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_input.dart'
    as _i13;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_response.dart'
    as _i14;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/internal_error_exception.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/invalid_identity_pool_configuration_exception.dart'
    as _i7;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/invalid_parameter_exception.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/limit_exceeded_exception.dart'
    as _i15;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/not_authorized_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/resource_conflict_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/resource_not_found_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/too_many_requests_exception.dart'
    as _i12;
import 'package:built_collection/built_collection.dart' as _i16;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.GetCredentialsForIdentityInput.serializers,
  ..._i3.Credentials.serializers,
  ..._i4.GetCredentialsForIdentityResponse.serializers,
  ..._i5.ExternalServiceException.serializers,
  ..._i6.InternalErrorException.serializers,
  ..._i7.InvalidIdentityPoolConfigurationException.serializers,
  ..._i8.InvalidParameterException.serializers,
  ..._i9.NotAuthorizedException.serializers,
  ..._i10.ResourceConflictException.serializers,
  ..._i11.ResourceNotFoundException.serializers,
  ..._i12.TooManyRequestsException.serializers,
  ..._i13.GetIdInput.serializers,
  ..._i14.GetIdResponse.serializers,
  ..._i15.LimitExceededException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i16.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i16.MapBuilder<String, String>.new
};
