// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_compliance_details_by_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i3;

part 'get_compliance_details_by_resource_request.g.dart';

abstract class GetComplianceDetailsByResourceRequest
    with
        _i1.HttpInput<GetComplianceDetailsByResourceRequest>,
        _i2.AWSEquatable<GetComplianceDetailsByResourceRequest>
    implements
        Built<GetComplianceDetailsByResourceRequest,
            GetComplianceDetailsByResourceRequestBuilder> {
  factory GetComplianceDetailsByResourceRequest({
    String? resourceType,
    String? resourceId,
    List<_i3.ComplianceType>? complianceTypes,
    String? nextToken,
    String? resourceEvaluationId,
  }) {
    return _$GetComplianceDetailsByResourceRequest._(
      resourceType: resourceType,
      resourceId: resourceId,
      complianceTypes:
          complianceTypes == null ? null : _i4.BuiltList(complianceTypes),
      nextToken: nextToken,
      resourceEvaluationId: resourceEvaluationId,
    );
  }

  factory GetComplianceDetailsByResourceRequest.build(
      [void Function(GetComplianceDetailsByResourceRequestBuilder)
          updates]) = _$GetComplianceDetailsByResourceRequest;

  const GetComplianceDetailsByResourceRequest._();

  factory GetComplianceDetailsByResourceRequest.fromRequest(
    GetComplianceDetailsByResourceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetComplianceDetailsByResourceRequest>>
      serializers = [
    GetComplianceDetailsByResourceRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceDetailsByResourceRequestBuilder b) {}

  /// The type of the Amazon Web Services resource for which you want compliance information.
  String? get resourceType;

  /// The ID of the Amazon Web Services resource for which you want compliance information.
  String? get resourceId;

  /// Filters the results by compliance.
  ///
  /// `INSUFFICIENT_DATA` is a valid `ComplianceType` that is returned when an Config rule cannot be evaluated. However, `INSUFFICIENT_DATA` cannot be used as a `ComplianceType` for filtering results.
  _i4.BuiltList<_i3.ComplianceType>? get complianceTypes;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The unique ID of Amazon Web Services resource execution for which you want to retrieve evaluation results.
  ///
  /// You need to only provide either a `ResourceEvaluationID` or a `ResourceID` and `ResourceType`.
  String? get resourceEvaluationId;
  @override
  GetComplianceDetailsByResourceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceType,
        resourceId,
        complianceTypes,
        nextToken,
        resourceEvaluationId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetComplianceDetailsByResourceRequest')
          ..add(
            'resourceType',
            resourceType,
          )
          ..add(
            'resourceId',
            resourceId,
          )
          ..add(
            'complianceTypes',
            complianceTypes,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'resourceEvaluationId',
            resourceEvaluationId,
          );
    return helper.toString();
  }
}

class GetComplianceDetailsByResourceRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetComplianceDetailsByResourceRequest> {
  const GetComplianceDetailsByResourceRequestAwsJson11Serializer()
      : super('GetComplianceDetailsByResourceRequest');

  @override
  Iterable<Type> get types => const [
        GetComplianceDetailsByResourceRequest,
        _$GetComplianceDetailsByResourceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceDetailsByResourceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceDetailsByResourceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceTypes':
          result.complianceTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ComplianceType)],
            ),
          ) as _i4.BuiltList<_i3.ComplianceType>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    GetComplianceDetailsByResourceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetComplianceDetailsByResourceRequest(
      :resourceType,
      :resourceId,
      :complianceTypes,
      :nextToken,
      :resourceEvaluationId
    ) = object;
    if (resourceType != null) {
      result$
        ..add('ResourceType')
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add('ResourceId')
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (complianceTypes != null) {
      result$
        ..add('ComplianceTypes')
        ..add(serializers.serialize(
          complianceTypes,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ComplianceType)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceEvaluationId != null) {
      result$
        ..add('ResourceEvaluationId')
        ..add(serializers.serialize(
          resourceEvaluationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
