// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.start_resource_evaluation_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'start_resource_evaluation_response.g.dart';

abstract class StartResourceEvaluationResponse
    with
        _i1.AWSEquatable<StartResourceEvaluationResponse>
    implements
        Built<StartResourceEvaluationResponse,
            StartResourceEvaluationResponseBuilder> {
  factory StartResourceEvaluationResponse({String? resourceEvaluationId}) {
    return _$StartResourceEvaluationResponse._(
        resourceEvaluationId: resourceEvaluationId);
  }

  factory StartResourceEvaluationResponse.build(
          [void Function(StartResourceEvaluationResponseBuilder) updates]) =
      _$StartResourceEvaluationResponse;

  const StartResourceEvaluationResponse._();

  /// Constructs a [StartResourceEvaluationResponse] from a [payload] and [response].
  factory StartResourceEvaluationResponse.fromResponse(
    StartResourceEvaluationResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    StartResourceEvaluationResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartResourceEvaluationResponseBuilder b) {}

  /// A unique ResourceEvaluationId that is associated with a single execution.
  String? get resourceEvaluationId;
  @override
  List<Object?> get props => [resourceEvaluationId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StartResourceEvaluationResponse');
    helper.add(
      'resourceEvaluationId',
      resourceEvaluationId,
    );
    return helper.toString();
  }
}

class StartResourceEvaluationResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<StartResourceEvaluationResponse> {
  const StartResourceEvaluationResponseAwsJson11Serializer()
      : super('StartResourceEvaluationResponse');

  @override
  Iterable<Type> get types => const [
        StartResourceEvaluationResponse,
        _$StartResourceEvaluationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StartResourceEvaluationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartResourceEvaluationResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ResourceEvaluationId':
          if (value != null) {
            result.resourceEvaluationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as StartResourceEvaluationResponse);
    final result = <Object?>[];
    if (payload.resourceEvaluationId != null) {
      result
        ..add('ResourceEvaluationId')
        ..add(serializers.serialize(
          payload.resourceEvaluationId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
