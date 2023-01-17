// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.update_continuous_backups_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_specification.dart'
    as _i3;

part 'update_continuous_backups_input.g.dart';

abstract class UpdateContinuousBackupsInput
    with
        _i1.HttpInput<UpdateContinuousBackupsInput>,
        _i2.AWSEquatable<UpdateContinuousBackupsInput>
    implements
        Built<UpdateContinuousBackupsInput,
            UpdateContinuousBackupsInputBuilder> {
  factory UpdateContinuousBackupsInput({
    required _i3.PointInTimeRecoverySpecification
        pointInTimeRecoverySpecification,
    required String tableName,
  }) {
    return _$UpdateContinuousBackupsInput._(
      pointInTimeRecoverySpecification: pointInTimeRecoverySpecification,
      tableName: tableName,
    );
  }

  factory UpdateContinuousBackupsInput.build(
          [void Function(UpdateContinuousBackupsInputBuilder) updates]) =
      _$UpdateContinuousBackupsInput;

  const UpdateContinuousBackupsInput._();

  factory UpdateContinuousBackupsInput.fromRequest(
    UpdateContinuousBackupsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    UpdateContinuousBackupsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateContinuousBackupsInputBuilder b) {}

  /// Represents the settings used to enable point in time recovery.
  _i3.PointInTimeRecoverySpecification get pointInTimeRecoverySpecification;

  /// The name of the table.
  String get tableName;
  @override
  UpdateContinuousBackupsInput getPayload() => this;
  @override
  List<Object?> get props => [
        pointInTimeRecoverySpecification,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateContinuousBackupsInput');
    helper.add(
      'pointInTimeRecoverySpecification',
      pointInTimeRecoverySpecification,
    );
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class UpdateContinuousBackupsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<UpdateContinuousBackupsInput> {
  const UpdateContinuousBackupsInputAwsJson10Serializer()
      : super('UpdateContinuousBackupsInput');

  @override
  Iterable<Type> get types => const [
        UpdateContinuousBackupsInput,
        _$UpdateContinuousBackupsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateContinuousBackupsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateContinuousBackupsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'PointInTimeRecoverySpecification':
          result.pointInTimeRecoverySpecification
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.PointInTimeRecoverySpecification),
          ) as _i3.PointInTimeRecoverySpecification));
          break;
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as UpdateContinuousBackupsInput);
    final result = <Object?>[
      'PointInTimeRecoverySpecification',
      serializers.serialize(
        payload.pointInTimeRecoverySpecification,
        specifiedType: const FullType(_i3.PointInTimeRecoverySpecification),
      ),
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
