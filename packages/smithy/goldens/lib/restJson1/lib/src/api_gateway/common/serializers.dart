// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v1.api_gateway.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i21;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/api_gateway/model/api_key_source_type.dart'
    as _i9;
import 'package:rest_json1_v1/src/api_gateway/model/aws_config.dart' as _i20;
import 'package:rest_json1_v1/src/api_gateway/model/bad_request_exception.dart'
    as _i6;
import 'package:rest_json1_v1/src/api_gateway/model/client_config.dart' as _i17;
import 'package:rest_json1_v1/src/api_gateway/model/endpoint_configuration.dart'
    as _i5;
import 'package:rest_json1_v1/src/api_gateway/model/endpoint_type.dart' as _i10;
import 'package:rest_json1_v1/src/api_gateway/model/environment_config.dart'
    as _i12;
import 'package:rest_json1_v1/src/api_gateway/model/file_config_settings.dart'
    as _i15;
import 'package:rest_json1_v1/src/api_gateway/model/get_rest_apis_request.dart'
    as _i2;
import 'package:rest_json1_v1/src/api_gateway/model/operation_config.dart'
    as _i18;
import 'package:rest_json1_v1/src/api_gateway/model/rest_api.dart' as _i4;
import 'package:rest_json1_v1/src/api_gateway/model/rest_apis.dart' as _i3;
import 'package:rest_json1_v1/src/api_gateway/model/retry_config.dart' as _i16;
import 'package:rest_json1_v1/src/api_gateway/model/retry_mode.dart' as _i11;
import 'package:rest_json1_v1/src/api_gateway/model/s3_addressing_style.dart'
    as _i13;
import 'package:rest_json1_v1/src/api_gateway/model/s3_config.dart' as _i14;
import 'package:rest_json1_v1/src/api_gateway/model/scoped_config.dart' as _i19;
import 'package:rest_json1_v1/src/api_gateway/model/too_many_requests_exception.dart'
    as _i7;
import 'package:rest_json1_v1/src/api_gateway/model/unauthorized_exception.dart'
    as _i8;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.GetRestApisRequest.serializers,
  ..._i3.RestApis.serializers,
  ..._i4.RestApi.serializers,
  ..._i5.EndpointConfiguration.serializers,
  ..._i6.BadRequestException.serializers,
  ..._i7.TooManyRequestsException.serializers,
  ..._i8.UnauthorizedException.serializers,
  ..._i9.ApiKeySourceType.serializers,
  ..._i10.EndpointType.serializers,
  ..._i11.RetryMode.serializers,
  ..._i12.EnvironmentConfig.serializers,
  ..._i13.S3AddressingStyle.serializers,
  ..._i14.S3Config.serializers,
  ..._i15.FileConfigSettings.serializers,
  ..._i16.RetryConfig.serializers,
  ..._i17.ClientConfig.serializers,
  ..._i18.OperationConfig.serializers,
  ..._i19.ScopedConfig.serializers,
  ..._i20.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i21.BuiltList,
    [FullType(_i4.RestApi)],
  ): _i21.ListBuilder<_i4.RestApi>.new,
  const FullType(
    _i21.BuiltList,
    [FullType(String)],
  ): _i21.ListBuilder<String>.new,
  const FullType(
    _i21.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i21.MapBuilder<String, String>.new,
  const FullType(
    _i21.BuiltList,
    [FullType(_i10.EndpointType)],
  ): _i21.ListBuilder<_i10.EndpointType>.new,
  const FullType(
    _i21.BuiltMap,
    [
      FullType(String),
      FullType(_i15.FileConfigSettings),
    ],
  ): _i21.MapBuilder<String, _i15.FileConfigSettings>.new,
};
