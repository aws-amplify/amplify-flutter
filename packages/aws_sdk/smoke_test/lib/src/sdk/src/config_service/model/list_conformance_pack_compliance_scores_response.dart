// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    required List<_i2.ConformancePackComplianceScore>
        conformancePackComplianceScores,
    String? nextToken,
  }) {
    return _$ListConformancePackComplianceScoresResponse._(
      conformancePackComplianceScores:
          _i3.BuiltList(conformancePackComplianceScores),
      nextToken: nextToken,
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

  static const List<_i4.SmithySerializer> serializers = [
    ListConformancePackComplianceScoresResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListConformancePackComplianceScoresResponseBuilder b) {}

  /// A list of `ConformancePackComplianceScore` objects.
  _i3.BuiltList<_i2.ConformancePackComplianceScore>
      get conformancePackComplianceScores;

  /// The `nextToken` string that you can use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        conformancePackComplianceScores,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListConformancePackComplianceScoresResponse');
    helper.add(
      'conformancePackComplianceScores',
      conformancePackComplianceScores,
    );
    helper.add(
      'nextToken',
      nextToken,
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
      switch (key) {
        case 'ConformancePackComplianceScores':
          result.conformancePackComplianceScores
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ConformancePackComplianceScore)],
            ),
          ) as _i3.BuiltList<_i2.ConformancePackComplianceScore>));
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
    final payload = (object as ListConformancePackComplianceScoresResponse);
    final result = <Object?>[
      'ConformancePackComplianceScores',
      serializers.serialize(
        payload.conformancePackComplianceScores,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(_i2.ConformancePackComplianceScore)],
        ),
      ),
    ];
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
