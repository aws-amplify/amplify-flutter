// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.put_evaluations_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation.dart'
    as _i2;

part 'put_evaluations_response.g.dart';

abstract class PutEvaluationsResponse
    with _i1.AWSEquatable<PutEvaluationsResponse>
    implements Built<PutEvaluationsResponse, PutEvaluationsResponseBuilder> {
  factory PutEvaluationsResponse({List<_i2.Evaluation>? failedEvaluations}) {
    return _$PutEvaluationsResponse._(
        failedEvaluations: failedEvaluations == null
            ? null
            : _i3.BuiltList(failedEvaluations));
  }

  factory PutEvaluationsResponse.build(
          [void Function(PutEvaluationsResponseBuilder) updates]) =
      _$PutEvaluationsResponse;

  const PutEvaluationsResponse._();

  /// Constructs a [PutEvaluationsResponse] from a [payload] and [response].
  factory PutEvaluationsResponse.fromResponse(
    PutEvaluationsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<PutEvaluationsResponse>> serializers =
      [PutEvaluationsResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutEvaluationsResponseBuilder b) {}

  /// Requests that failed because of a client or server error.
  _i3.BuiltList<_i2.Evaluation>? get failedEvaluations;
  @override
  List<Object?> get props => [failedEvaluations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutEvaluationsResponse')
      ..add(
        'failedEvaluations',
        failedEvaluations,
      );
    return helper.toString();
  }
}

class PutEvaluationsResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<PutEvaluationsResponse> {
  const PutEvaluationsResponseAwsJson11Serializer()
      : super('PutEvaluationsResponse');

  @override
  Iterable<Type> get types => const [
        PutEvaluationsResponse,
        _$PutEvaluationsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutEvaluationsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutEvaluationsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'FailedEvaluations':
          result.failedEvaluations.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Evaluation)],
            ),
          ) as _i3.BuiltList<_i2.Evaluation>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutEvaluationsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutEvaluationsResponse(:failedEvaluations) = object;
    if (failedEvaluations != null) {
      result$
        ..add('FailedEvaluations')
        ..add(serializers.serialize(
          failedEvaluations,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Evaluation)],
          ),
        ));
    }
    return result$;
  }
}
