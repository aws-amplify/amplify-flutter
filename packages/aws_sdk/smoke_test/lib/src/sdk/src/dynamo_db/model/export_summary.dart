// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.export_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_status.dart';

part 'export_summary.g.dart';

/// Summary information about an export task.
abstract class ExportSummary
    with _i1.AWSEquatable<ExportSummary>
    implements Built<ExportSummary, ExportSummaryBuilder> {
  /// Summary information about an export task.
  factory ExportSummary({
    String? exportArn,
    ExportStatus? exportStatus,
  }) {
    return _$ExportSummary._(
      exportArn: exportArn,
      exportStatus: exportStatus,
    );
  }

  /// Summary information about an export task.
  factory ExportSummary.build([void Function(ExportSummaryBuilder) updates]) =
      _$ExportSummary;

  const ExportSummary._();

  static const List<_i2.SmithySerializer<ExportSummary>> serializers = [
    ExportSummaryAwsJson10Serializer()
  ];

  /// The Amazon Resource Name (ARN) of the export.
  String? get exportArn;

  /// Export can be in one of the following states: IN_PROGRESS, COMPLETED, or FAILED.
  ExportStatus? get exportStatus;
  @override
  List<Object?> get props => [
        exportArn,
        exportStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportSummary')
      ..add(
        'exportArn',
        exportArn,
      )
      ..add(
        'exportStatus',
        exportStatus,
      );
    return helper.toString();
  }
}

class ExportSummaryAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ExportSummary> {
  const ExportSummaryAwsJson10Serializer() : super('ExportSummary');

  @override
  Iterable<Type> get types => const [
        ExportSummary,
        _$ExportSummary,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExportSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ExportArn':
          result.exportArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExportStatus':
          result.exportStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(ExportStatus),
          ) as ExportStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExportSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ExportSummary(:exportArn, :exportStatus) = object;
    if (exportArn != null) {
      result$
        ..add('ExportArn')
        ..add(serializers.serialize(
          exportArn,
          specifiedType: const FullType(String),
        ));
    }
    if (exportStatus != null) {
      result$
        ..add('ExportStatus')
        ..add(serializers.serialize(
          exportStatus,
          specifiedType: const FullType(ExportStatus),
        ));
    }
    return result$;
  }
}
