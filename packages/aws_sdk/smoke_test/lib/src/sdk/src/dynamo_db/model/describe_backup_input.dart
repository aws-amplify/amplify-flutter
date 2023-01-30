// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_backup_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_backup_input.g.dart';

abstract class DescribeBackupInput
    with
        _i1.HttpInput<DescribeBackupInput>,
        _i2.AWSEquatable<DescribeBackupInput>
    implements Built<DescribeBackupInput, DescribeBackupInputBuilder> {
  factory DescribeBackupInput({required String backupArn}) {
    return _$DescribeBackupInput._(backupArn: backupArn);
  }

  factory DescribeBackupInput.build(
          [void Function(DescribeBackupInputBuilder) updates]) =
      _$DescribeBackupInput;

  const DescribeBackupInput._();

  factory DescribeBackupInput.fromRequest(
    DescribeBackupInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeBackupInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeBackupInputBuilder b) {}

  /// The Amazon Resource Name (ARN) associated with the backup.
  String get backupArn;
  @override
  DescribeBackupInput getPayload() => this;
  @override
  List<Object?> get props => [backupArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeBackupInput');
    helper.add(
      'backupArn',
      backupArn,
    );
    return helper.toString();
  }
}

class DescribeBackupInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeBackupInput> {
  const DescribeBackupInputAwsJson10Serializer() : super('DescribeBackupInput');

  @override
  Iterable<Type> get types => const [
        DescribeBackupInput,
        _$DescribeBackupInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeBackupInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeBackupInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'BackupArn':
          result.backupArn = (serializers.deserialize(
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
    final payload = (object as DescribeBackupInput);
    final result = <Object?>[
      'BackupArn',
      serializers.serialize(
        payload.backupArn,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
