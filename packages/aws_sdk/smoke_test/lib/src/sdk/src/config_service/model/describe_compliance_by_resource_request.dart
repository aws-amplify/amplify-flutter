// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.describe_compliance_by_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i3;

part 'describe_compliance_by_resource_request.g.dart';

abstract class DescribeComplianceByResourceRequest
    with
        _i1.HttpInput<DescribeComplianceByResourceRequest>,
        _i2.AWSEquatable<DescribeComplianceByResourceRequest>
    implements
        Built<DescribeComplianceByResourceRequest,
            DescribeComplianceByResourceRequestBuilder> {
  factory DescribeComplianceByResourceRequest({
    List<_i3.ComplianceType>? complianceTypes,
    int? limit,
    String? nextToken,
    String? resourceId,
    String? resourceType,
  }) {
    return _$DescribeComplianceByResourceRequest._(
      complianceTypes:
          complianceTypes == null ? null : _i4.BuiltList(complianceTypes),
      limit: limit,
      nextToken: nextToken,
      resourceId: resourceId,
      resourceType: resourceType,
    );
  }

  factory DescribeComplianceByResourceRequest.build(
          [void Function(DescribeComplianceByResourceRequestBuilder) updates]) =
      _$DescribeComplianceByResourceRequest;

  const DescribeComplianceByResourceRequest._();

  factory DescribeComplianceByResourceRequest.fromRequest(
    DescribeComplianceByResourceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeComplianceByResourceRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeComplianceByResourceRequestBuilder b) {}

  /// Filters the results by compliance.
  ///
  /// The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `INSUFFICIENT_DATA`.
  _i4.BuiltList<_i3.ComplianceType>? get complianceTypes;

  /// The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The ID of the Amazon Web Services resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for `ResourceType`.
  String? get resourceId;

  /// The types of Amazon Web Services resources for which you want compliance information (for example, `AWS::EC2::Instance`). For this action, you can specify that the resource type is an Amazon Web Services account by specifying `AWS::::Account`.
  String? get resourceType;
  @override
  DescribeComplianceByResourceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        complianceTypes,
        limit,
        nextToken,
        resourceId,
        resourceType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeComplianceByResourceRequest');
    helper.add(
      'complianceTypes',
      complianceTypes,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class DescribeComplianceByResourceRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeComplianceByResourceRequest> {
  const DescribeComplianceByResourceRequestAwsJson11Serializer()
      : super('DescribeComplianceByResourceRequest');

  @override
  Iterable<Type> get types => const [
        DescribeComplianceByResourceRequest,
        _$DescribeComplianceByResourceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeComplianceByResourceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeComplianceByResourceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComplianceTypes':
          if (value != null) {
            result.complianceTypes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ComplianceType)],
              ),
            ) as _i4.BuiltList<_i3.ComplianceType>));
          }
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
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
    final payload = (object as DescribeComplianceByResourceRequest);
    final result = <Object?>[];
    if (payload.complianceTypes != null) {
      result
        ..add('ComplianceTypes')
        ..add(serializers.serialize(
          payload.complianceTypes!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ComplianceType)],
          ),
        ));
    }
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add('ResourceId')
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add('ResourceType')
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
