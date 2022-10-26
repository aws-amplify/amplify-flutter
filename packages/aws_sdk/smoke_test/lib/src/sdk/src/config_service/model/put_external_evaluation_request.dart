// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.put_external_evaluation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/external_evaluation.dart'
    as _i3;

part 'put_external_evaluation_request.g.dart';

abstract class PutExternalEvaluationRequest
    with
        _i1.HttpInput<PutExternalEvaluationRequest>,
        _i2.AWSEquatable<PutExternalEvaluationRequest>
    implements
        Built<PutExternalEvaluationRequest,
            PutExternalEvaluationRequestBuilder> {
  factory PutExternalEvaluationRequest({
    required String configRuleName,
    required _i3.ExternalEvaluation externalEvaluation,
  }) {
    return _$PutExternalEvaluationRequest._(
      configRuleName: configRuleName,
      externalEvaluation: externalEvaluation,
    );
  }

  factory PutExternalEvaluationRequest.build(
          [void Function(PutExternalEvaluationRequestBuilder) updates]) =
      _$PutExternalEvaluationRequest;

  const PutExternalEvaluationRequest._();

  factory PutExternalEvaluationRequest.fromRequest(
    PutExternalEvaluationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PutExternalEvaluationRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutExternalEvaluationRequestBuilder b) {}

  /// The name of the Config rule.
  String get configRuleName;

  /// An `ExternalEvaluation` object that provides details about compliance.
  _i3.ExternalEvaluation get externalEvaluation;
  @override
  PutExternalEvaluationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleName,
        externalEvaluation,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutExternalEvaluationRequest');
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'externalEvaluation',
      externalEvaluation,
    );
    return helper.toString();
  }
}

class PutExternalEvaluationRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutExternalEvaluationRequest> {
  const PutExternalEvaluationRequestAwsJson11Serializer()
      : super('PutExternalEvaluationRequest');

  @override
  Iterable<Type> get types => const [
        PutExternalEvaluationRequest,
        _$PutExternalEvaluationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutExternalEvaluationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutExternalEvaluationRequestBuilder();
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
        case 'ExternalEvaluation':
          result.externalEvaluation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ExternalEvaluation),
          ) as _i3.ExternalEvaluation));
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
    final payload = (object as PutExternalEvaluationRequest);
    final result = <Object?>[
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
      'ExternalEvaluation',
      serializers.serialize(
        payload.externalEvaluation,
        specifiedType: const FullType(_i3.ExternalEvaluation),
      ),
    ];
    return result;
  }
}
