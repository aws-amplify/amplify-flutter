// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.failed_remediation_batch; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_configuration.dart'
    as _i2;

part 'failed_remediation_batch.g.dart';

/// List of each of the failed remediations with specific reasons.
abstract class FailedRemediationBatch
    with _i1.AWSEquatable<FailedRemediationBatch>
    implements Built<FailedRemediationBatch, FailedRemediationBatchBuilder> {
  /// List of each of the failed remediations with specific reasons.
  factory FailedRemediationBatch({
    List<_i2.RemediationConfiguration>? failedItems,
    String? failureMessage,
  }) {
    return _$FailedRemediationBatch._(
      failedItems: failedItems == null ? null : _i3.BuiltList(failedItems),
      failureMessage: failureMessage,
    );
  }

  /// List of each of the failed remediations with specific reasons.
  factory FailedRemediationBatch.build(
          [void Function(FailedRemediationBatchBuilder) updates]) =
      _$FailedRemediationBatch;

  const FailedRemediationBatch._();

  static const List<_i4.SmithySerializer> serializers = [
    FailedRemediationBatchAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FailedRemediationBatchBuilder b) {}

  /// Returns remediation configurations of the failed items.
  _i3.BuiltList<_i2.RemediationConfiguration>? get failedItems;

  /// Returns a failure message. For example, the resource is already compliant.
  String? get failureMessage;
  @override
  List<Object?> get props => [
        failedItems,
        failureMessage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FailedRemediationBatch');
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

class FailedRemediationBatchAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<FailedRemediationBatch> {
  const FailedRemediationBatchAwsJson11Serializer()
      : super('FailedRemediationBatch');

  @override
  Iterable<Type> get types => const [
        FailedRemediationBatch,
        _$FailedRemediationBatch,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  FailedRemediationBatch deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FailedRemediationBatchBuilder();
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
                [FullType(_i2.RemediationConfiguration)],
              ),
            ) as _i3.BuiltList<_i2.RemediationConfiguration>));
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
    final payload = (object as FailedRemediationBatch);
    final result = <Object?>[];
    if (payload.failedItems != null) {
      result
        ..add('FailedItems')
        ..add(serializers.serialize(
          payload.failedItems!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.RemediationConfiguration)],
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
