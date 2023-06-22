// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.failed_delete_remediation_exceptions_batch; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_exception_resource_key.dart'
    as _i2;

part 'failed_delete_remediation_exceptions_batch.g.dart';

/// List of each of the failed delete remediation exceptions with specific reasons.
abstract class FailedDeleteRemediationExceptionsBatch
    with
        _i1.AWSEquatable<FailedDeleteRemediationExceptionsBatch>
    implements
        Built<FailedDeleteRemediationExceptionsBatch,
            FailedDeleteRemediationExceptionsBatchBuilder> {
  /// List of each of the failed delete remediation exceptions with specific reasons.
  factory FailedDeleteRemediationExceptionsBatch({
    String? failureMessage,
    List<_i2.RemediationExceptionResourceKey>? failedItems,
  }) {
    return _$FailedDeleteRemediationExceptionsBatch._(
      failureMessage: failureMessage,
      failedItems: failedItems == null ? null : _i3.BuiltList(failedItems),
    );
  }

  /// List of each of the failed delete remediation exceptions with specific reasons.
  factory FailedDeleteRemediationExceptionsBatch.build(
      [void Function(FailedDeleteRemediationExceptionsBatchBuilder)
          updates]) = _$FailedDeleteRemediationExceptionsBatch;

  const FailedDeleteRemediationExceptionsBatch._();

  static const List<
          _i4.SmithySerializer<FailedDeleteRemediationExceptionsBatch>>
      serializers = [
    FailedDeleteRemediationExceptionsBatchAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FailedDeleteRemediationExceptionsBatchBuilder b) {}

  /// Returns a failure message for delete remediation exception. For example, Config creates an exception due to an internal error.
  String? get failureMessage;

  /// Returns remediation exception resource key object of the failed items.
  _i3.BuiltList<_i2.RemediationExceptionResourceKey>? get failedItems;
  @override
  List<Object?> get props => [
        failureMessage,
        failedItems,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FailedDeleteRemediationExceptionsBatch')
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

class FailedDeleteRemediationExceptionsBatchAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<FailedDeleteRemediationExceptionsBatch> {
  const FailedDeleteRemediationExceptionsBatchAwsJson11Serializer()
      : super('FailedDeleteRemediationExceptionsBatch');

  @override
  Iterable<Type> get types => const [
        FailedDeleteRemediationExceptionsBatch,
        _$FailedDeleteRemediationExceptionsBatch,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  FailedDeleteRemediationExceptionsBatch deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FailedDeleteRemediationExceptionsBatchBuilder();
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
              _i3.BuiltList,
              [FullType(_i2.RemediationExceptionResourceKey)],
            ),
          ) as _i3.BuiltList<_i2.RemediationExceptionResourceKey>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FailedDeleteRemediationExceptionsBatch object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final FailedDeleteRemediationExceptionsBatch(
      :failureMessage,
      :failedItems
    ) = object;
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
            _i3.BuiltList,
            [FullType(_i2.RemediationExceptionResourceKey)],
          ),
        ));
    }
    return result$;
  }
}
