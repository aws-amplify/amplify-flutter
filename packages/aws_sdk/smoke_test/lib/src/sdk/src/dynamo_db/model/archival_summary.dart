// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.archival_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'archival_summary.g.dart';

/// Contains details of a table archival operation.
abstract class ArchivalSummary
    with _i1.AWSEquatable<ArchivalSummary>
    implements Built<ArchivalSummary, ArchivalSummaryBuilder> {
  /// Contains details of a table archival operation.
  factory ArchivalSummary({
    String? archivalBackupArn,
    DateTime? archivalDateTime,
    String? archivalReason,
  }) {
    return _$ArchivalSummary._(
      archivalBackupArn: archivalBackupArn,
      archivalDateTime: archivalDateTime,
      archivalReason: archivalReason,
    );
  }

  /// Contains details of a table archival operation.
  factory ArchivalSummary.build(
      [void Function(ArchivalSummaryBuilder) updates]) = _$ArchivalSummary;

  const ArchivalSummary._();

  static const List<_i2.SmithySerializer> serializers = [
    ArchivalSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ArchivalSummaryBuilder b) {}

  /// The Amazon Resource Name (ARN) of the backup the table was archived to, when applicable in the archival reason. If you wish to restore this backup to the same table name, you will need to delete the original table.
  String? get archivalBackupArn;

  /// The date and time when table archival was initiated by DynamoDB, in UNIX epoch time format.
  DateTime? get archivalDateTime;

  /// The reason DynamoDB archived the table. Currently, the only possible value is:
  ///
  /// *   `INACCESSIBLE\_ENCRYPTION\_CREDENTIALS` \- The table was archived due to the table's KMS key being inaccessible for more than seven days. An On-Demand backup was created at the archival time.
  String? get archivalReason;
  @override
  List<Object?> get props => [
        archivalBackupArn,
        archivalDateTime,
        archivalReason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ArchivalSummary');
    helper.add(
      'archivalBackupArn',
      archivalBackupArn,
    );
    helper.add(
      'archivalDateTime',
      archivalDateTime,
    );
    helper.add(
      'archivalReason',
      archivalReason,
    );
    return helper.toString();
  }
}

class ArchivalSummaryAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ArchivalSummary> {
  const ArchivalSummaryAwsJson10Serializer() : super('ArchivalSummary');

  @override
  Iterable<Type> get types => const [
        ArchivalSummary,
        _$ArchivalSummary,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ArchivalSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchivalSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ArchivalBackupArn':
          if (value != null) {
            result.archivalBackupArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ArchivalDateTime':
          if (value != null) {
            result.archivalDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ArchivalReason':
          if (value != null) {
            result.archivalReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ArchivalSummary);
    final result = <Object?>[];
    if (payload.archivalBackupArn != null) {
      result
        ..add('ArchivalBackupArn')
        ..add(serializers.serialize(
          payload.archivalBackupArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.archivalDateTime != null) {
      result
        ..add('ArchivalDateTime')
        ..add(serializers.serialize(
          payload.archivalDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.archivalReason != null) {
      result
        ..add('ArchivalReason')
        ..add(serializers.serialize(
          payload.archivalReason!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
