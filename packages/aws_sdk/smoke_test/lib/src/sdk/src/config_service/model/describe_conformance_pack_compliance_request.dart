// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_conformance_pack_compliance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_filters.dart'
    as _i3;

part 'describe_conformance_pack_compliance_request.g.dart';

abstract class DescribeConformancePackComplianceRequest
    with
        _i1.HttpInput<DescribeConformancePackComplianceRequest>,
        _i2.AWSEquatable<DescribeConformancePackComplianceRequest>
    implements
        Built<DescribeConformancePackComplianceRequest,
            DescribeConformancePackComplianceRequestBuilder> {
  factory DescribeConformancePackComplianceRequest({
    required String conformancePackName,
    _i3.ConformancePackComplianceFilters? filters,
    int? limit,
    String? nextToken,
  }) {
    return _$DescribeConformancePackComplianceRequest._(
      conformancePackName: conformancePackName,
      filters: filters,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribeConformancePackComplianceRequest.build(
      [void Function(DescribeConformancePackComplianceRequestBuilder)
          updates]) = _$DescribeConformancePackComplianceRequest;

  const DescribeConformancePackComplianceRequest._();

  factory DescribeConformancePackComplianceRequest.fromRequest(
    DescribeConformancePackComplianceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeConformancePackComplianceRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConformancePackComplianceRequestBuilder b) {}

  /// Name of the conformance pack.
  String get conformancePackName;

  /// A `ConformancePackComplianceFilters` object.
  _i3.ConformancePackComplianceFilters? get filters;

  /// The maximum number of Config rules within a conformance pack are returned on each page.
  int? get limit;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeConformancePackComplianceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        conformancePackName,
        filters,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConformancePackComplianceRequest');
    helper.add(
      'conformancePackName',
      conformancePackName,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeConformancePackComplianceRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeConformancePackComplianceRequest> {
  const DescribeConformancePackComplianceRequestAwsJson11Serializer()
      : super('DescribeConformancePackComplianceRequest');

  @override
  Iterable<Type> get types => const [
        DescribeConformancePackComplianceRequest,
        _$DescribeConformancePackComplianceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConformancePackComplianceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConformancePackComplianceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Filters':
          if (value != null) {
            result.filters.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.ConformancePackComplianceFilters),
            ) as _i3.ConformancePackComplianceFilters));
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
    final payload = (object as DescribeConformancePackComplianceRequest);
    final result = <Object?>[
      'ConformancePackName',
      serializers.serialize(
        payload.conformancePackName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.filters != null) {
      result
        ..add('Filters')
        ..add(serializers.serialize(
          payload.filters!,
          specifiedType: const FullType(_i3.ConformancePackComplianceFilters),
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
    return result;
  }
}
