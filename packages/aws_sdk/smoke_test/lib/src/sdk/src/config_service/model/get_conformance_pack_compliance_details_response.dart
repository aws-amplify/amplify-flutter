// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.get_conformance_pack_compliance_details_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_evaluation_result.dart';

part 'get_conformance_pack_compliance_details_response.g.dart';

abstract class GetConformancePackComplianceDetailsResponse
    with
        _i1.AWSEquatable<GetConformancePackComplianceDetailsResponse>
    implements
        Built<GetConformancePackComplianceDetailsResponse,
            GetConformancePackComplianceDetailsResponseBuilder> {
  factory GetConformancePackComplianceDetailsResponse({
    required String conformancePackName,
    List<ConformancePackEvaluationResult>? conformancePackRuleEvaluationResults,
    String? nextToken,
  }) {
    return _$GetConformancePackComplianceDetailsResponse._(
      conformancePackName: conformancePackName,
      conformancePackRuleEvaluationResults:
          conformancePackRuleEvaluationResults == null
              ? null
              : _i2.BuiltList(conformancePackRuleEvaluationResults),
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

  static const List<
          _i3.SmithySerializer<GetConformancePackComplianceDetailsResponse>>
      serializers = [
    GetConformancePackComplianceDetailsResponseAwsJson11Serializer()
  ];

  /// Name of the conformance pack.
  String get conformancePackName;

  /// Returns a list of `ConformancePackEvaluationResult` objects.
  _i2.BuiltList<ConformancePackEvaluationResult>?
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
        'GetConformancePackComplianceDetailsResponse')
      ..add(
        'conformancePackName',
        conformancePackName,
      )
      ..add(
        'conformancePackRuleEvaluationResults',
        conformancePackRuleEvaluationResults,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetConformancePackComplianceDetailsResponseAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<GetConformancePackComplianceDetailsResponse> {
  const GetConformancePackComplianceDetailsResponseAwsJson11Serializer()
      : super('GetConformancePackComplianceDetailsResponse');

  @override
  Iterable<Type> get types => const [
        GetConformancePackComplianceDetailsResponse,
        _$GetConformancePackComplianceDetailsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackRuleEvaluationResults':
          result.conformancePackRuleEvaluationResults
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ConformancePackEvaluationResult)],
            ),
          ) as _i2.BuiltList<ConformancePackEvaluationResult>));
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
    GetConformancePackComplianceDetailsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetConformancePackComplianceDetailsResponse(
      :conformancePackName,
      :conformancePackRuleEvaluationResults,
      :nextToken
    ) = object;
    result$.addAll([
      'ConformancePackName',
      serializers.serialize(
        conformancePackName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (conformancePackRuleEvaluationResults != null) {
      result$
        ..add('ConformancePackRuleEvaluationResults')
        ..add(serializers.serialize(
          conformancePackRuleEvaluationResults,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ConformancePackEvaluationResult)],
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
