// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_global_table_settings_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_settings_description.dart'
    as _i2;

part 'describe_global_table_settings_output.g.dart';

abstract class DescribeGlobalTableSettingsOutput
    with
        _i1.AWSEquatable<DescribeGlobalTableSettingsOutput>
    implements
        Built<DescribeGlobalTableSettingsOutput,
            DescribeGlobalTableSettingsOutputBuilder> {
  factory DescribeGlobalTableSettingsOutput({
    String? globalTableName,
    List<_i2.ReplicaSettingsDescription>? replicaSettings,
  }) {
    return _$DescribeGlobalTableSettingsOutput._(
      globalTableName: globalTableName,
      replicaSettings:
          replicaSettings == null ? null : _i3.BuiltList(replicaSettings),
    );
  }

  factory DescribeGlobalTableSettingsOutput.build(
          [void Function(DescribeGlobalTableSettingsOutputBuilder) updates]) =
      _$DescribeGlobalTableSettingsOutput;

  const DescribeGlobalTableSettingsOutput._();

  /// Constructs a [DescribeGlobalTableSettingsOutput] from a [payload] and [response].
  factory DescribeGlobalTableSettingsOutput.fromResponse(
    DescribeGlobalTableSettingsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeGlobalTableSettingsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeGlobalTableSettingsOutputBuilder b) {}

  /// The name of the global table.
  String? get globalTableName;

  /// The Region-specific settings for the global table.
  _i3.BuiltList<_i2.ReplicaSettingsDescription>? get replicaSettings;
  @override
  List<Object?> get props => [
        globalTableName,
        replicaSettings,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeGlobalTableSettingsOutput');
    helper.add(
      'globalTableName',
      globalTableName,
    );
    helper.add(
      'replicaSettings',
      replicaSettings,
    );
    return helper.toString();
  }
}

class DescribeGlobalTableSettingsOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<DescribeGlobalTableSettingsOutput> {
  const DescribeGlobalTableSettingsOutputAwsJson10Serializer()
      : super('DescribeGlobalTableSettingsOutput');

  @override
  Iterable<Type> get types => const [
        DescribeGlobalTableSettingsOutput,
        _$DescribeGlobalTableSettingsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeGlobalTableSettingsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeGlobalTableSettingsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'GlobalTableName':
          if (value != null) {
            result.globalTableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ReplicaSettings':
          if (value != null) {
            result.replicaSettings.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ReplicaSettingsDescription)],
              ),
            ) as _i3.BuiltList<_i2.ReplicaSettingsDescription>));
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
    final payload = (object as DescribeGlobalTableSettingsOutput);
    final result = <Object?>[];
    if (payload.globalTableName != null) {
      result
        ..add('GlobalTableName')
        ..add(serializers.serialize(
          payload.globalTableName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.replicaSettings != null) {
      result
        ..add('ReplicaSettings')
        ..add(serializers.serialize(
          payload.replicaSettings!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ReplicaSettingsDescription)],
          ),
        ));
    }
    return result;
  }
}
