// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.payload_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'payload_config.g.dart';

abstract class PayloadConfig
    with _i1.AWSEquatable<PayloadConfig>
    implements Built<PayloadConfig, PayloadConfigBuilder> {
  factory PayloadConfig({int? data}) {
    return _$PayloadConfig._(data: data);
  }

  factory PayloadConfig.build([void Function(PayloadConfigBuilder) updates]) =
      _$PayloadConfig;

  const PayloadConfig._();

  static const List<_i2.SmithySerializer<PayloadConfig>> serializers = [
    PayloadConfigRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PayloadConfigBuilder b) {}
  int? get data;
  @override
  List<Object?> get props => [data];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PayloadConfig')
      ..add(
        'data',
        data,
      );
    return helper.toString();
  }
}

class PayloadConfigRestJson1Serializer
    extends _i2.StructuredSmithySerializer<PayloadConfig> {
  const PayloadConfigRestJson1Serializer() : super('PayloadConfig');

  @override
  Iterable<Type> get types => const [
        PayloadConfig,
        _$PayloadConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PayloadConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayloadConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'data':
          result.data = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PayloadConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PayloadConfig(:data) = object;
    if (data != null) {
      result$
        ..add('data')
        ..add(serializers.serialize(
          data,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
