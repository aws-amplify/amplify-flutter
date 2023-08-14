// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_query_v2.query_protocol.model.aws_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/scoped_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'aws_config.g.dart';

abstract class AwsConfig
    with _i1.AWSEquatable<AwsConfig>
    implements Built<AwsConfig, AwsConfigBuilder> {
  factory AwsConfig({
    DateTime? clockTime,
    ScopedConfig? scopedConfig,
  }) {
    return _$AwsConfig._(
      clockTime: clockTime,
      scopedConfig: scopedConfig,
    );
  }

  factory AwsConfig.build([void Function(AwsConfigBuilder) updates]) =
      _$AwsConfig;

  const AwsConfig._();

  static const List<_i2.SmithySerializer<AwsConfig>> serializers = [
    AwsConfigAwsQuerySerializer()
  ];

  /// This is the time that should be set during the course of the test. This is important for things like signing where the clock time impacts the result.
  DateTime? get clockTime;

  /// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
  ScopedConfig? get scopedConfig;
  @override
  List<Object?> get props => [
        clockTime,
        scopedConfig,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AwsConfig')
      ..add(
        'clockTime',
        clockTime,
      )
      ..add(
        'scopedConfig',
        scopedConfig,
      );
    return helper.toString();
  }
}

class AwsConfigAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<AwsConfig> {
  const AwsConfigAwsQuerySerializer() : super('AwsConfig');

  @override
  Iterable<Type> get types => const [
        AwsConfig,
        _$AwsConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AwsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsConfigBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clockTime':
          result.clockTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'scopedConfig':
          result.scopedConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ScopedConfig),
          ) as ScopedConfig));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AwsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AwsConfigResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    final AwsConfig(:clockTime, :scopedConfig) = object;
    if (clockTime != null) {
      result$
        ..add(const _i2.XmlElementName('clockTime'))
        ..add(serializers.serialize(
          clockTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (scopedConfig != null) {
      result$
        ..add(const _i2.XmlElementName('scopedConfig'))
        ..add(serializers.serialize(
          scopedConfig,
          specifiedType: const FullType(ScopedConfig),
        ));
    }
    return result$;
  }
}
