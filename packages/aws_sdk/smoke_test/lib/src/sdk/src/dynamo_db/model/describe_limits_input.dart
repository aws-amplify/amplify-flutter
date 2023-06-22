// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.describe_limits_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_limits_input.g.dart';

/// Represents the input of a `DescribeLimits` operation. Has no content.
abstract class DescribeLimitsInput
    with
        _i1.HttpInput<DescribeLimitsInput>,
        _i2.AWSEquatable<DescribeLimitsInput>
    implements
        Built<DescribeLimitsInput, DescribeLimitsInputBuilder>,
        _i1.EmptyPayload {
  /// Represents the input of a `DescribeLimits` operation. Has no content.
  factory DescribeLimitsInput() {
    return _$DescribeLimitsInput._();
  }

  /// Represents the input of a `DescribeLimits` operation. Has no content.
  factory DescribeLimitsInput.build(
          [void Function(DescribeLimitsInputBuilder) updates]) =
      _$DescribeLimitsInput;

  const DescribeLimitsInput._();

  factory DescribeLimitsInput.fromRequest(
    DescribeLimitsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeLimitsInput>> serializers = [
    DescribeLimitsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLimitsInputBuilder b) {}
  @override
  DescribeLimitsInput getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLimitsInput');
    return helper.toString();
  }
}

class DescribeLimitsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeLimitsInput> {
  const DescribeLimitsInputAwsJson10Serializer() : super('DescribeLimitsInput');

  @override
  Iterable<Type> get types => const [
        DescribeLimitsInput,
        _$DescribeLimitsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeLimitsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DescribeLimitsInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeLimitsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
