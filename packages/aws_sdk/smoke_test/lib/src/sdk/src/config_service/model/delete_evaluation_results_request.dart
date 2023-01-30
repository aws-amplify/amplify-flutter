// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.delete_evaluation_results_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_evaluation_results_request.g.dart';

abstract class DeleteEvaluationResultsRequest
    with
        _i1.HttpInput<DeleteEvaluationResultsRequest>,
        _i2.AWSEquatable<DeleteEvaluationResultsRequest>
    implements
        Built<DeleteEvaluationResultsRequest,
            DeleteEvaluationResultsRequestBuilder> {
  factory DeleteEvaluationResultsRequest({required String configRuleName}) {
    return _$DeleteEvaluationResultsRequest._(configRuleName: configRuleName);
  }

  factory DeleteEvaluationResultsRequest.build(
          [void Function(DeleteEvaluationResultsRequestBuilder) updates]) =
      _$DeleteEvaluationResultsRequest;

  const DeleteEvaluationResultsRequest._();

  factory DeleteEvaluationResultsRequest.fromRequest(
    DeleteEvaluationResultsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteEvaluationResultsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteEvaluationResultsRequestBuilder b) {}

  /// The name of the Config rule for which you want to delete the evaluation results.
  String get configRuleName;
  @override
  DeleteEvaluationResultsRequest getPayload() => this;
  @override
  List<Object?> get props => [configRuleName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteEvaluationResultsRequest');
    helper.add(
      'configRuleName',
      configRuleName,
    );
    return helper.toString();
  }
}

class DeleteEvaluationResultsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DeleteEvaluationResultsRequest> {
  const DeleteEvaluationResultsRequestAwsJson11Serializer()
      : super('DeleteEvaluationResultsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteEvaluationResultsRequest,
        _$DeleteEvaluationResultsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteEvaluationResultsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteEvaluationResultsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DeleteEvaluationResultsRequest);
    final result = <Object?>[
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
