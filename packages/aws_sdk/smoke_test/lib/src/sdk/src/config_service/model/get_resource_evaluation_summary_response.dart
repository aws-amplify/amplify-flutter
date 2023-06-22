// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_resource_evaluation_summary_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_context.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_details.dart'
    as _i6;

part 'get_resource_evaluation_summary_response.g.dart';

abstract class GetResourceEvaluationSummaryResponse
    with
        _i1.AWSEquatable<GetResourceEvaluationSummaryResponse>
    implements
        Built<GetResourceEvaluationSummaryResponse,
            GetResourceEvaluationSummaryResponseBuilder> {
  factory GetResourceEvaluationSummaryResponse({
    String? resourceEvaluationId,
    _i2.EvaluationMode? evaluationMode,
    _i3.EvaluationStatus? evaluationStatus,
    DateTime? evaluationStartTimestamp,
    _i4.ComplianceType? compliance,
    _i5.EvaluationContext? evaluationContext,
    _i6.ResourceDetails? resourceDetails,
  }) {
    return _$GetResourceEvaluationSummaryResponse._(
      resourceEvaluationId: resourceEvaluationId,
      evaluationMode: evaluationMode,
      evaluationStatus: evaluationStatus,
      evaluationStartTimestamp: evaluationStartTimestamp,
      compliance: compliance,
      evaluationContext: evaluationContext,
      resourceDetails: resourceDetails,
    );
  }

  factory GetResourceEvaluationSummaryResponse.build(
      [void Function(GetResourceEvaluationSummaryResponseBuilder)
          updates]) = _$GetResourceEvaluationSummaryResponse;

  const GetResourceEvaluationSummaryResponse._();

  /// Constructs a [GetResourceEvaluationSummaryResponse] from a [payload] and [response].
  factory GetResourceEvaluationSummaryResponse.fromResponse(
    GetResourceEvaluationSummaryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i7.SmithySerializer<GetResourceEvaluationSummaryResponse>>
      serializers = [GetResourceEvaluationSummaryResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetResourceEvaluationSummaryResponseBuilder b) {}

  /// The unique `ResourceEvaluationId` of Amazon Web Services resource execution for which you want to retrieve the evaluation summary.
  String? get resourceEvaluationId;

  /// Lists results of the mode that you requested to retrieve the resource evaluation summary. The valid values are Detective or Proactive.
  _i2.EvaluationMode? get evaluationMode;

  /// Returns an `EvaluationStatus` object.
  _i3.EvaluationStatus? get evaluationStatus;

  /// The start timestamp when Config rule starts evaluating compliance for the provided resource details.
  DateTime? get evaluationStartTimestamp;

  /// The compliance status of the resource evaluation summary.
  _i4.ComplianceType? get compliance;

  /// Returns an `EvaluationContext` object.
  _i5.EvaluationContext? get evaluationContext;

  /// Returns a `ResourceDetails` object.
  _i6.ResourceDetails? get resourceDetails;
  @override
  List<Object?> get props => [
        resourceEvaluationId,
        evaluationMode,
        evaluationStatus,
        evaluationStartTimestamp,
        compliance,
        evaluationContext,
        resourceDetails,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetResourceEvaluationSummaryResponse')
          ..add(
            'resourceEvaluationId',
            resourceEvaluationId,
          )
          ..add(
            'evaluationMode',
            evaluationMode,
          )
          ..add(
            'evaluationStatus',
            evaluationStatus,
          )
          ..add(
            'evaluationStartTimestamp',
            evaluationStartTimestamp,
          )
          ..add(
            'compliance',
            compliance,
          )
          ..add(
            'evaluationContext',
            evaluationContext,
          )
          ..add(
            'resourceDetails',
            resourceDetails,
          );
    return helper.toString();
  }
}

class GetResourceEvaluationSummaryResponseAwsJson11Serializer extends _i7
    .StructuredSmithySerializer<GetResourceEvaluationSummaryResponse> {
  const GetResourceEvaluationSummaryResponseAwsJson11Serializer()
      : super('GetResourceEvaluationSummaryResponse');

  @override
  Iterable<Type> get types => const [
        GetResourceEvaluationSummaryResponse,
        _$GetResourceEvaluationSummaryResponse,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetResourceEvaluationSummaryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetResourceEvaluationSummaryResponseBuilder();
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
        case 'EvaluationMode':
          result.evaluationMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EvaluationMode),
          ) as _i2.EvaluationMode);
        case 'EvaluationStatus':
          result.evaluationStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.EvaluationStatus),
          ) as _i3.EvaluationStatus));
        case 'EvaluationStartTimestamp':
          result.evaluationStartTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Compliance':
          result.compliance = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ComplianceType),
          ) as _i4.ComplianceType);
        case 'EvaluationContext':
          result.evaluationContext.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.EvaluationContext),
          ) as _i5.EvaluationContext));
        case 'ResourceDetails':
          result.resourceDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ResourceDetails),
          ) as _i6.ResourceDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetResourceEvaluationSummaryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetResourceEvaluationSummaryResponse(
      :resourceEvaluationId,
      :evaluationMode,
      :evaluationStatus,
      :evaluationStartTimestamp,
      :compliance,
      :evaluationContext,
      :resourceDetails
    ) = object;
    if (resourceEvaluationId != null) {
      result$
        ..add('ResourceEvaluationId')
        ..add(serializers.serialize(
          resourceEvaluationId,
          specifiedType: const FullType(String),
        ));
    }
    if (evaluationMode != null) {
      result$
        ..add('EvaluationMode')
        ..add(serializers.serialize(
          evaluationMode,
          specifiedType: const FullType(_i2.EvaluationMode),
        ));
    }
    if (evaluationStatus != null) {
      result$
        ..add('EvaluationStatus')
        ..add(serializers.serialize(
          evaluationStatus,
          specifiedType: const FullType(_i3.EvaluationStatus),
        ));
    }
    if (evaluationStartTimestamp != null) {
      result$
        ..add('EvaluationStartTimestamp')
        ..add(serializers.serialize(
          evaluationStartTimestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (compliance != null) {
      result$
        ..add('Compliance')
        ..add(serializers.serialize(
          compliance,
          specifiedType: const FullType(_i4.ComplianceType),
        ));
    }
    if (evaluationContext != null) {
      result$
        ..add('EvaluationContext')
        ..add(serializers.serialize(
          evaluationContext,
          specifiedType: const FullType(_i5.EvaluationContext),
        ));
    }
    if (resourceDetails != null) {
      result$
        ..add('ResourceDetails')
        ..add(serializers.serialize(
          resourceDetails,
          specifiedType: const FullType(_i6.ResourceDetails),
        ));
    }
    return result$;
  }
}
