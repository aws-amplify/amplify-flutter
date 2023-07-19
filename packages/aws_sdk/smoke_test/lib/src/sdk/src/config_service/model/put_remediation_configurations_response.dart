// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.put_remediation_configurations_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/failed_remediation_batch.dart'
    as _i2;

part 'put_remediation_configurations_response.g.dart';

abstract class PutRemediationConfigurationsResponse
    with
        _i1.AWSEquatable<PutRemediationConfigurationsResponse>
    implements
        Built<PutRemediationConfigurationsResponse,
            PutRemediationConfigurationsResponseBuilder> {
  factory PutRemediationConfigurationsResponse(
      {List<_i2.FailedRemediationBatch>? failedBatches}) {
    return _$PutRemediationConfigurationsResponse._(
        failedBatches:
            failedBatches == null ? null : _i3.BuiltList(failedBatches));
  }

  factory PutRemediationConfigurationsResponse.build(
      [void Function(PutRemediationConfigurationsResponseBuilder)
          updates]) = _$PutRemediationConfigurationsResponse;

  const PutRemediationConfigurationsResponse._();

  /// Constructs a [PutRemediationConfigurationsResponse] from a [payload] and [response].
  factory PutRemediationConfigurationsResponse.fromResponse(
    PutRemediationConfigurationsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<PutRemediationConfigurationsResponse>>
      serializers = [PutRemediationConfigurationsResponseAwsJson11Serializer()];

  /// Returns a list of failed remediation batch objects.
  _i3.BuiltList<_i2.FailedRemediationBatch>? get failedBatches;
  @override
  List<Object?> get props => [failedBatches];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutRemediationConfigurationsResponse')
          ..add(
            'failedBatches',
            failedBatches,
          );
    return helper.toString();
  }
}

class PutRemediationConfigurationsResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<PutRemediationConfigurationsResponse> {
  const PutRemediationConfigurationsResponseAwsJson11Serializer()
      : super('PutRemediationConfigurationsResponse');

  @override
  Iterable<Type> get types => const [
        PutRemediationConfigurationsResponse,
        _$PutRemediationConfigurationsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutRemediationConfigurationsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRemediationConfigurationsResponseBuilder();
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
              [FullType(_i2.FailedRemediationBatch)],
            ),
          ) as _i3.BuiltList<_i2.FailedRemediationBatch>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutRemediationConfigurationsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutRemediationConfigurationsResponse(:failedBatches) = object;
    if (failedBatches != null) {
      result$
        ..add('FailedBatches')
        ..add(serializers.serialize(
          failedBatches,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.FailedRemediationBatch)],
          ),
        ));
    }
    return result$;
  }
}
