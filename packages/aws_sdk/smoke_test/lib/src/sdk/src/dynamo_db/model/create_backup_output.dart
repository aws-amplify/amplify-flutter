// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.create_backup_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_details.dart'
    as _i2;

part 'create_backup_output.g.dart';

abstract class CreateBackupOutput
    with _i1.AWSEquatable<CreateBackupOutput>
    implements Built<CreateBackupOutput, CreateBackupOutputBuilder> {
  factory CreateBackupOutput({_i2.BackupDetails? backupDetails}) {
    return _$CreateBackupOutput._(backupDetails: backupDetails);
  }

  factory CreateBackupOutput.build(
          [void Function(CreateBackupOutputBuilder) updates]) =
      _$CreateBackupOutput;

  const CreateBackupOutput._();

  /// Constructs a [CreateBackupOutput] from a [payload] and [response].
  factory CreateBackupOutput.fromResponse(
    CreateBackupOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateBackupOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateBackupOutputBuilder b) {}

  /// Contains the details of the backup created for the table.
  _i2.BackupDetails? get backupDetails;
  @override
  List<Object?> get props => [backupDetails];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateBackupOutput');
    helper.add(
      'backupDetails',
      backupDetails,
    );
    return helper.toString();
  }
}

class CreateBackupOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<CreateBackupOutput> {
  const CreateBackupOutputAwsJson10Serializer() : super('CreateBackupOutput');

  @override
  Iterable<Type> get types => const [
        CreateBackupOutput,
        _$CreateBackupOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  CreateBackupOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBackupOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'BackupDetails':
          if (value != null) {
            result.backupDetails.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.BackupDetails),
            ) as _i2.BackupDetails));
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
    final payload = (object as CreateBackupOutput);
    final result = <Object?>[];
    if (payload.backupDetails != null) {
      result
        ..add('BackupDetails')
        ..add(serializers.serialize(
          payload.backupDetails!,
          specifiedType: const FullType(_i2.BackupDetails),
        ));
    }
    return result;
  }
}
