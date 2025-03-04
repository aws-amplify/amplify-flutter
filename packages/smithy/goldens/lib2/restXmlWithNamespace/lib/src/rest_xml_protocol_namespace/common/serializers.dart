// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_with_namespace_v2.rest_xml_protocol_namespace.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/aws_config.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/client_config.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/environment_config.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/file_config_settings.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/nested_with_namespace.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/operation_config.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/retry_config.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/retry_mode.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/s3_addressing_style.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/s3_config.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/scoped_config.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/simple_scalar_properties_input_output.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...SimpleScalarPropertiesInputOutput.serializers,
  ...NestedWithNamespace.serializers,
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
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(FileConfigSettings),
    ],
  ): _i2.MapBuilder<String, FileConfigSettings>.new
};
