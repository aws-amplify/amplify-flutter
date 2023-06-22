// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String tableName,
    required _i3.PointInTimeRecoverySpecification
        pointInTimeRecoverySpecification,
  }) {
    return _$UpdateContinuousBackupsInput._(
      tableName: tableName,
      pointInTimeRecoverySpecification: pointInTimeRecoverySpecification,
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

  static const List<_i1.SmithySerializer<UpdateContinuousBackupsInput>>
      serializers = [UpdateContinuousBackupsInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateContinuousBackupsInputBuilder b) {}

  /// The name of the table.
  String get tableName;

  /// Represents the settings used to enable point in time recovery.
  _i3.PointInTimeRecoverySpecification get pointInTimeRecoverySpecification;
  @override
  UpdateContinuousBackupsInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        pointInTimeRecoverySpecification,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateContinuousBackupsInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'pointInTimeRecoverySpecification',
        pointInTimeRecoverySpecification,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PointInTimeRecoverySpecification':
          result.pointInTimeRecoverySpecification
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.PointInTimeRecoverySpecification),
          ) as _i3.PointInTimeRecoverySpecification));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateContinuousBackupsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateContinuousBackupsInput(
      :tableName,
      :pointInTimeRecoverySpecification
    ) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
      'PointInTimeRecoverySpecification',
      serializers.serialize(
        pointInTimeRecoverySpecification,
        specifiedType: const FullType(_i3.PointInTimeRecoverySpecification),
      ),
    ]);
    return result$;
  }
}
