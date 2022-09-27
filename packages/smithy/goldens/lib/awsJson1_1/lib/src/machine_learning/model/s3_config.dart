// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1_v1.machine_learning.model.s3_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v1/src/machine_learning/model/s3_addressing_style.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 's3_config.g.dart';

/// Configuration specific to S3.
abstract class S3Config
    with _i1.AWSEquatable<S3Config>
    implements Built<S3Config, S3ConfigBuilder> {
  /// Configuration specific to S3.
  factory S3Config({
    _i2.S3AddressingStyle? addressingStyle,
    bool? useAccelerateEndpoint,
    bool? useDualstackEndpoint,
  }) {
    return _$S3Config._(
      addressingStyle: addressingStyle,
      useAccelerateEndpoint: useAccelerateEndpoint,
      useDualstackEndpoint: useDualstackEndpoint,
    );
  }

  /// Configuration specific to S3.
  factory S3Config.build([void Function(S3ConfigBuilder) updates]) = _$S3Config;

  const S3Config._();

  static const List<_i3.SmithySerializer> serializers = [
    S3ConfigAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(S3ConfigBuilder b) {}

  /// Controls the S3 addressing bucket style.
  _i2.S3AddressingStyle? get addressingStyle;
  bool? get useAccelerateEndpoint;
  bool? get useDualstackEndpoint;
  @override
  List<Object?> get props => [
        addressingStyle,
        useAccelerateEndpoint,
        useDualstackEndpoint,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3Config');
    helper.add(
      'addressingStyle',
      addressingStyle,
    );
    helper.add(
      'useAccelerateEndpoint',
      useAccelerateEndpoint,
    );
    helper.add(
      'useDualstackEndpoint',
      useDualstackEndpoint,
    );
    return helper.toString();
  }
}

class S3ConfigAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<S3Config> {
  const S3ConfigAwsJson11Serializer() : super('S3Config');

  @override
  Iterable<Type> get types => const [
        S3Config,
        _$S3Config,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  S3Config deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3ConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'addressing_style':
          if (value != null) {
            result.addressingStyle = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.S3AddressingStyle),
            ) as _i2.S3AddressingStyle);
          }
          break;
        case 'use_accelerate_endpoint':
          if (value != null) {
            result.useAccelerateEndpoint = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'use_dualstack_endpoint':
          if (value != null) {
            result.useDualstackEndpoint = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as S3Config);
    final result = <Object?>[];
    if (payload.addressingStyle != null) {
      result
        ..add('addressing_style')
        ..add(serializers.serialize(
          payload.addressingStyle!,
          specifiedType: const FullType(_i2.S3AddressingStyle),
        ));
    }
    if (payload.useAccelerateEndpoint != null) {
      result
        ..add('use_accelerate_endpoint')
        ..add(serializers.serialize(
          payload.useAccelerateEndpoint!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.useDualstackEndpoint != null) {
      result
        ..add('use_dualstack_endpoint')
        ..add(serializers.serialize(
          payload.useDualstackEndpoint!,
          specifiedType: const FullType(bool),
        ));
    }
    return result;
  }
}
