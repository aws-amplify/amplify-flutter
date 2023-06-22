// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.create_backup_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_backup_input.g.dart';

abstract class CreateBackupInput
    with _i1.HttpInput<CreateBackupInput>, _i2.AWSEquatable<CreateBackupInput>
    implements Built<CreateBackupInput, CreateBackupInputBuilder> {
  factory CreateBackupInput({
    required String tableName,
    required String backupName,
  }) {
    return _$CreateBackupInput._(
      tableName: tableName,
      backupName: backupName,
    );
  }

  factory CreateBackupInput.build(
      [void Function(CreateBackupInputBuilder) updates]) = _$CreateBackupInput;

  const CreateBackupInput._();

  factory CreateBackupInput.fromRequest(
    CreateBackupInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateBackupInput>> serializers = [
    CreateBackupInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateBackupInputBuilder b) {}

  /// The name of the table.
  String get tableName;

  /// Specified name for the backup.
  String get backupName;
  @override
  CreateBackupInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        backupName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateBackupInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'backupName',
        backupName,
      );
    return helper.toString();
  }
}

class CreateBackupInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<CreateBackupInput> {
  const CreateBackupInputAwsJson10Serializer() : super('CreateBackupInput');

  @override
  Iterable<Type> get types => const [
        CreateBackupInput,
        _$CreateBackupInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  CreateBackupInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBackupInputBuilder();
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
        case 'BackupName':
          result.backupName = (serializers.deserialize(
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
    CreateBackupInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateBackupInput(:tableName, :backupName) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
      'BackupName',
      serializers.serialize(
        backupName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
