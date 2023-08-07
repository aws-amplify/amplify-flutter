// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.failed_remediation_batch; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_configuration.dart';

part 'failed_remediation_batch.g.dart';

/// List of each of the failed remediations with specific reasons.
abstract class FailedRemediationBatch
    with _i1.AWSEquatable<FailedRemediationBatch>
    implements Built<FailedRemediationBatch, FailedRemediationBatchBuilder> {
  /// List of each of the failed remediations with specific reasons.
  factory FailedRemediationBatch({
    String? failureMessage,
    List<RemediationConfiguration>? failedItems,
  }) {
    return _$FailedRemediationBatch._(
      failureMessage: failureMessage,
      failedItems: failedItems == null ? null : _i2.BuiltList(failedItems),
    );
  }

  /// List of each of the failed remediations with specific reasons.
  factory FailedRemediationBatch.build(
          [void Function(FailedRemediationBatchBuilder) updates]) =
      _$FailedRemediationBatch;

  const FailedRemediationBatch._();

  static const List<_i3.SmithySerializer<FailedRemediationBatch>> serializers =
      [FailedRemediationBatchAwsJson11Serializer()];

  /// Returns a failure message. For example, the resource is already compliant.
  String? get failureMessage;

  /// Returns remediation configurations of the failed items.
  _i2.BuiltList<RemediationConfiguration>? get failedItems;
  @override
  List<Object?> get props => [
        failureMessage,
        failedItems,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FailedRemediationBatch')
      ..add(
        'failureMessage',
        failureMessage,
      )
      ..add(
        'failedItems',
        failedItems,
      );
    return helper.toString();
  }
}

class FailedRemediationBatchAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<FailedRemediationBatch> {
  const FailedRemediationBatchAwsJson11Serializer()
      : super('FailedRemediationBatch');

  @override
  Iterable<Type> get types => const [
        FailedRemediationBatch,
        _$FailedRemediationBatch,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'FailureMessage':
          result.failureMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FailedItems':
          result.failedItems.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RemediationConfiguration)],
            ),
          ) as _i2.BuiltList<RemediationConfiguration>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FailedRemediationBatch object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final FailedRemediationBatch(:failureMessage, :failedItems) = object;
    if (failureMessage != null) {
      result$
        ..add('FailureMessage')
        ..add(serializers.serialize(
          failureMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (failedItems != null) {
      result$
        ..add('FailedItems')
        ..add(serializers.serialize(
          failedItems,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RemediationConfiguration)],
          ),
        ));
    }
    return result$;
  }
}
