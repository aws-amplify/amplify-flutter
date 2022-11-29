// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.delete_evaluation_results_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_evaluation_results_response.g.dart';

/// The output when you delete the evaluation results for the specified Config rule.
abstract class DeleteEvaluationResultsResponse
    with
        _i1.AWSEquatable<DeleteEvaluationResultsResponse>
    implements
        Built<DeleteEvaluationResultsResponse,
            DeleteEvaluationResultsResponseBuilder>,
        _i2.EmptyPayload {
  /// The output when you delete the evaluation results for the specified Config rule.
  factory DeleteEvaluationResultsResponse() {
    return _$DeleteEvaluationResultsResponse._();
  }

  /// The output when you delete the evaluation results for the specified Config rule.
  factory DeleteEvaluationResultsResponse.build(
          [void Function(DeleteEvaluationResultsResponseBuilder) updates]) =
      _$DeleteEvaluationResultsResponse;

  const DeleteEvaluationResultsResponse._();

  /// Constructs a [DeleteEvaluationResultsResponse] from a [payload] and [response].
  factory DeleteEvaluationResultsResponse.fromResponse(
    DeleteEvaluationResultsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DeleteEvaluationResultsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteEvaluationResultsResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteEvaluationResultsResponse');
    return helper.toString();
  }
}

class DeleteEvaluationResultsResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<DeleteEvaluationResultsResponse> {
  const DeleteEvaluationResultsResponseAwsJson11Serializer()
      : super('DeleteEvaluationResultsResponse');

  @override
  Iterable<Type> get types => const [
        DeleteEvaluationResultsResponse,
        _$DeleteEvaluationResultsResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteEvaluationResultsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteEvaluationResultsResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
