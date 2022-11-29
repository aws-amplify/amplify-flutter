// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.delete_backup_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_backup_input.g.dart';

abstract class DeleteBackupInput
    with _i1.HttpInput<DeleteBackupInput>, _i2.AWSEquatable<DeleteBackupInput>
    implements Built<DeleteBackupInput, DeleteBackupInputBuilder> {
  factory DeleteBackupInput({required String backupArn}) {
    return _$DeleteBackupInput._(backupArn: backupArn);
  }

  factory DeleteBackupInput.build(
      [void Function(DeleteBackupInputBuilder) updates]) = _$DeleteBackupInput;

  const DeleteBackupInput._();

  factory DeleteBackupInput.fromRequest(
    DeleteBackupInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteBackupInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBackupInputBuilder b) {}

  /// The ARN associated with the backup.
  String get backupArn;
  @override
  DeleteBackupInput getPayload() => this;
  @override
  List<Object?> get props => [backupArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteBackupInput');
    helper.add(
      'backupArn',
      backupArn,
    );
    return helper.toString();
  }
}

class DeleteBackupInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DeleteBackupInput> {
  const DeleteBackupInputAwsJson10Serializer() : super('DeleteBackupInput');

  @override
  Iterable<Type> get types => const [
        DeleteBackupInput,
        _$DeleteBackupInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DeleteBackupInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteBackupInputBuilder();
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
    final payload = (object as DeleteBackupInput);
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
