// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.update_global_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_update.dart'
    as _i3;

part 'update_global_table_input.g.dart';

abstract class UpdateGlobalTableInput
    with
        _i1.HttpInput<UpdateGlobalTableInput>,
        _i2.AWSEquatable<UpdateGlobalTableInput>
    implements Built<UpdateGlobalTableInput, UpdateGlobalTableInputBuilder> {
  factory UpdateGlobalTableInput({
    required String globalTableName,
    required List<_i3.ReplicaUpdate> replicaUpdates,
  }) {
    return _$UpdateGlobalTableInput._(
      globalTableName: globalTableName,
      replicaUpdates: _i4.BuiltList(replicaUpdates),
    );
  }

  factory UpdateGlobalTableInput.build(
          [void Function(UpdateGlobalTableInputBuilder) updates]) =
      _$UpdateGlobalTableInput;

  const UpdateGlobalTableInput._();

  factory UpdateGlobalTableInput.fromRequest(
    UpdateGlobalTableInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateGlobalTableInput>> serializers =
      [UpdateGlobalTableInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateGlobalTableInputBuilder b) {}

  /// The global table name.
  String get globalTableName;

  /// A list of Regions that should be added or removed from the global table.
  _i4.BuiltList<_i3.ReplicaUpdate> get replicaUpdates;
  @override
  UpdateGlobalTableInput getPayload() => this;
  @override
  List<Object?> get props => [
        globalTableName,
        replicaUpdates,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateGlobalTableInput')
      ..add(
        'globalTableName',
        globalTableName,
      )
      ..add(
        'replicaUpdates',
        replicaUpdates,
      );
    return helper.toString();
  }
}

class UpdateGlobalTableInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<UpdateGlobalTableInput> {
  const UpdateGlobalTableInputAwsJson10Serializer()
      : super('UpdateGlobalTableInput');

  @override
  Iterable<Type> get types => const [
        UpdateGlobalTableInput,
        _$UpdateGlobalTableInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateGlobalTableInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateGlobalTableInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GlobalTableName':
          result.globalTableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ReplicaUpdates':
          result.replicaUpdates.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ReplicaUpdate)],
            ),
          ) as _i4.BuiltList<_i3.ReplicaUpdate>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateGlobalTableInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateGlobalTableInput(:globalTableName, :replicaUpdates) = object;
    result$.addAll([
      'GlobalTableName',
      serializers.serialize(
        globalTableName,
        specifiedType: const FullType(String),
      ),
      'ReplicaUpdates',
      serializers.serialize(
        replicaUpdates,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.ReplicaUpdate)],
        ),
      ),
    ]);
    return result$;
  }
}
