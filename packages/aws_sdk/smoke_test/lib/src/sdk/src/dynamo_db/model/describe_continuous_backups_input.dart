// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.describe_continuous_backups_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_continuous_backups_input.g.dart';

abstract class DescribeContinuousBackupsInput
    with
        _i1.HttpInput<DescribeContinuousBackupsInput>,
        _i2.AWSEquatable<DescribeContinuousBackupsInput>
    implements
        Built<DescribeContinuousBackupsInput,
            DescribeContinuousBackupsInputBuilder> {
  factory DescribeContinuousBackupsInput({required String tableName}) {
    return _$DescribeContinuousBackupsInput._(tableName: tableName);
  }

  factory DescribeContinuousBackupsInput.build(
          [void Function(DescribeContinuousBackupsInputBuilder) updates]) =
      _$DescribeContinuousBackupsInput;

  const DescribeContinuousBackupsInput._();

  factory DescribeContinuousBackupsInput.fromRequest(
    DescribeContinuousBackupsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeContinuousBackupsInput>>
      serializers = [DescribeContinuousBackupsInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeContinuousBackupsInputBuilder b) {}

  /// Name of the table for which the customer wants to check the continuous backups and point in time recovery settings.
  String get tableName;
  @override
  DescribeContinuousBackupsInput getPayload() => this;
  @override
  List<Object?> get props => [tableName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeContinuousBackupsInput')
      ..add(
        'tableName',
        tableName,
      );
    return helper.toString();
  }
}

class DescribeContinuousBackupsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeContinuousBackupsInput> {
  const DescribeContinuousBackupsInputAwsJson10Serializer()
      : super('DescribeContinuousBackupsInput');

  @override
  Iterable<Type> get types => const [
        DescribeContinuousBackupsInput,
        _$DescribeContinuousBackupsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeContinuousBackupsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeContinuousBackupsInputBuilder();
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
    DescribeContinuousBackupsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeContinuousBackupsInput(:tableName) = object;
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
