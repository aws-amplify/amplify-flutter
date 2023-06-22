// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.list_conformance_pack_compliance_scores_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_score.dart'
    as _i2;

part 'list_conformance_pack_compliance_scores_response.g.dart';

abstract class ListConformancePackComplianceScoresResponse
    with
        _i1.AWSEquatable<ListConformancePackComplianceScoresResponse>
    implements
        Built<ListConformancePackComplianceScoresResponse,
            ListConformancePackComplianceScoresResponseBuilder> {
  factory ListConformancePackComplianceScoresResponse({
    String? nextToken,
    required List<_i2.ConformancePackComplianceScore>
        conformancePackComplianceScores,
  }) {
    return _$ListConformancePackComplianceScoresResponse._(
      nextToken: nextToken,
      conformancePackComplianceScores:
          _i3.BuiltList(conformancePackComplianceScores),
    );
  }

  factory ListConformancePackComplianceScoresResponse.build(
      [void Function(ListConformancePackComplianceScoresResponseBuilder)
          updates]) = _$ListConformancePackComplianceScoresResponse;

  const ListConformancePackComplianceScoresResponse._();

  /// Constructs a [ListConformancePackComplianceScoresResponse] from a [payload] and [response].
  factory ListConformancePackComplianceScoresResponse.fromResponse(
    ListConformancePackComplianceScoresResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i4.SmithySerializer<ListConformancePackComplianceScoresResponse>>
      serializers = [
    ListConformancePackComplianceScoresResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListConformancePackComplianceScoresResponseBuilder b) {}

  /// The `nextToken` string that you can use to get the next page of results in a paginated response.
  String? get nextToken;

  /// A list of `ConformancePackComplianceScore` objects.
  _i3.BuiltList<_i2.ConformancePackComplianceScore>
      get conformancePackComplianceScores;
  @override
  List<Object?> get props => [
        nextToken,
        conformancePackComplianceScores,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListConformancePackComplianceScoresResponse')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'conformancePackComplianceScores',
        conformancePackComplianceScores,
      );
    return helper.toString();
  }
}

class ListConformancePackComplianceScoresResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<ListConformancePackComplianceScoresResponse> {
  const ListConformancePackComplianceScoresResponseAwsJson11Serializer()
      : super('ListConformancePackComplianceScoresResponse');

  @override
  Iterable<Type> get types => const [
        ListConformancePackComplianceScoresResponse,
        _$ListConformancePackComplianceScoresResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListConformancePackComplianceScoresResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListConformancePackComplianceScoresResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackComplianceScores':
          result.conformancePackComplianceScores
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ConformancePackComplianceScore)],
            ),
          ) as _i3.BuiltList<_i2.ConformancePackComplianceScore>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListConformancePackComplianceScoresResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListConformancePackComplianceScoresResponse(
      :nextToken,
      :conformancePackComplianceScores
    ) = object;
    result$.addAll([
      'ConformancePackComplianceScores',
      serializers.serialize(
        conformancePackComplianceScores,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(_i2.ConformancePackComplianceScore)],
        ),
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
