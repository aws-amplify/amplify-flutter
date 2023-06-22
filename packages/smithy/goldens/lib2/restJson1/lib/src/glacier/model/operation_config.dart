// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.glacier.model.operation_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/glacier/model/s3_config.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'operation_config.g.dart';

/// Configuration that is set for the scope of a single operation.
abstract class OperationConfig
    with _i1.AWSEquatable<OperationConfig>
    implements Built<OperationConfig, OperationConfigBuilder> {
  /// Configuration that is set for the scope of a single operation.
  factory OperationConfig({_i2.S3Config? s3}) {
    return _$OperationConfig._(s3: s3);
  }

  /// Configuration that is set for the scope of a single operation.
  factory OperationConfig.build(
      [void Function(OperationConfigBuilder) updates]) = _$OperationConfig;

  const OperationConfig._();

  static const List<_i3.SmithySerializer<OperationConfig>> serializers = [
    OperationConfigRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationConfigBuilder b) {}

  /// Configuration specific to S3.
  _i2.S3Config? get s3;
  @override
  List<Object?> get props => [s3];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OperationConfig')
      ..add(
        's3',
        s3,
      );
    return helper.toString();
  }
}

class OperationConfigRestJson1Serializer
    extends _i3.StructuredSmithySerializer<OperationConfig> {
  const OperationConfigRestJson1Serializer() : super('OperationConfig');

  @override
  Iterable<Type> get types => const [
        OperationConfig,
        _$OperationConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  OperationConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 's3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.S3Config),
          ) as _i2.S3Config));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OperationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OperationConfig(:s3) = object;
    if (s3 != null) {
      result$
        ..add('s3')
        ..add(serializers.serialize(
          s3,
          specifiedType: const FullType(_i2.S3Config),
        ));
    }
    return result$;
  }
}
