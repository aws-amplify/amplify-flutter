// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_import_task_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'cancel_import_task_result.g.dart';

abstract class CancelImportTaskResult
    with _i1.AWSEquatable<CancelImportTaskResult>
    implements Built<CancelImportTaskResult, CancelImportTaskResultBuilder> {
  factory CancelImportTaskResult({
    String? importTaskId,
    String? previousState,
    String? state,
  }) {
    return _$CancelImportTaskResult._(
      importTaskId: importTaskId,
      previousState: previousState,
      state: state,
    );
  }

  factory CancelImportTaskResult.build(
          [void Function(CancelImportTaskResultBuilder) updates]) =
      _$CancelImportTaskResult;

  const CancelImportTaskResult._();

  /// Constructs a [CancelImportTaskResult] from a [payload] and [response].
  factory CancelImportTaskResult.fromResponse(
    CancelImportTaskResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CancelImportTaskResult>> serializers =
      [CancelImportTaskResultEc2QuerySerializer()];

  /// The ID of the task being canceled.
  String? get importTaskId;

  /// The current state of the task being canceled.
  String? get previousState;

  /// The current state of the task being canceled.
  String? get state;
  @override
  List<Object?> get props => [
        importTaskId,
        previousState,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancelImportTaskResult')
      ..add(
        'importTaskId',
        importTaskId,
      )
      ..add(
        'previousState',
        previousState,
      )
      ..add(
        'state',
        state,
      );
    return helper.toString();
  }
}

class CancelImportTaskResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CancelImportTaskResult> {
  const CancelImportTaskResultEc2QuerySerializer()
      : super('CancelImportTaskResult');

  @override
  Iterable<Type> get types => const [
        CancelImportTaskResult,
        _$CancelImportTaskResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelImportTaskResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelImportTaskResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'importTaskId':
          result.importTaskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'previousState':
          result.previousState = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
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
    CancelImportTaskResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CancelImportTaskResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelImportTaskResult(:importTaskId, :previousState, :state) =
        object;
    if (importTaskId != null) {
      result$
        ..add(const _i2.XmlElementName('ImportTaskId'))
        ..add(serializers.serialize(
          importTaskId,
          specifiedType: const FullType(String),
        ));
    }
    if (previousState != null) {
      result$
        ..add(const _i2.XmlElementName('PreviousState'))
        ..add(serializers.serialize(
          previousState,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
