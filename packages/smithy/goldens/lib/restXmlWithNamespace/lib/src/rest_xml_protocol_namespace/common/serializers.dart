// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_with_namespace_v1.rest_xml_protocol_namespace.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i14;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/aws_config.dart'
    as _i13;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/client_config.dart'
    as _i10;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/environment_config.dart'
    as _i5;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/file_config_settings.dart'
    as _i8;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/nested_with_namespace.dart'
    as _i3;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/operation_config.dart'
    as _i11;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/retry_config.dart'
    as _i9;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/retry_mode.dart'
    as _i4;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/s3_addressing_style.dart'
    as _i6;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/s3_config.dart'
    as _i7;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/scoped_config.dart'
    as _i12;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/simple_scalar_properties_input_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.SimpleScalarPropertiesInputOutput.serializers,
  ..._i3.NestedWithNamespace.serializers,
  ..._i4.RetryMode.serializers,
  ..._i5.EnvironmentConfig.serializers,
  ..._i6.S3AddressingStyle.serializers,
  ..._i7.S3Config.serializers,
  ..._i8.FileConfigSettings.serializers,
  ..._i9.RetryConfig.serializers,
  ..._i10.ClientConfig.serializers,
  ..._i11.OperationConfig.serializers,
  ..._i12.ScopedConfig.serializers,
  ..._i13.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i14.BuiltMap,
    [
      FullType(String),
      FullType(_i8.FileConfigSettings),
    ],
  ): _i14.MapBuilder<String, _i8.FileConfigSettings>.new
};
