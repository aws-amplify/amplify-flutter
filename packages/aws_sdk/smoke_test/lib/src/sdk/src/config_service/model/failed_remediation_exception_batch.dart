// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.failed_remediation_exception_batch; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_exception.dart'
    as _i2;

part 'failed_remediation_exception_batch.g.dart';

/// List of each of the failed remediation exceptions with specific reasons.
abstract class FailedRemediationExceptionBatch
    with
        _i1.AWSEquatable<FailedRemediationExceptionBatch>
    implements
        Built<FailedRemediationExceptionBatch,
            FailedRemediationExceptionBatchBuilder> {
  /// List of each of the failed remediation exceptions with specific reasons.
  factory FailedRemediationExceptionBatch({
    List<_i2.RemediationException>? failedItems,
    String? failureMessage,
  }) {
    return _$FailedRemediationExceptionBatch._(
      failedItems: failedItems == null ? null : _i3.BuiltList(failedItems),
      failureMessage: failureMessage,
    );
  }

  /// List of each of the failed remediation exceptions with specific reasons.
  factory FailedRemediationExceptionBatch.build(
          [void Function(FailedRemediationExceptionBatchBuilder) updates]) =
      _$FailedRemediationExceptionBatch;

  const FailedRemediationExceptionBatch._();

  static const List<_i4.SmithySerializer> serializers = [
    FailedRemediationExceptionBatchAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FailedRemediationExceptionBatchBuilder b) {}

  /// Returns remediation exception resource key object of the failed items.
  _i3.BuiltList<_i2.RemediationException>? get failedItems;

  /// Returns a failure message. For example, the auto-remediation has failed.
  String? get failureMessage;
  @override
  List<Object?> get props => [
        failedItems,
        failureMessage,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FailedRemediationExceptionBatch');
    helper.add(
      'failedItems',
      failedItems,
    );
    helper.add(
      'failureMessage',
      failureMessage,
    );
    return helper.toString();
  }
}

class FailedRemediationExceptionBatchAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<FailedRemediationExceptionBatch> {
  const FailedRemediationExceptionBatchAwsJson11Serializer()
      : super('FailedRemediationExceptionBatch');

  @override
  Iterable<Type> get types => const [
        FailedRemediationExceptionBatch,
        _$FailedRemediationExceptionBatch,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  FailedRemediationExceptionBatch deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FailedRemediationExceptionBatchBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'FailedItems':
          if (value != null) {
            result.failedItems.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.RemediationException)],
              ),
            ) as _i3.BuiltList<_i2.RemediationException>));
          }
          break;
        case 'FailureMessage':
          if (value != null) {
            result.failureMessage = (serializers.deserialize(
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
    final payload = (object as FailedRemediationExceptionBatch);
    final result = <Object?>[];
    if (payload.failedItems != null) {
      result
        ..add('FailedItems')
        ..add(serializers.serialize(
          payload.failedItems!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.RemediationException)],
          ),
        ));
    }
    if (payload.failureMessage != null) {
      result
        ..add('FailureMessage')
        ..add(serializers.serialize(
          payload.failureMessage!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
