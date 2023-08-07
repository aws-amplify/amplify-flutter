// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.api_gateway.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/api_gateway/model/api_key_source_type.dart';
import 'package:rest_json1_v1/src/api_gateway/model/aws_config.dart';
import 'package:rest_json1_v1/src/api_gateway/model/bad_request_exception.dart';
import 'package:rest_json1_v1/src/api_gateway/model/client_config.dart';
import 'package:rest_json1_v1/src/api_gateway/model/endpoint_configuration.dart';
import 'package:rest_json1_v1/src/api_gateway/model/endpoint_type.dart';
import 'package:rest_json1_v1/src/api_gateway/model/environment_config.dart';
import 'package:rest_json1_v1/src/api_gateway/model/file_config_settings.dart';
import 'package:rest_json1_v1/src/api_gateway/model/get_rest_apis_request.dart';
import 'package:rest_json1_v1/src/api_gateway/model/operation_config.dart';
import 'package:rest_json1_v1/src/api_gateway/model/rest_api.dart';
import 'package:rest_json1_v1/src/api_gateway/model/rest_apis.dart';
import 'package:rest_json1_v1/src/api_gateway/model/retry_config.dart';
import 'package:rest_json1_v1/src/api_gateway/model/retry_mode.dart';
import 'package:rest_json1_v1/src/api_gateway/model/s3_addressing_style.dart';
import 'package:rest_json1_v1/src/api_gateway/model/s3_config.dart';
import 'package:rest_json1_v1/src/api_gateway/model/scoped_config.dart';
import 'package:rest_json1_v1/src/api_gateway/model/too_many_requests_exception.dart';
import 'package:rest_json1_v1/src/api_gateway/model/unauthorized_exception.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...GetRestApisRequest.serializers,
  ...RestApis.serializers,
  ...RestApi.serializers,
  ...EndpointConfiguration.serializers,
  ...BadRequestException.serializers,
  ...TooManyRequestsException.serializers,
  ...UnauthorizedException.serializers,
  ...ApiKeySourceType.serializers,
  ...EndpointType.serializers,
  ...RetryMode.serializers,
  ...EnvironmentConfig.serializers,
  ...S3AddressingStyle.serializers,
  ...S3Config.serializers,
  ...FileConfigSettings.serializers,
  ...RetryConfig.serializers,
  ...ClientConfig.serializers,
  ...OperationConfig.serializers,
  ...ScopedConfig.serializers,
  ...AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(RestApi)],
  ): _i2.ListBuilder<RestApi>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i2.MapBuilder<String, String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EndpointType)],
  ): _i2.ListBuilder<EndpointType>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new,
};
