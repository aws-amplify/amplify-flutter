// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    limit ??= 0;
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

  static const List<
          _i1.SmithySerializer<GetConformancePackComplianceSummaryRequest>>
      serializers = [
    GetConformancePackComplianceSummaryRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetConformancePackComplianceSummaryRequestBuilder b) {
    b.limit = 0;
  }

  /// Names of conformance packs.
  _i3.BuiltList<String> get conformancePackNames;

  /// The maximum number of conformance packs returned on each page.
  int get limit;

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
        'GetConformancePackComplianceSummaryRequest')
      ..add(
        'conformancePackNames',
        conformancePackNames,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackNames':
          result.conformancePackNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    GetConformancePackComplianceSummaryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetConformancePackComplianceSummaryRequest(
      :conformancePackNames,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'ConformancePackNames',
      serializers.serialize(
        conformancePackNames,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ),
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
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
