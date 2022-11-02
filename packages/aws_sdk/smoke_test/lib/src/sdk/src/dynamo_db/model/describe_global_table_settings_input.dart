// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_global_table_settings_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_global_table_settings_input.g.dart';

abstract class DescribeGlobalTableSettingsInput
    with
        _i1.HttpInput<DescribeGlobalTableSettingsInput>,
        _i2.AWSEquatable<DescribeGlobalTableSettingsInput>
    implements
        Built<DescribeGlobalTableSettingsInput,
            DescribeGlobalTableSettingsInputBuilder> {
  factory DescribeGlobalTableSettingsInput({required String globalTableName}) {
    return _$DescribeGlobalTableSettingsInput._(
        globalTableName: globalTableName);
  }

  factory DescribeGlobalTableSettingsInput.build(
          [void Function(DescribeGlobalTableSettingsInputBuilder) updates]) =
      _$DescribeGlobalTableSettingsInput;

  const DescribeGlobalTableSettingsInput._();

  factory DescribeGlobalTableSettingsInput.fromRequest(
    DescribeGlobalTableSettingsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeGlobalTableSettingsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeGlobalTableSettingsInputBuilder b) {}

  /// The name of the global table to describe.
  String get globalTableName;
  @override
  DescribeGlobalTableSettingsInput getPayload() => this;
  @override
  List<Object?> get props => [globalTableName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeGlobalTableSettingsInput');
    helper.add(
      'globalTableName',
      globalTableName,
    );
    return helper.toString();
  }
}

class DescribeGlobalTableSettingsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeGlobalTableSettingsInput> {
  const DescribeGlobalTableSettingsInputAwsJson10Serializer()
      : super('DescribeGlobalTableSettingsInput');

  @override
  Iterable<Type> get types => const [
        DescribeGlobalTableSettingsInput,
        _$DescribeGlobalTableSettingsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeGlobalTableSettingsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeGlobalTableSettingsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'GlobalTableName':
          result.globalTableName = (serializers.deserialize(
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
    final payload = (object as DescribeGlobalTableSettingsInput);
    final result = <Object?>[
      'GlobalTableName',
      serializers.serialize(
        payload.globalTableName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
