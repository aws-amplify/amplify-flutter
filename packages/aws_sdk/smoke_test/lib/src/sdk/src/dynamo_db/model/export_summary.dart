// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.export_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_status.dart'
    as _i2;

part 'export_summary.g.dart';

/// Summary information about an export task.
abstract class ExportSummary
    with _i1.AWSEquatable<ExportSummary>
    implements Built<ExportSummary, ExportSummaryBuilder> {
  /// Summary information about an export task.
  factory ExportSummary({
    String? exportArn,
    _i2.ExportStatus? exportStatus,
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

  static const List<_i3.SmithySerializer> serializers = [
    ExportSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportSummaryBuilder b) {}

  /// The Amazon Resource Name (ARN) of the export.
  String? get exportArn;

  /// Export can be in one of the following states: IN_PROGRESS, COMPLETED, or FAILED.
  _i2.ExportStatus? get exportStatus;
  @override
  List<Object?> get props => [
        exportArn,
        exportStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportSummary');
    helper.add(
      'exportArn',
      exportArn,
    );
    helper.add(
      'exportStatus',
      exportStatus,
    );
    return helper.toString();
  }
}

class ExportSummaryAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ExportSummary> {
  const ExportSummaryAwsJson10Serializer() : super('ExportSummary');

  @override
  Iterable<Type> get types => const [
        ExportSummary,
        _$ExportSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'ExportArn':
          if (value != null) {
            result.exportArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExportStatus':
          if (value != null) {
            result.exportStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ExportStatus),
            ) as _i2.ExportStatus);
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
    final payload = (object as ExportSummary);
    final result = <Object?>[];
    if (payload.exportArn != null) {
      result
        ..add('ExportArn')
        ..add(serializers.serialize(
          payload.exportArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.exportStatus != null) {
      result
        ..add('ExportStatus')
        ..add(serializers.serialize(
          payload.exportStatus!,
          specifiedType: const FullType(_i2.ExportStatus),
        ));
    }
    return result;
  }
}
