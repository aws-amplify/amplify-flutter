// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_conformance_pack_compliance_details_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_evaluation_filters.dart'
    as _i3;

part 'get_conformance_pack_compliance_details_request.g.dart';

abstract class GetConformancePackComplianceDetailsRequest
    with
        _i1.HttpInput<GetConformancePackComplianceDetailsRequest>,
        _i2.AWSEquatable<GetConformancePackComplianceDetailsRequest>
    implements
        Built<GetConformancePackComplianceDetailsRequest,
            GetConformancePackComplianceDetailsRequestBuilder> {
  factory GetConformancePackComplianceDetailsRequest({
    required String conformancePackName,
    _i3.ConformancePackEvaluationFilters? filters,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$GetConformancePackComplianceDetailsRequest._(
      conformancePackName: conformancePackName,
      filters: filters,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory GetConformancePackComplianceDetailsRequest.build(
      [void Function(GetConformancePackComplianceDetailsRequestBuilder)
          updates]) = _$GetConformancePackComplianceDetailsRequest;

  const GetConformancePackComplianceDetailsRequest._();

  factory GetConformancePackComplianceDetailsRequest.fromRequest(
    GetConformancePackComplianceDetailsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetConformancePackComplianceDetailsRequest>>
      serializers = [
    GetConformancePackComplianceDetailsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetConformancePackComplianceDetailsRequestBuilder b) {
    b.limit = 0;
  }

  /// Name of the conformance pack.
  String get conformancePackName;

  /// A `ConformancePackEvaluationFilters` object.
  _i3.ConformancePackEvaluationFilters? get filters;

  /// The maximum number of evaluation results returned on each page. If you do no specify a number, Config uses the default. The default is 100.
  int get limit;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetConformancePackComplianceDetailsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        conformancePackName,
        filters,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetConformancePackComplianceDetailsRequest')
      ..add(
        'conformancePackName',
        conformancePackName,
      )
      ..add(
        'filters',
        filters,
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

class GetConformancePackComplianceDetailsRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetConformancePackComplianceDetailsRequest> {
  const GetConformancePackComplianceDetailsRequestAwsJson11Serializer()
      : super('GetConformancePackComplianceDetailsRequest');

  @override
  Iterable<Type> get types => const [
        GetConformancePackComplianceDetailsRequest,
        _$GetConformancePackComplianceDetailsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetConformancePackComplianceDetailsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConformancePackComplianceDetailsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filters':
          result.filters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ConformancePackEvaluationFilters),
          ) as _i3.ConformancePackEvaluationFilters));
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
    GetConformancePackComplianceDetailsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetConformancePackComplianceDetailsRequest(
      :conformancePackName,
      :filters,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'ConformancePackName',
      serializers.serialize(
        conformancePackName,
        specifiedType: const FullType(String),
      ),
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (filters != null) {
      result$
        ..add('Filters')
        ..add(serializers.serialize(
          filters,
          specifiedType: const FullType(_i3.ConformancePackEvaluationFilters),
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
