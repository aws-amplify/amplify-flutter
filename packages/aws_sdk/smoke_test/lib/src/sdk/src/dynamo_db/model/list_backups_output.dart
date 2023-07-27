// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.list_backups_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_summary.dart'
    as _i2;

part 'list_backups_output.g.dart';

abstract class ListBackupsOutput
    with _i1.AWSEquatable<ListBackupsOutput>
    implements Built<ListBackupsOutput, ListBackupsOutputBuilder> {
  factory ListBackupsOutput({
    List<_i2.BackupSummary>? backupSummaries,
    String? lastEvaluatedBackupArn,
  }) {
    return _$ListBackupsOutput._(
      backupSummaries:
          backupSummaries == null ? null : _i3.BuiltList(backupSummaries),
      lastEvaluatedBackupArn: lastEvaluatedBackupArn,
    );
  }

  factory ListBackupsOutput.build(
      [void Function(ListBackupsOutputBuilder) updates]) = _$ListBackupsOutput;

  const ListBackupsOutput._();

  /// Constructs a [ListBackupsOutput] from a [payload] and [response].
  factory ListBackupsOutput.fromResponse(
    ListBackupsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListBackupsOutput>> serializers = [
    ListBackupsOutputAwsJson10Serializer()
  ];

  /// List of `BackupSummary` objects.
  _i3.BuiltList<_i2.BackupSummary>? get backupSummaries;

  /// The ARN of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the `ExclusiveStartBackupArn` of a new `ListBackups` operation in order to fetch the next page of results.
  ///
  /// If `LastEvaluatedBackupArn` is empty, then the last page of results has been processed and there are no more results to be retrieved.
  ///
  /// If `LastEvaluatedBackupArn` is not empty, this may or may not indicate that there is more data to be returned. All results are guaranteed to have been returned if and only if no value for `LastEvaluatedBackupArn` is returned.
  String? get lastEvaluatedBackupArn;
  @override
  List<Object?> get props => [
        backupSummaries,
        lastEvaluatedBackupArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListBackupsOutput')
      ..add(
        'backupSummaries',
        backupSummaries,
      )
      ..add(
        'lastEvaluatedBackupArn',
        lastEvaluatedBackupArn,
      );
    return helper.toString();
  }
}

class ListBackupsOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ListBackupsOutput> {
  const ListBackupsOutputAwsJson10Serializer() : super('ListBackupsOutput');

  @override
  Iterable<Type> get types => const [
        ListBackupsOutput,
        _$ListBackupsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListBackupsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListBackupsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BackupSummaries':
          result.backupSummaries.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.BackupSummary)],
            ),
          ) as _i3.BuiltList<_i2.BackupSummary>));
        case 'LastEvaluatedBackupArn':
          result.lastEvaluatedBackupArn = (serializers.deserialize(
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
    ListBackupsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListBackupsOutput(:backupSummaries, :lastEvaluatedBackupArn) = object;
    if (backupSummaries != null) {
      result$
        ..add('BackupSummaries')
        ..add(serializers.serialize(
          backupSummaries,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.BackupSummary)],
          ),
        ));
    }
    if (lastEvaluatedBackupArn != null) {
      result$
        ..add('LastEvaluatedBackupArn')
        ..add(serializers.serialize(
          lastEvaluatedBackupArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
