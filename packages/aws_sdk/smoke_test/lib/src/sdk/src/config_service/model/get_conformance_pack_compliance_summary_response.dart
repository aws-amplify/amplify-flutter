// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.get_conformance_pack_compliance_summary_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_summary.dart';

part 'get_conformance_pack_compliance_summary_response.g.dart';

abstract class GetConformancePackComplianceSummaryResponse
    with
        _i1.AWSEquatable<GetConformancePackComplianceSummaryResponse>
    implements
        Built<GetConformancePackComplianceSummaryResponse,
            GetConformancePackComplianceSummaryResponseBuilder> {
  factory GetConformancePackComplianceSummaryResponse({
    List<ConformancePackComplianceSummary>?
        conformancePackComplianceSummaryList,
    String? nextToken,
  }) {
    return _$GetConformancePackComplianceSummaryResponse._(
      conformancePackComplianceSummaryList:
          conformancePackComplianceSummaryList == null
              ? null
              : _i2.BuiltList(conformancePackComplianceSummaryList),
      nextToken: nextToken,
    );
  }

  factory GetConformancePackComplianceSummaryResponse.build(
      [void Function(GetConformancePackComplianceSummaryResponseBuilder)
          updates]) = _$GetConformancePackComplianceSummaryResponse;

  const GetConformancePackComplianceSummaryResponse._();

  /// Constructs a [GetConformancePackComplianceSummaryResponse] from a [payload] and [response].
  factory GetConformancePackComplianceSummaryResponse.fromResponse(
    GetConformancePackComplianceSummaryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<GetConformancePackComplianceSummaryResponse>>
      serializers = [
    GetConformancePackComplianceSummaryResponseAwsJson11Serializer()
  ];

  /// A list of `ConformancePackComplianceSummary` objects.
  _i2.BuiltList<ConformancePackComplianceSummary>?
      get conformancePackComplianceSummaryList;

  /// The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        conformancePackComplianceSummaryList,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetConformancePackComplianceSummaryResponse')
      ..add(
        'conformancePackComplianceSummaryList',
        conformancePackComplianceSummaryList,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetConformancePackComplianceSummaryResponseAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<GetConformancePackComplianceSummaryResponse> {
  const GetConformancePackComplianceSummaryResponseAwsJson11Serializer()
      : super('GetConformancePackComplianceSummaryResponse');

  @override
  Iterable<Type> get types => const [
        GetConformancePackComplianceSummaryResponse,
        _$GetConformancePackComplianceSummaryResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetConformancePackComplianceSummaryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConformancePackComplianceSummaryResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackComplianceSummaryList':
          result.conformancePackComplianceSummaryList
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ConformancePackComplianceSummary)],
            ),
          ) as _i2.BuiltList<ConformancePackComplianceSummary>));
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
    GetConformancePackComplianceSummaryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetConformancePackComplianceSummaryResponse(
      :conformancePackComplianceSummaryList,
      :nextToken
    ) = object;
    if (conformancePackComplianceSummaryList != null) {
      result$
        ..add('ConformancePackComplianceSummaryList')
        ..add(serializers.serialize(
          conformancePackComplianceSummaryList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ConformancePackComplianceSummary)],
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
