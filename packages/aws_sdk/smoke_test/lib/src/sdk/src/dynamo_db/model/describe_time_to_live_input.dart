// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.describe_time_to_live_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_time_to_live_input.g.dart';

abstract class DescribeTimeToLiveInput
    with
        _i1.HttpInput<DescribeTimeToLiveInput>,
        _i2.AWSEquatable<DescribeTimeToLiveInput>
    implements Built<DescribeTimeToLiveInput, DescribeTimeToLiveInputBuilder> {
  factory DescribeTimeToLiveInput({required String tableName}) {
    return _$DescribeTimeToLiveInput._(tableName: tableName);
  }

  factory DescribeTimeToLiveInput.build(
          [void Function(DescribeTimeToLiveInputBuilder) updates]) =
      _$DescribeTimeToLiveInput;

  const DescribeTimeToLiveInput._();

  factory DescribeTimeToLiveInput.fromRequest(
    DescribeTimeToLiveInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeTimeToLiveInput>> serializers =
      [DescribeTimeToLiveInputAwsJson10Serializer()];

  /// The name of the table to be described.
  String get tableName;
  @override
  DescribeTimeToLiveInput getPayload() => this;
  @override
  List<Object?> get props => [tableName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTimeToLiveInput')
      ..add(
        'tableName',
        tableName,
      );
    return helper.toString();
  }
}

class DescribeTimeToLiveInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeTimeToLiveInput> {
  const DescribeTimeToLiveInputAwsJson10Serializer()
      : super('DescribeTimeToLiveInput');

  @override
  Iterable<Type> get types => const [
        DescribeTimeToLiveInput,
        _$DescribeTimeToLiveInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeTimeToLiveInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTimeToLiveInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeTimeToLiveInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeTimeToLiveInput(:tableName) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
