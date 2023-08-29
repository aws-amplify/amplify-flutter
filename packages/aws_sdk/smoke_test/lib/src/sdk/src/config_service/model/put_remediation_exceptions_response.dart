// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.put_remediation_exceptions_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/failed_remediation_exception_batch.dart';

part 'put_remediation_exceptions_response.g.dart';

abstract class PutRemediationExceptionsResponse
    with
        _i1.AWSEquatable<PutRemediationExceptionsResponse>
    implements
        Built<PutRemediationExceptionsResponse,
            PutRemediationExceptionsResponseBuilder> {
  factory PutRemediationExceptionsResponse(
      {List<FailedRemediationExceptionBatch>? failedBatches}) {
    return _$PutRemediationExceptionsResponse._(
        failedBatches:
            failedBatches == null ? null : _i2.BuiltList(failedBatches));
  }

  factory PutRemediationExceptionsResponse.build(
          [void Function(PutRemediationExceptionsResponseBuilder) updates]) =
      _$PutRemediationExceptionsResponse;

  const PutRemediationExceptionsResponse._();

  /// Constructs a [PutRemediationExceptionsResponse] from a [payload] and [response].
  factory PutRemediationExceptionsResponse.fromResponse(
    PutRemediationExceptionsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<PutRemediationExceptionsResponse>>
      serializers = [PutRemediationExceptionsResponseAwsJson11Serializer()];

  /// Returns a list of failed remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.
  _i2.BuiltList<FailedRemediationExceptionBatch>? get failedBatches;
  @override
  List<Object?> get props => [failedBatches];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutRemediationExceptionsResponse')
          ..add(
            'failedBatches',
            failedBatches,
          );
    return helper.toString();
  }
}

class PutRemediationExceptionsResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<PutRemediationExceptionsResponse> {
  const PutRemediationExceptionsResponseAwsJson11Serializer()
      : super('PutRemediationExceptionsResponse');

  @override
  Iterable<Type> get types => const [
        PutRemediationExceptionsResponse,
        _$PutRemediationExceptionsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutRemediationExceptionsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRemediationExceptionsResponseBuilder();
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
              _i2.BuiltList,
              [FullType(FailedRemediationExceptionBatch)],
            ),
          ) as _i2.BuiltList<FailedRemediationExceptionBatch>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutRemediationExceptionsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutRemediationExceptionsResponse(:failedBatches) = object;
    if (failedBatches != null) {
      result$
        ..add('FailedBatches')
        ..add(serializers.serialize(
          failedBatches,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(FailedRemediationExceptionBatch)],
          ),
        ));
    }
    return result$;
  }
}
