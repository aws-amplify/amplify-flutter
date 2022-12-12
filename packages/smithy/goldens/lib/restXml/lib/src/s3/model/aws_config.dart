// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v1.s3.model.aws_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/s3/model/scoped_config.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'aws_config.g.dart';

abstract class AwsConfig
    with _i1.AWSEquatable<AwsConfig>
    implements Built<AwsConfig, AwsConfigBuilder> {
  factory AwsConfig({
    DateTime? clockTime,
    _i2.ScopedConfig? scopedConfig,
  }) {
    return _$AwsConfig._(
      clockTime: clockTime,
      scopedConfig: scopedConfig,
    );
  }

  factory AwsConfig.build([void Function(AwsConfigBuilder) updates]) =
      _$AwsConfig;

  const AwsConfig._();

  static const List<_i3.SmithySerializer> serializers = [
    AwsConfigRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AwsConfigBuilder b) {}

  /// This is the time that should be set during the course of the test. This is important for things like signing where the clock time impacts the result.
  DateTime? get clockTime;

  /// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
  _i2.ScopedConfig? get scopedConfig;
  @override
  List<Object?> get props => [
        clockTime,
        scopedConfig,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AwsConfig');
    helper.add(
      'clockTime',
      clockTime,
    );
    helper.add(
      'scopedConfig',
      scopedConfig,
    );
    return helper.toString();
  }
}

class AwsConfigRestXmlSerializer
    extends _i3.StructuredSmithySerializer<AwsConfig> {
  const AwsConfigRestXmlSerializer() : super('AwsConfig');

  @override
  Iterable<Type> get types => const [
        AwsConfig,
        _$AwsConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AwsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'clockTime':
          if (value != null) {
            result.clockTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'scopedConfig':
          if (value != null) {
            result.scopedConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ScopedConfig),
            ) as _i2.ScopedConfig));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as AwsConfig);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AwsConfig',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.clockTime != null) {
      result
        ..add(const _i3.XmlElementName('clockTime'))
        ..add(serializers.serialize(
          payload.clockTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.scopedConfig != null) {
      result
        ..add(const _i3.XmlElementName('scopedConfig'))
        ..add(serializers.serialize(
          payload.scopedConfig!,
          specifiedType: const FullType(_i2.ScopedConfig),
        ));
    }
    return result;
  }
}
