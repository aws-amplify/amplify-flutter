// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_resource_evaluation_summary_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_resource_evaluation_summary_request.g.dart';

abstract class GetResourceEvaluationSummaryRequest
    with
        _i1.HttpInput<GetResourceEvaluationSummaryRequest>,
        _i2.AWSEquatable<GetResourceEvaluationSummaryRequest>
    implements
        Built<GetResourceEvaluationSummaryRequest,
            GetResourceEvaluationSummaryRequestBuilder> {
  factory GetResourceEvaluationSummaryRequest(
      {required String resourceEvaluationId}) {
    return _$GetResourceEvaluationSummaryRequest._(
        resourceEvaluationId: resourceEvaluationId);
  }

  factory GetResourceEvaluationSummaryRequest.build(
          [void Function(GetResourceEvaluationSummaryRequestBuilder) updates]) =
      _$GetResourceEvaluationSummaryRequest;

  const GetResourceEvaluationSummaryRequest._();

  factory GetResourceEvaluationSummaryRequest.fromRequest(
    GetResourceEvaluationSummaryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetResourceEvaluationSummaryRequest>>
      serializers = [GetResourceEvaluationSummaryRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetResourceEvaluationSummaryRequestBuilder b) {}

  /// The unique `ResourceEvaluationId` of Amazon Web Services resource execution for which you want to retrieve the evaluation summary.
  String get resourceEvaluationId;
  @override
  GetResourceEvaluationSummaryRequest getPayload() => this;
  @override
  List<Object?> get props => [resourceEvaluationId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetResourceEvaluationSummaryRequest')
          ..add(
            'resourceEvaluationId',
            resourceEvaluationId,
          );
    return helper.toString();
  }
}

class GetResourceEvaluationSummaryRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetResourceEvaluationSummaryRequest> {
  const GetResourceEvaluationSummaryRequestAwsJson11Serializer()
      : super('GetResourceEvaluationSummaryRequest');

  @override
  Iterable<Type> get types => const [
        GetResourceEvaluationSummaryRequest,
        _$GetResourceEvaluationSummaryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetResourceEvaluationSummaryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetResourceEvaluationSummaryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceEvaluationId':
          result.resourceEvaluationId = (serializers.deserialize(
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
    GetResourceEvaluationSummaryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetResourceEvaluationSummaryRequest(:resourceEvaluationId) = object;
    result$.addAll([
      'ResourceEvaluationId',
      serializers.serialize(
        resourceEvaluationId,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
