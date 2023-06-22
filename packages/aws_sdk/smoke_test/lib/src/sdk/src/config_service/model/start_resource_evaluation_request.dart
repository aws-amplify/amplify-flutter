// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.start_resource_evaluation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_context.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_details.dart'
    as _i3;

part 'start_resource_evaluation_request.g.dart';

abstract class StartResourceEvaluationRequest
    with
        _i1.HttpInput<StartResourceEvaluationRequest>,
        _i2.AWSEquatable<StartResourceEvaluationRequest>
    implements
        Built<StartResourceEvaluationRequest,
            StartResourceEvaluationRequestBuilder> {
  factory StartResourceEvaluationRequest({
    required _i3.ResourceDetails resourceDetails,
    _i4.EvaluationContext? evaluationContext,
    required _i5.EvaluationMode evaluationMode,
    int? evaluationTimeout,
    String? clientToken,
  }) {
    evaluationTimeout ??= 0;
    return _$StartResourceEvaluationRequest._(
      resourceDetails: resourceDetails,
      evaluationContext: evaluationContext,
      evaluationMode: evaluationMode,
      evaluationTimeout: evaluationTimeout,
      clientToken: clientToken,
    );
  }

  factory StartResourceEvaluationRequest.build(
          [void Function(StartResourceEvaluationRequestBuilder) updates]) =
      _$StartResourceEvaluationRequest;

  const StartResourceEvaluationRequest._();

  factory StartResourceEvaluationRequest.fromRequest(
    StartResourceEvaluationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<StartResourceEvaluationRequest>>
      serializers = [StartResourceEvaluationRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartResourceEvaluationRequestBuilder b) {
    b.evaluationTimeout = 0;
  }

  /// Returns a `ResourceDetails` object.
  _i3.ResourceDetails get resourceDetails;

  /// Returns an `EvaluationContext` object.
  _i4.EvaluationContext? get evaluationContext;

  /// The mode of an evaluation. The valid values for this API are `DETECTIVE` and `PROACTIVE`.
  _i5.EvaluationMode get evaluationMode;

  /// The timeout for an evaluation. The default is 900 seconds. You cannot specify a number greater than 3600. If you specify 0, Config uses the default.
  int get evaluationTimeout;

  /// A client token is a unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request using one of these actions, specify a client token in the request.
  ///
  /// Avoid reusing the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, other than the Region or Availability Zone, the retry fails with an IdempotentParameterMismatch error.
  String? get clientToken;
  @override
  StartResourceEvaluationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceDetails,
        evaluationContext,
        evaluationMode,
        evaluationTimeout,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StartResourceEvaluationRequest')
      ..add(
        'resourceDetails',
        resourceDetails,
      )
      ..add(
        'evaluationContext',
        evaluationContext,
      )
      ..add(
        'evaluationMode',
        evaluationMode,
      )
      ..add(
        'evaluationTimeout',
        evaluationTimeout,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class StartResourceEvaluationRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<StartResourceEvaluationRequest> {
  const StartResourceEvaluationRequestAwsJson11Serializer()
      : super('StartResourceEvaluationRequest');

  @override
  Iterable<Type> get types => const [
        StartResourceEvaluationRequest,
        _$StartResourceEvaluationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StartResourceEvaluationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartResourceEvaluationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceDetails':
          result.resourceDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ResourceDetails),
          ) as _i3.ResourceDetails));
        case 'EvaluationContext':
          result.evaluationContext.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.EvaluationContext),
          ) as _i4.EvaluationContext));
        case 'EvaluationMode':
          result.evaluationMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.EvaluationMode),
          ) as _i5.EvaluationMode);
        case 'EvaluationTimeout':
          result.evaluationTimeout = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    StartResourceEvaluationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StartResourceEvaluationRequest(
      :resourceDetails,
      :evaluationContext,
      :evaluationMode,
      :evaluationTimeout,
      :clientToken
    ) = object;
    result$.addAll([
      'ResourceDetails',
      serializers.serialize(
        resourceDetails,
        specifiedType: const FullType(_i3.ResourceDetails),
      ),
      'EvaluationMode',
      serializers.serialize(
        evaluationMode,
        specifiedType: const FullType(_i5.EvaluationMode),
      ),
      'EvaluationTimeout',
      serializers.serialize(
        evaluationTimeout,
        specifiedType: const FullType(int),
      ),
    ]);
    if (evaluationContext != null) {
      result$
        ..add('EvaluationContext')
        ..add(serializers.serialize(
          evaluationContext,
          specifiedType: const FullType(_i4.EvaluationContext),
        ));
    }
    if (clientToken != null) {
      result$
        ..add('ClientToken')
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
