// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? resourceType,
    String? resourceId,
    List<_i3.ComplianceType>? complianceTypes,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$DescribeComplianceByResourceRequest._(
      resourceType: resourceType,
      resourceId: resourceId,
      complianceTypes:
          complianceTypes == null ? null : _i4.BuiltList(complianceTypes),
      limit: limit,
      nextToken: nextToken,
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

  static const List<_i1.SmithySerializer<DescribeComplianceByResourceRequest>>
      serializers = [DescribeComplianceByResourceRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeComplianceByResourceRequestBuilder b) {
    b.limit = 0;
  }

  /// The types of Amazon Web Services resources for which you want compliance information (for example, `AWS::EC2::Instance`). For this action, you can specify that the resource type is an Amazon Web Services account by specifying `AWS::::Account`.
  String? get resourceType;

  /// The ID of the Amazon Web Services resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for `ResourceType`.
  String? get resourceId;

  /// Filters the results by compliance.
  _i4.BuiltList<_i3.ComplianceType>? get complianceTypes;

  /// The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeComplianceByResourceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceType,
        resourceId,
        complianceTypes,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeComplianceByResourceRequest')
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
            'limit',
            limit,
          )
          ..add(
            'nextToken',
            nextToken,
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
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeComplianceByResourceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeComplianceByResourceRequest(
      :resourceType,
      :resourceId,
      :complianceTypes,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
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
    return result$;
  }
}
