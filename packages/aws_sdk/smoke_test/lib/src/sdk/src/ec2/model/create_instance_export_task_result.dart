// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_instance_export_task_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task.dart';

part 'create_instance_export_task_result.g.dart';

abstract class CreateInstanceExportTaskResult
    with
        _i1.AWSEquatable<CreateInstanceExportTaskResult>
    implements
        Built<CreateInstanceExportTaskResult,
            CreateInstanceExportTaskResultBuilder> {
  factory CreateInstanceExportTaskResult({ExportTask? exportTask}) {
    return _$CreateInstanceExportTaskResult._(exportTask: exportTask);
  }

  factory CreateInstanceExportTaskResult.build(
          [void Function(CreateInstanceExportTaskResultBuilder) updates]) =
      _$CreateInstanceExportTaskResult;

  const CreateInstanceExportTaskResult._();

  /// Constructs a [CreateInstanceExportTaskResult] from a [payload] and [response].
  factory CreateInstanceExportTaskResult.fromResponse(
    CreateInstanceExportTaskResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateInstanceExportTaskResult>>
      serializers = [CreateInstanceExportTaskResultEc2QuerySerializer()];

  /// Information about the export instance task.
  ExportTask? get exportTask;
  @override
  List<Object?> get props => [exportTask];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateInstanceExportTaskResult')
      ..add(
        'exportTask',
        exportTask,
      );
    return helper.toString();
  }
}

class CreateInstanceExportTaskResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateInstanceExportTaskResult> {
  const CreateInstanceExportTaskResultEc2QuerySerializer()
      : super('CreateInstanceExportTaskResult');

  @override
  Iterable<Type> get types => const [
        CreateInstanceExportTaskResult,
        _$CreateInstanceExportTaskResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInstanceExportTaskResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceExportTaskResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'exportTask':
          result.exportTask.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ExportTask),
          ) as ExportTask));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateInstanceExportTaskResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateInstanceExportTaskResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateInstanceExportTaskResult(:exportTask) = object;
    if (exportTask != null) {
      result$
        ..add(const _i2.XmlElementName('ExportTask'))
        ..add(serializers.serialize(
          exportTask,
          specifiedType: const FullType(ExportTask),
        ));
    }
    return result$;
  }
}
