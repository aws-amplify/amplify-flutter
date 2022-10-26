// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_compliance_summary_by_resource_type_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary_by_resource_type.dart'
    as _i2;

part 'get_compliance_summary_by_resource_type_response.g.dart';

abstract class GetComplianceSummaryByResourceTypeResponse
    with
        _i1.AWSEquatable<GetComplianceSummaryByResourceTypeResponse>
    implements
        Built<GetComplianceSummaryByResourceTypeResponse,
            GetComplianceSummaryByResourceTypeResponseBuilder> {
  factory GetComplianceSummaryByResourceTypeResponse(
      {List<_i2.ComplianceSummaryByResourceType>?
          complianceSummariesByResourceType}) {
    return _$GetComplianceSummaryByResourceTypeResponse._(
        complianceSummariesByResourceType:
            complianceSummariesByResourceType == null
                ? null
                : _i3.BuiltList(complianceSummariesByResourceType));
  }

  factory GetComplianceSummaryByResourceTypeResponse.build(
      [void Function(GetComplianceSummaryByResourceTypeResponseBuilder)
          updates]) = _$GetComplianceSummaryByResourceTypeResponse;

  const GetComplianceSummaryByResourceTypeResponse._();

  /// Constructs a [GetComplianceSummaryByResourceTypeResponse] from a [payload] and [response].
  factory GetComplianceSummaryByResourceTypeResponse.fromResponse(
    GetComplianceSummaryByResourceTypeResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetComplianceSummaryByResourceTypeResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceSummaryByResourceTypeResponseBuilder b) {}

  /// The number of resources that are compliant and the number that are noncompliant. If one or more resource types were provided with the request, the numbers are returned for each resource type. The maximum number returned is 100.
  _i3.BuiltList<_i2.ComplianceSummaryByResourceType>?
      get complianceSummariesByResourceType;
  @override
  List<Object?> get props => [complianceSummariesByResourceType];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetComplianceSummaryByResourceTypeResponse');
    helper.add(
      'complianceSummariesByResourceType',
      complianceSummariesByResourceType,
    );
    return helper.toString();
  }
}

class GetComplianceSummaryByResourceTypeResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<GetComplianceSummaryByResourceTypeResponse> {
  const GetComplianceSummaryByResourceTypeResponseAwsJson11Serializer()
      : super('GetComplianceSummaryByResourceTypeResponse');

  @override
  Iterable<Type> get types => const [
        GetComplianceSummaryByResourceTypeResponse,
        _$GetComplianceSummaryByResourceTypeResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceSummaryByResourceTypeResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceSummaryByResourceTypeResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComplianceSummariesByResourceType':
          if (value != null) {
            result.complianceSummariesByResourceType
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ComplianceSummaryByResourceType)],
              ),
            ) as _i3.BuiltList<_i2.ComplianceSummaryByResourceType>));
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
    final payload = (object as GetComplianceSummaryByResourceTypeResponse);
    final result = <Object?>[];
    if (payload.complianceSummariesByResourceType != null) {
      result
        ..add('ComplianceSummariesByResourceType')
        ..add(serializers.serialize(
          payload.complianceSummariesByResourceType!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ComplianceSummaryByResourceType)],
          ),
        ));
    }
    return result;
  }
}
