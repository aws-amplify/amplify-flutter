// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.get_resource_evaluation_summary_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_context.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_status.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_details.dart';

part 'get_resource_evaluation_summary_response.g.dart';

abstract class GetResourceEvaluationSummaryResponse
    with
        _i1.AWSEquatable<GetResourceEvaluationSummaryResponse>
    implements
        Built<GetResourceEvaluationSummaryResponse,
            GetResourceEvaluationSummaryResponseBuilder> {
  factory GetResourceEvaluationSummaryResponse({
    String? resourceEvaluationId,
    EvaluationMode? evaluationMode,
    EvaluationStatus? evaluationStatus,
    DateTime? evaluationStartTimestamp,
    ComplianceType? compliance,
    EvaluationContext? evaluationContext,
    ResourceDetails? resourceDetails,
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

  static const List<_i2.SmithySerializer<GetResourceEvaluationSummaryResponse>>
      serializers = [GetResourceEvaluationSummaryResponseAwsJson11Serializer()];

  /// The unique `ResourceEvaluationId` of Amazon Web Services resource execution for which you want to retrieve the evaluation summary.
  String? get resourceEvaluationId;

  /// Lists results of the mode that you requested to retrieve the resource evaluation summary. The valid values are Detective or Proactive.
  EvaluationMode? get evaluationMode;

  /// Returns an `EvaluationStatus` object.
  EvaluationStatus? get evaluationStatus;

  /// The start timestamp when Config rule starts evaluating compliance for the provided resource details.
  DateTime? get evaluationStartTimestamp;

  /// The compliance status of the resource evaluation summary.
  ComplianceType? get compliance;

  /// Returns an `EvaluationContext` object.
  EvaluationContext? get evaluationContext;

  /// Returns a `ResourceDetails` object.
  ResourceDetails? get resourceDetails;
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

class GetResourceEvaluationSummaryResponseAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<GetResourceEvaluationSummaryResponse> {
  const GetResourceEvaluationSummaryResponseAwsJson11Serializer()
      : super('GetResourceEvaluationSummaryResponse');

  @override
  Iterable<Type> get types => const [
        GetResourceEvaluationSummaryResponse,
        _$GetResourceEvaluationSummaryResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
            specifiedType: const FullType(EvaluationMode),
          ) as EvaluationMode);
        case 'EvaluationStatus':
          result.evaluationStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EvaluationStatus),
          ) as EvaluationStatus));
        case 'EvaluationStartTimestamp':
          result.evaluationStartTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Compliance':
          result.compliance = (serializers.deserialize(
            value,
            specifiedType: const FullType(ComplianceType),
          ) as ComplianceType);
        case 'EvaluationContext':
          result.evaluationContext.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EvaluationContext),
          ) as EvaluationContext));
        case 'ResourceDetails':
          result.resourceDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceDetails),
          ) as ResourceDetails));
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
          specifiedType: const FullType(EvaluationMode),
        ));
    }
    if (evaluationStatus != null) {
      result$
        ..add('EvaluationStatus')
        ..add(serializers.serialize(
          evaluationStatus,
          specifiedType: const FullType(EvaluationStatus),
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
          specifiedType: const FullType(ComplianceType),
        ));
    }
    if (evaluationContext != null) {
      result$
        ..add('EvaluationContext')
        ..add(serializers.serialize(
          evaluationContext,
          specifiedType: const FullType(EvaluationContext),
        ));
    }
    if (resourceDetails != null) {
      result$
        ..add('ResourceDetails')
        ..add(serializers.serialize(
          resourceDetails,
          specifiedType: const FullType(ResourceDetails),
        ));
    }
    return result$;
  }
}
