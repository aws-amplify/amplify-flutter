// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    DateTime? archivalDateTime,
    String? archivalReason,
    String? archivalBackupArn,
  }) {
    return _$ArchivalSummary._(
      archivalDateTime: archivalDateTime,
      archivalReason: archivalReason,
      archivalBackupArn: archivalBackupArn,
    );
  }

  /// Contains details of a table archival operation.
  factory ArchivalSummary.build(
      [void Function(ArchivalSummaryBuilder) updates]) = _$ArchivalSummary;

  const ArchivalSummary._();

  static const List<_i2.SmithySerializer<ArchivalSummary>> serializers = [
    ArchivalSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ArchivalSummaryBuilder b) {}

  /// The date and time when table archival was initiated by DynamoDB, in UNIX epoch time format.
  DateTime? get archivalDateTime;

  /// The reason DynamoDB archived the table. Currently, the only possible value is:
  ///
  /// *   `INACCESSIBLE\_ENCRYPTION\_CREDENTIALS` \- The table was archived due to the table's KMS key being inaccessible for more than seven days. An On-Demand backup was created at the archival time.
  String? get archivalReason;

  /// The Amazon Resource Name (ARN) of the backup the table was archived to, when applicable in the archival reason. If you wish to restore this backup to the same table name, you will need to delete the original table.
  String? get archivalBackupArn;
  @override
  List<Object?> get props => [
        archivalDateTime,
        archivalReason,
        archivalBackupArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ArchivalSummary')
      ..add(
        'archivalDateTime',
        archivalDateTime,
      )
      ..add(
        'archivalReason',
        archivalReason,
      )
      ..add(
        'archivalBackupArn',
        archivalBackupArn,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ArchivalDateTime':
          result.archivalDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ArchivalReason':
          result.archivalReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ArchivalBackupArn':
          result.archivalBackupArn = (serializers.deserialize(
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
    ArchivalSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ArchivalSummary(
      :archivalDateTime,
      :archivalReason,
      :archivalBackupArn
    ) = object;
    if (archivalDateTime != null) {
      result$
        ..add('ArchivalDateTime')
        ..add(serializers.serialize(
          archivalDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (archivalReason != null) {
      result$
        ..add('ArchivalReason')
        ..add(serializers.serialize(
          archivalReason,
          specifiedType: const FullType(String),
        ));
    }
    if (archivalBackupArn != null) {
      result$
        ..add('ArchivalBackupArn')
        ..add(serializers.serialize(
          archivalBackupArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
