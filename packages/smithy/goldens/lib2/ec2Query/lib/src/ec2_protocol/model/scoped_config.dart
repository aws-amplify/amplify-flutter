// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v2.ec2_protocol.model.scoped_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/client_config.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/environment_config.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/file_config_settings.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/operation_config.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'scoped_config.g.dart';

/// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
abstract class ScopedConfig
    with _i1.AWSEquatable<ScopedConfig>
    implements Built<ScopedConfig, ScopedConfigBuilder> {
  /// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
  factory ScopedConfig({
    EnvironmentConfig? environment,
    Map<String, FileConfigSettings>? configFile,
    Map<String, FileConfigSettings>? credentialsFile,
    ClientConfig? client,
    OperationConfig? operation,
  }) {
    return _$ScopedConfig._(
      environment: environment,
      configFile: configFile == null ? null : _i2.BuiltMap(configFile),
      credentialsFile:
          credentialsFile == null ? null : _i2.BuiltMap(credentialsFile),
      client: client,
      operation: operation,
    );
  }

  /// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
  factory ScopedConfig.build([void Function(ScopedConfigBuilder) updates]) =
      _$ScopedConfig;

  const ScopedConfig._();

  static const List<_i3.SmithySerializer<ScopedConfig>> serializers = [
    ScopedConfigEc2QuerySerializer()
  ];

  /// Config settings that can be set as environment variables.
  EnvironmentConfig? get environment;

  /// A shape representing a parsed config file, which is a map of profile names to configuration sets.
  _i2.BuiltMap<String, FileConfigSettings>? get configFile;

  /// A shape representing a parsed config file, which is a map of profile names to configuration sets.
  _i2.BuiltMap<String, FileConfigSettings>? get credentialsFile;

  /// Configuration that is set on the constructed client.
  ClientConfig? get client;

  /// Configuration that is set for the scope of a single operation.
  OperationConfig? get operation;
  @override
  List<Object?> get props => [
        environment,
        configFile,
        credentialsFile,
        client,
        operation,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScopedConfig')
      ..add(
        'environment',
        environment,
      )
      ..add(
        'configFile',
        configFile,
      )
      ..add(
        'credentialsFile',
        credentialsFile,
      )
      ..add(
        'client',
        client,
      )
      ..add(
        'operation',
        operation,
      );
    return helper.toString();
  }
}

class ScopedConfigEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ScopedConfig> {
  const ScopedConfigEc2QuerySerializer() : super('ScopedConfig');

  @override
  Iterable<Type> get types => const [
        ScopedConfig,
        _$ScopedConfig,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  ScopedConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScopedConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'environment':
          result.environment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EnvironmentConfig),
          ) as EnvironmentConfig));
        case 'configFile':
          result.configFile
              .replace(const _i3.XmlBuiltMapSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(FileConfigSettings),
              ],
            ),
          ));
        case 'credentialsFile':
          result.credentialsFile
              .replace(const _i3.XmlBuiltMapSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(FileConfigSettings),
              ],
            ),
          ));
        case 'client':
          result.client.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientConfig),
          ) as ClientConfig));
        case 'operation':
          result.operation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(OperationConfig),
          ) as OperationConfig));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ScopedConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ScopedConfigResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final ScopedConfig(
      :environment,
      :configFile,
      :credentialsFile,
      :client,
      :operation
    ) = object;
    if (environment != null) {
      result$
        ..add(const _i3.XmlElementName('Environment'))
        ..add(serializers.serialize(
          environment,
          specifiedType: const FullType(EnvironmentConfig),
        ));
    }
    if (configFile != null) {
      result$
        ..add(const _i3.XmlElementName('ConfigFile'))
        ..add(const _i3.XmlBuiltMapSerializer().serialize(
          serializers,
          configFile,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(FileConfigSettings),
            ],
          ),
        ));
    }
    if (credentialsFile != null) {
      result$
        ..add(const _i3.XmlElementName('CredentialsFile'))
        ..add(const _i3.XmlBuiltMapSerializer().serialize(
          serializers,
          credentialsFile,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(FileConfigSettings),
            ],
          ),
        ));
    }
    if (client != null) {
      result$
        ..add(const _i3.XmlElementName('Client'))
        ..add(serializers.serialize(
          client,
          specifiedType: const FullType(ClientConfig),
        ));
    }
    if (operation != null) {
      result$
        ..add(const _i3.XmlElementName('Operation'))
        ..add(serializers.serialize(
          operation,
          specifiedType: const FullType(OperationConfig),
        ));
    }
    return result$;
  }
}
