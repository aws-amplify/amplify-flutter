// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.cors_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/cors_rule.dart' as _i2;

part 'cors_configuration.g.dart';

/// Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the _Amazon S3 User Guide_.
abstract class CorsConfiguration
    with _i1.AWSEquatable<CorsConfiguration>
    implements Built<CorsConfiguration, CorsConfigurationBuilder> {
  /// Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the _Amazon S3 User Guide_.
  factory CorsConfiguration({required List<_i2.CorsRule> corsRules}) {
    return _$CorsConfiguration._(corsRules: _i3.BuiltList(corsRules));
  }

  /// Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the _Amazon S3 User Guide_.
  factory CorsConfiguration.build(
      [void Function(CorsConfigurationBuilder) updates]) = _$CorsConfiguration;

  const CorsConfiguration._();

  static const List<_i4.SmithySerializer> serializers = [
    CorsConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CorsConfigurationBuilder b) {}

  /// A set of origins and methods (cross-origin access that you want to allow). You can add up to 100 rules to the configuration.
  _i3.BuiltList<_i2.CorsRule> get corsRules;
  @override
  List<Object?> get props => [corsRules];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CorsConfiguration');
    helper.add(
      'corsRules',
      corsRules,
    );
    return helper.toString();
  }
}

class CorsConfigurationRestXmlSerializer
    extends _i4.StructuredSmithySerializer<CorsConfiguration> {
  const CorsConfigurationRestXmlSerializer() : super('CorsConfiguration');

  @override
  Iterable<Type> get types => const [
        CorsConfiguration,
        _$CorsConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CorsConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CORSRule':
          result.corsRules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.CorsRule),
          ) as _i2.CorsRule));
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
    final payload = (object as CorsConfiguration);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CorsConfiguration',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result.addAll(
        const _i4.XmlBuiltListSerializer(memberName: 'CORSRule').serialize(
      serializers,
      payload.corsRules,
      specifiedType: const FullType.nullable(
        _i3.BuiltList,
        [FullType(_i2.CorsRule)],
      ),
    ));
    return result;
  }
}
