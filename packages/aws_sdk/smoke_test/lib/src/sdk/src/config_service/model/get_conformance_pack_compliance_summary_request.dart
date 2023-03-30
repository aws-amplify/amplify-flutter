// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_conformance_pack_compliance_summary_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_conformance_pack_compliance_summary_request.g.dart';

abstract class GetConformancePackComplianceSummaryRequest
    with
        _i1.HttpInput<GetConformancePackComplianceSummaryRequest>,
        _i2.AWSEquatable<GetConformancePackComplianceSummaryRequest>
    implements
        Built<GetConformancePackComplianceSummaryRequest,
            GetConformancePackComplianceSummaryRequestBuilder> {
  factory GetConformancePackComplianceSummaryRequest({
    required List<String> conformancePackNames,
    int? limit,
    String? nextToken,
  }) {
    return _$GetConformancePackComplianceSummaryRequest._(
      conformancePackNames: _i3.BuiltList(conformancePackNames),
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory GetConformancePackComplianceSummaryRequest.build(
      [void Function(GetConformancePackComplianceSummaryRequestBuilder)
          updates]) = _$GetConformancePackComplianceSummaryRequest;

  const GetConformancePackComplianceSummaryRequest._();

  factory GetConformancePackComplianceSummaryRequest.fromRequest(
    GetConformancePackComplianceSummaryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetConformancePackComplianceSummaryRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetConformancePackComplianceSummaryRequestBuilder b) {}

  /// Names of conformance packs.
  _i3.BuiltList<String> get conformancePackNames;

  /// The maximum number of conformance packs returned on each page.
  int? get limit;

  /// The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetConformancePackComplianceSummaryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        conformancePackNames,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetConformancePackComplianceSummaryRequest');
    helper.add(
      'conformancePackNames',
      conformancePackNames,
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

class GetConformancePackComplianceSummaryRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetConformancePackComplianceSummaryRequest> {
  const GetConformancePackComplianceSummaryRequestAwsJson11Serializer()
      : super('GetConformancePackComplianceSummaryRequest');

  @override
  Iterable<Type> get types => const [
        GetConformancePackComplianceSummaryRequest,
        _$GetConformancePackComplianceSummaryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetConformancePackComplianceSummaryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConformancePackComplianceSummaryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConformancePackNames':
          result.conformancePackNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    final payload = (object as GetConformancePackComplianceSummaryRequest);
    final result = <Object?>[
      'ConformancePackNames',
      serializers.serialize(
        payload.conformancePackNames,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ),
    ];
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
