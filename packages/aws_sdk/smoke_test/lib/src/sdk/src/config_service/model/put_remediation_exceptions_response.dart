// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.put_remediation_exceptions_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/failed_remediation_exception_batch.dart'
    as _i2;

part 'put_remediation_exceptions_response.g.dart';

abstract class PutRemediationExceptionsResponse
    with
        _i1.AWSEquatable<PutRemediationExceptionsResponse>
    implements
        Built<PutRemediationExceptionsResponse,
            PutRemediationExceptionsResponseBuilder> {
  factory PutRemediationExceptionsResponse(
      {List<_i2.FailedRemediationExceptionBatch>? failedBatches}) {
    return _$PutRemediationExceptionsResponse._(
        failedBatches:
            failedBatches == null ? null : _i3.BuiltList(failedBatches));
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

  static const List<_i4.SmithySerializer> serializers = [
    PutRemediationExceptionsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutRemediationExceptionsResponseBuilder b) {}

  /// Returns a list of failed remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.
  _i3.BuiltList<_i2.FailedRemediationExceptionBatch>? get failedBatches;
  @override
  List<Object?> get props => [failedBatches];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutRemediationExceptionsResponse');
    helper.add(
      'failedBatches',
      failedBatches,
    );
    return helper.toString();
  }
}

class PutRemediationExceptionsResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<PutRemediationExceptionsResponse> {
  const PutRemediationExceptionsResponseAwsJson11Serializer()
      : super('PutRemediationExceptionsResponse');

  @override
  Iterable<Type> get types => const [
        PutRemediationExceptionsResponse,
        _$PutRemediationExceptionsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      switch (key) {
        case 'FailedBatches':
          if (value != null) {
            result.failedBatches.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.FailedRemediationExceptionBatch)],
              ),
            ) as _i3.BuiltList<_i2.FailedRemediationExceptionBatch>));
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
    final payload = (object as PutRemediationExceptionsResponse);
    final result = <Object?>[];
    if (payload.failedBatches != null) {
      result
        ..add('FailedBatches')
        ..add(serializers.serialize(
          payload.failedBatches!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.FailedRemediationExceptionBatch)],
          ),
        ));
    }
    return result;
  }
}
