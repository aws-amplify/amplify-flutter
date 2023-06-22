// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library custom_v1.custom.model.scoped_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:custom_v1/src/custom/model/client_config.dart' as _i4;
import 'package:custom_v1/src/custom/model/environment_config.dart' as _i2;
import 'package:custom_v1/src/custom/model/file_config_settings.dart' as _i3;
import 'package:custom_v1/src/custom/model/operation_config.dart' as _i5;
import 'package:smithy/smithy.dart' as _i7;

part 'scoped_config.g.dart';

/// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
abstract class ScopedConfig
    with _i1.AWSEquatable<ScopedConfig>
    implements Built<ScopedConfig, ScopedConfigBuilder> {
  /// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
  factory ScopedConfig({
    _i2.EnvironmentConfig? environment,
    Map<String, _i3.FileConfigSettings>? configFile,
    Map<String, _i3.FileConfigSettings>? credentialsFile,
    _i4.ClientConfig? client,
    _i5.OperationConfig? operation,
  }) {
    return _$ScopedConfig._(
      environment: environment,
      configFile: configFile == null ? null : _i6.BuiltMap(configFile),
      credentialsFile:
          credentialsFile == null ? null : _i6.BuiltMap(credentialsFile),
      client: client,
      operation: operation,
    );
  }

  /// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
  factory ScopedConfig.build([void Function(ScopedConfigBuilder) updates]) =
      _$ScopedConfig;

  const ScopedConfig._();

  static const List<_i7.SmithySerializer<ScopedConfig>> serializers = [
    ScopedConfigRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScopedConfigBuilder b) {}

  /// Config settings that can be set as environment variables.
  _i2.EnvironmentConfig? get environment;

  /// A shape representing a parsed config file, which is a map of profile names to configuration sets.
  _i6.BuiltMap<String, _i3.FileConfigSettings>? get configFile;

  /// A shape representing a parsed config file, which is a map of profile names to configuration sets.
  _i6.BuiltMap<String, _i3.FileConfigSettings>? get credentialsFile;

  /// Configuration that is set on the constructed client.
  _i4.ClientConfig? get client;

  /// Configuration that is set for the scope of a single operation.
  _i5.OperationConfig? get operation;
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

class ScopedConfigRestJson1Serializer
    extends _i7.StructuredSmithySerializer<ScopedConfig> {
  const ScopedConfigRestJson1Serializer() : super('ScopedConfig');

  @override
  Iterable<Type> get types => const [
        ScopedConfig,
        _$ScopedConfig,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
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
        case 'client':
          result.client.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ClientConfig),
          ) as _i4.ClientConfig));
        case 'configFile':
          result.configFile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(_i3.FileConfigSettings),
              ],
            ),
          ) as _i6.BuiltMap<String, _i3.FileConfigSettings>));
        case 'credentialsFile':
          result.credentialsFile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(_i3.FileConfigSettings),
              ],
            ),
          ) as _i6.BuiltMap<String, _i3.FileConfigSettings>));
        case 'environment':
          result.environment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EnvironmentConfig),
          ) as _i2.EnvironmentConfig));
        case 'operation':
          result.operation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.OperationConfig),
          ) as _i5.OperationConfig));
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
    final result$ = <Object?>[];
    final ScopedConfig(
      :client,
      :configFile,
      :credentialsFile,
      :environment,
      :operation
    ) = object;
    if (client != null) {
      result$
        ..add('client')
        ..add(serializers.serialize(
          client,
          specifiedType: const FullType(_i4.ClientConfig),
        ));
    }
    if (configFile != null) {
      result$
        ..add('configFile')
        ..add(serializers.serialize(
          configFile,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(_i3.FileConfigSettings),
            ],
          ),
        ));
    }
    if (credentialsFile != null) {
      result$
        ..add('credentialsFile')
        ..add(serializers.serialize(
          credentialsFile,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(_i3.FileConfigSettings),
            ],
          ),
        ));
    }
    if (environment != null) {
      result$
        ..add('environment')
        ..add(serializers.serialize(
          environment,
          specifiedType: const FullType(_i2.EnvironmentConfig),
        ));
    }
    if (operation != null) {
      result$
        ..add('operation')
        ..add(serializers.serialize(
          operation,
          specifiedType: const FullType(_i5.OperationConfig),
        ));
    }
    return result$;
  }
}
