// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.delete_remediation_exceptions_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/failed_delete_remediation_exceptions_batch.dart'
    as _i2;

part 'delete_remediation_exceptions_response.g.dart';

abstract class DeleteRemediationExceptionsResponse
    with
        _i1.AWSEquatable<DeleteRemediationExceptionsResponse>
    implements
        Built<DeleteRemediationExceptionsResponse,
            DeleteRemediationExceptionsResponseBuilder> {
  factory DeleteRemediationExceptionsResponse(
      {List<_i2.FailedDeleteRemediationExceptionsBatch>? failedBatches}) {
    return _$DeleteRemediationExceptionsResponse._(
        failedBatches:
            failedBatches == null ? null : _i3.BuiltList(failedBatches));
  }

  factory DeleteRemediationExceptionsResponse.build(
          [void Function(DeleteRemediationExceptionsResponseBuilder) updates]) =
      _$DeleteRemediationExceptionsResponse;

  const DeleteRemediationExceptionsResponse._();

  /// Constructs a [DeleteRemediationExceptionsResponse] from a [payload] and [response].
  factory DeleteRemediationExceptionsResponse.fromResponse(
    DeleteRemediationExceptionsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<DeleteRemediationExceptionsResponse>>
      serializers = [DeleteRemediationExceptionsResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRemediationExceptionsResponseBuilder b) {}

  /// Returns a list of failed delete remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.
  _i3.BuiltList<_i2.FailedDeleteRemediationExceptionsBatch>? get failedBatches;
  @override
  List<Object?> get props => [failedBatches];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteRemediationExceptionsResponse')
          ..add(
            'failedBatches',
            failedBatches,
          );
    return helper.toString();
  }
}

class DeleteRemediationExceptionsResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DeleteRemediationExceptionsResponse> {
  const DeleteRemediationExceptionsResponseAwsJson11Serializer()
      : super('DeleteRemediationExceptionsResponse');

  @override
  Iterable<Type> get types => const [
        DeleteRemediationExceptionsResponse,
        _$DeleteRemediationExceptionsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteRemediationExceptionsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteRemediationExceptionsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'FailedBatches':
          result.failedBatches.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.FailedDeleteRemediationExceptionsBatch)],
            ),
          ) as _i3.BuiltList<_i2.FailedDeleteRemediationExceptionsBatch>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteRemediationExceptionsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteRemediationExceptionsResponse(:failedBatches) = object;
    if (failedBatches != null) {
      result$
        ..add('FailedBatches')
        ..add(serializers.serialize(
          failedBatches,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.FailedDeleteRemediationExceptionsBatch)],
          ),
        ));
    }
    return result$;
  }
}
