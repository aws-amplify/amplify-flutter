// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_conformance_pack_compliance_summary_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_summary.dart'
    as _i2;

part 'get_conformance_pack_compliance_summary_response.g.dart';

abstract class GetConformancePackComplianceSummaryResponse
    with
        _i1.AWSEquatable<GetConformancePackComplianceSummaryResponse>
    implements
        Built<GetConformancePackComplianceSummaryResponse,
            GetConformancePackComplianceSummaryResponseBuilder> {
  factory GetConformancePackComplianceSummaryResponse({
    List<_i2.ConformancePackComplianceSummary>?
        conformancePackComplianceSummaryList,
    String? nextToken,
  }) {
    return _$GetConformancePackComplianceSummaryResponse._(
      conformancePackComplianceSummaryList:
          conformancePackComplianceSummaryList == null
              ? null
              : _i3.BuiltList(conformancePackComplianceSummaryList),
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

  static const List<_i4.SmithySerializer> serializers = [
    GetConformancePackComplianceSummaryResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetConformancePackComplianceSummaryResponseBuilder b) {}

  /// A list of `ConformancePackComplianceSummary` objects.
  _i3.BuiltList<_i2.ConformancePackComplianceSummary>?
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
        'GetConformancePackComplianceSummaryResponse');
    helper.add(
      'conformancePackComplianceSummaryList',
      conformancePackComplianceSummaryList,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetConformancePackComplianceSummaryResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<GetConformancePackComplianceSummaryResponse> {
  const GetConformancePackComplianceSummaryResponseAwsJson11Serializer()
      : super('GetConformancePackComplianceSummaryResponse');

  @override
  Iterable<Type> get types => const [
        GetConformancePackComplianceSummaryResponse,
        _$GetConformancePackComplianceSummaryResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      switch (key) {
        case 'ConformancePackComplianceSummaryList':
          if (value != null) {
            result.conformancePackComplianceSummaryList
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ConformancePackComplianceSummary)],
              ),
            ) as _i3.BuiltList<_i2.ConformancePackComplianceSummary>));
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
    final payload = (object as GetConformancePackComplianceSummaryResponse);
    final result = <Object?>[];
    if (payload.conformancePackComplianceSummaryList != null) {
      result
        ..add('ConformancePackComplianceSummaryList')
        ..add(serializers.serialize(
          payload.conformancePackComplianceSummaryList!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConformancePackComplianceSummary)],
          ),
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
