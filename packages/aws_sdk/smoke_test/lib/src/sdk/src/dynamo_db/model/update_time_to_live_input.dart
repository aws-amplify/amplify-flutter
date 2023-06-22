// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.update_time_to_live_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_specification.dart'
    as _i3;

part 'update_time_to_live_input.g.dart';

/// Represents the input of an `UpdateTimeToLive` operation.
abstract class UpdateTimeToLiveInput
    with
        _i1.HttpInput<UpdateTimeToLiveInput>,
        _i2.AWSEquatable<UpdateTimeToLiveInput>
    implements Built<UpdateTimeToLiveInput, UpdateTimeToLiveInputBuilder> {
  /// Represents the input of an `UpdateTimeToLive` operation.
  factory UpdateTimeToLiveInput({
    required String tableName,
    required _i3.TimeToLiveSpecification timeToLiveSpecification,
  }) {
    return _$UpdateTimeToLiveInput._(
      tableName: tableName,
      timeToLiveSpecification: timeToLiveSpecification,
    );
  }

  /// Represents the input of an `UpdateTimeToLive` operation.
  factory UpdateTimeToLiveInput.build(
          [void Function(UpdateTimeToLiveInputBuilder) updates]) =
      _$UpdateTimeToLiveInput;

  const UpdateTimeToLiveInput._();

  factory UpdateTimeToLiveInput.fromRequest(
    UpdateTimeToLiveInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateTimeToLiveInput>> serializers = [
    UpdateTimeToLiveInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateTimeToLiveInputBuilder b) {}

  /// The name of the table to be configured.
  String get tableName;

  /// Represents the settings used to enable or disable Time to Live for the specified table.
  _i3.TimeToLiveSpecification get timeToLiveSpecification;
  @override
  UpdateTimeToLiveInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        timeToLiveSpecification,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateTimeToLiveInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'timeToLiveSpecification',
        timeToLiveSpecification,
      );
    return helper.toString();
  }
}

class UpdateTimeToLiveInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<UpdateTimeToLiveInput> {
  const UpdateTimeToLiveInputAwsJson10Serializer()
      : super('UpdateTimeToLiveInput');

  @override
  Iterable<Type> get types => const [
        UpdateTimeToLiveInput,
        _$UpdateTimeToLiveInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateTimeToLiveInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTimeToLiveInputBuilder();
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
        case 'TimeToLiveSpecification':
          result.timeToLiveSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TimeToLiveSpecification),
          ) as _i3.TimeToLiveSpecification));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateTimeToLiveInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateTimeToLiveInput(:tableName, :timeToLiveSpecification) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
      'TimeToLiveSpecification',
      serializers.serialize(
        timeToLiveSpecification,
        specifiedType: const FullType(_i3.TimeToLiveSpecification),
      ),
    ]);
    return result$;
  }
}
