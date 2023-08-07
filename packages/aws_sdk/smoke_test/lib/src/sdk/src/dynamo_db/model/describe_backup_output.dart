// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.describe_backup_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_description.dart';

part 'describe_backup_output.g.dart';

abstract class DescribeBackupOutput
    with _i1.AWSEquatable<DescribeBackupOutput>
    implements Built<DescribeBackupOutput, DescribeBackupOutputBuilder> {
  factory DescribeBackupOutput({BackupDescription? backupDescription}) {
    return _$DescribeBackupOutput._(backupDescription: backupDescription);
  }

  factory DescribeBackupOutput.build(
          [void Function(DescribeBackupOutputBuilder) updates]) =
      _$DescribeBackupOutput;

  const DescribeBackupOutput._();

  /// Constructs a [DescribeBackupOutput] from a [payload] and [response].
  factory DescribeBackupOutput.fromResponse(
    DescribeBackupOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DescribeBackupOutput>> serializers = [
    DescribeBackupOutputAwsJson10Serializer()
  ];

  /// Contains the description of the backup created for the table.
  BackupDescription? get backupDescription;
  @override
  List<Object?> get props => [backupDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeBackupOutput')
      ..add(
        'backupDescription',
        backupDescription,
      );
    return helper.toString();
  }
}

class DescribeBackupOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<DescribeBackupOutput> {
  const DescribeBackupOutputAwsJson10Serializer()
      : super('DescribeBackupOutput');

  @override
  Iterable<Type> get types => const [
        DescribeBackupOutput,
        _$DescribeBackupOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeBackupOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeBackupOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BackupDescription':
          result.backupDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(BackupDescription),
          ) as BackupDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeBackupOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeBackupOutput(:backupDescription) = object;
    if (backupDescription != null) {
      result$
        ..add('BackupDescription')
        ..add(serializers.serialize(
          backupDescription,
          specifiedType: const FullType(BackupDescription),
        ));
    }
    return result$;
  }
}
