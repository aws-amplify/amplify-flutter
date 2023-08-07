// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.update_global_table_settings_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_settings_description.dart';

part 'update_global_table_settings_output.g.dart';

abstract class UpdateGlobalTableSettingsOutput
    with
        _i1.AWSEquatable<UpdateGlobalTableSettingsOutput>
    implements
        Built<UpdateGlobalTableSettingsOutput,
            UpdateGlobalTableSettingsOutputBuilder> {
  factory UpdateGlobalTableSettingsOutput({
    String? globalTableName,
    List<ReplicaSettingsDescription>? replicaSettings,
  }) {
    return _$UpdateGlobalTableSettingsOutput._(
      globalTableName: globalTableName,
      replicaSettings:
          replicaSettings == null ? null : _i2.BuiltList(replicaSettings),
    );
  }

  factory UpdateGlobalTableSettingsOutput.build(
          [void Function(UpdateGlobalTableSettingsOutputBuilder) updates]) =
      _$UpdateGlobalTableSettingsOutput;

  const UpdateGlobalTableSettingsOutput._();

  /// Constructs a [UpdateGlobalTableSettingsOutput] from a [payload] and [response].
  factory UpdateGlobalTableSettingsOutput.fromResponse(
    UpdateGlobalTableSettingsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<UpdateGlobalTableSettingsOutput>>
      serializers = [UpdateGlobalTableSettingsOutputAwsJson10Serializer()];

  /// The name of the global table.
  String? get globalTableName;

  /// The Region-specific settings for the global table.
  _i2.BuiltList<ReplicaSettingsDescription>? get replicaSettings;
  @override
  List<Object?> get props => [
        globalTableName,
        replicaSettings,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateGlobalTableSettingsOutput')
          ..add(
            'globalTableName',
            globalTableName,
          )
          ..add(
            'replicaSettings',
            replicaSettings,
          );
    return helper.toString();
  }
}

class UpdateGlobalTableSettingsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<UpdateGlobalTableSettingsOutput> {
  const UpdateGlobalTableSettingsOutputAwsJson10Serializer()
      : super('UpdateGlobalTableSettingsOutput');

  @override
  Iterable<Type> get types => const [
        UpdateGlobalTableSettingsOutput,
        _$UpdateGlobalTableSettingsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateGlobalTableSettingsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateGlobalTableSettingsOutputBuilder();
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
        case 'ReplicaSettings':
          result.replicaSettings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ReplicaSettingsDescription)],
            ),
          ) as _i2.BuiltList<ReplicaSettingsDescription>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateGlobalTableSettingsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateGlobalTableSettingsOutput(:globalTableName, :replicaSettings) =
        object;
    if (globalTableName != null) {
      result$
        ..add('GlobalTableName')
        ..add(serializers.serialize(
          globalTableName,
          specifiedType: const FullType(String),
        ));
    }
    if (replicaSettings != null) {
      result$
        ..add('ReplicaSettings')
        ..add(serializers.serialize(
          replicaSettings,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ReplicaSettingsDescription)],
          ),
        ));
    }
    return result$;
  }
}
