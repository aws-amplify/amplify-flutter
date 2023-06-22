// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_compliance_summary_by_resource_type_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_compliance_summary_by_resource_type_request.g.dart';

abstract class GetComplianceSummaryByResourceTypeRequest
    with
        _i1.HttpInput<GetComplianceSummaryByResourceTypeRequest>,
        _i2.AWSEquatable<GetComplianceSummaryByResourceTypeRequest>
    implements
        Built<GetComplianceSummaryByResourceTypeRequest,
            GetComplianceSummaryByResourceTypeRequestBuilder> {
  factory GetComplianceSummaryByResourceTypeRequest(
      {List<String>? resourceTypes}) {
    return _$GetComplianceSummaryByResourceTypeRequest._(
        resourceTypes:
            resourceTypes == null ? null : _i3.BuiltList(resourceTypes));
  }

  factory GetComplianceSummaryByResourceTypeRequest.build(
      [void Function(GetComplianceSummaryByResourceTypeRequestBuilder)
          updates]) = _$GetComplianceSummaryByResourceTypeRequest;

  const GetComplianceSummaryByResourceTypeRequest._();

  factory GetComplianceSummaryByResourceTypeRequest.fromRequest(
    GetComplianceSummaryByResourceTypeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetComplianceSummaryByResourceTypeRequest>>
      serializers = [
    GetComplianceSummaryByResourceTypeRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceSummaryByResourceTypeRequestBuilder b) {}

  /// Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type.
  ///
  /// For this request, you can specify an Amazon Web Services resource type such as `AWS::EC2::Instance`. You can specify that the resource type is an Amazon Web Services account by specifying `AWS::::Account`.
  _i3.BuiltList<String>? get resourceTypes;
  @override
  GetComplianceSummaryByResourceTypeRequest getPayload() => this;
  @override
  List<Object?> get props => [resourceTypes];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetComplianceSummaryByResourceTypeRequest')
          ..add(
            'resourceTypes',
            resourceTypes,
          );
    return helper.toString();
  }
}

class GetComplianceSummaryByResourceTypeRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetComplianceSummaryByResourceTypeRequest> {
  const GetComplianceSummaryByResourceTypeRequestAwsJson11Serializer()
      : super('GetComplianceSummaryByResourceTypeRequest');

  @override
  Iterable<Type> get types => const [
        GetComplianceSummaryByResourceTypeRequest,
        _$GetComplianceSummaryByResourceTypeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceSummaryByResourceTypeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceSummaryByResourceTypeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceTypes':
          result.resourceTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetComplianceSummaryByResourceTypeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetComplianceSummaryByResourceTypeRequest(:resourceTypes) = object;
    if (resourceTypes != null) {
      result$
        ..add('ResourceTypes')
        ..add(serializers.serialize(
          resourceTypes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
