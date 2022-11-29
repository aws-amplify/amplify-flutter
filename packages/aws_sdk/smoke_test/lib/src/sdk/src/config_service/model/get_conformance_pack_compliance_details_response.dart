// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.get_conformance_pack_compliance_details_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_evaluation_result.dart'
    as _i2;

part 'get_conformance_pack_compliance_details_response.g.dart';

abstract class GetConformancePackComplianceDetailsResponse
    with
        _i1.AWSEquatable<GetConformancePackComplianceDetailsResponse>
    implements
        Built<GetConformancePackComplianceDetailsResponse,
            GetConformancePackComplianceDetailsResponseBuilder> {
  factory GetConformancePackComplianceDetailsResponse({
    required String conformancePackName,
    List<_i2.ConformancePackEvaluationResult>?
        conformancePackRuleEvaluationResults,
    String? nextToken,
  }) {
    return _$GetConformancePackComplianceDetailsResponse._(
      conformancePackName: conformancePackName,
      conformancePackRuleEvaluationResults:
          conformancePackRuleEvaluationResults == null
              ? null
              : _i3.BuiltList(conformancePackRuleEvaluationResults),
      nextToken: nextToken,
    );
  }

  factory GetConformancePackComplianceDetailsResponse.build(
      [void Function(GetConformancePackComplianceDetailsResponseBuilder)
          updates]) = _$GetConformancePackComplianceDetailsResponse;

  const GetConformancePackComplianceDetailsResponse._();

  /// Constructs a [GetConformancePackComplianceDetailsResponse] from a [payload] and [response].
  factory GetConformancePackComplianceDetailsResponse.fromResponse(
    GetConformancePackComplianceDetailsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetConformancePackComplianceDetailsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetConformancePackComplianceDetailsResponseBuilder b) {}

  /// Name of the conformance pack.
  String get conformancePackName;

  /// Returns a list of `ConformancePackEvaluationResult` objects.
  _i3.BuiltList<_i2.ConformancePackEvaluationResult>?
      get conformancePackRuleEvaluationResults;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        conformancePackName,
        conformancePackRuleEvaluationResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetConformancePackComplianceDetailsResponse');
    helper.add(
      'conformancePackName',
      conformancePackName,
    );
    helper.add(
      'conformancePackRuleEvaluationResults',
      conformancePackRuleEvaluationResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetConformancePackComplianceDetailsResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<GetConformancePackComplianceDetailsResponse> {
  const GetConformancePackComplianceDetailsResponseAwsJson11Serializer()
      : super('GetConformancePackComplianceDetailsResponse');

  @override
  Iterable<Type> get types => const [
        GetConformancePackComplianceDetailsResponse,
        _$GetConformancePackComplianceDetailsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetConformancePackComplianceDetailsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConformancePackComplianceDetailsResponseBuilder();
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
        case 'ConformancePackRuleEvaluationResults':
          if (value != null) {
            result.conformancePackRuleEvaluationResults
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ConformancePackEvaluationResult)],
              ),
            ) as _i3.BuiltList<_i2.ConformancePackEvaluationResult>));
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
    final payload = (object as GetConformancePackComplianceDetailsResponse);
    final result = <Object?>[
      'ConformancePackName',
      serializers.serialize(
        payload.conformancePackName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.conformancePackRuleEvaluationResults != null) {
      result
        ..add('ConformancePackRuleEvaluationResults')
        ..add(serializers.serialize(
          payload.conformancePackRuleEvaluationResults!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConformancePackEvaluationResult)],
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
