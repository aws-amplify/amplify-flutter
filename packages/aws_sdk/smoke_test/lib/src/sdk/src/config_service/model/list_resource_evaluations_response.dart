// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.list_resource_evaluations_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_evaluation.dart'
    as _i2;

part 'list_resource_evaluations_response.g.dart';

abstract class ListResourceEvaluationsResponse
    with
        _i1.AWSEquatable<ListResourceEvaluationsResponse>
    implements
        Built<ListResourceEvaluationsResponse,
            ListResourceEvaluationsResponseBuilder> {
  factory ListResourceEvaluationsResponse({
    List<_i2.ResourceEvaluation>? resourceEvaluations,
    String? nextToken,
  }) {
    return _$ListResourceEvaluationsResponse._(
      resourceEvaluations: resourceEvaluations == null
          ? null
          : _i3.BuiltList(resourceEvaluations),
      nextToken: nextToken,
    );
  }

  factory ListResourceEvaluationsResponse.build(
          [void Function(ListResourceEvaluationsResponseBuilder) updates]) =
      _$ListResourceEvaluationsResponse;

  const ListResourceEvaluationsResponse._();

  /// Constructs a [ListResourceEvaluationsResponse] from a [payload] and [response].
  factory ListResourceEvaluationsResponse.fromResponse(
    ListResourceEvaluationsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListResourceEvaluationsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListResourceEvaluationsResponseBuilder b) {}

  /// Returns a `ResourceEvaluations` object.
  _i3.BuiltList<_i2.ResourceEvaluation>? get resourceEvaluations;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        resourceEvaluations,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListResourceEvaluationsResponse');
    helper.add(
      'resourceEvaluations',
      resourceEvaluations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListResourceEvaluationsResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ListResourceEvaluationsResponse> {
  const ListResourceEvaluationsResponseAwsJson11Serializer()
      : super('ListResourceEvaluationsResponse');

  @override
  Iterable<Type> get types => const [
        ListResourceEvaluationsResponse,
        _$ListResourceEvaluationsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListResourceEvaluationsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListResourceEvaluationsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ResourceEvaluations':
          if (value != null) {
            result.resourceEvaluations.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ResourceEvaluation)],
              ),
            ) as _i3.BuiltList<_i2.ResourceEvaluation>));
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
    final payload = (object as ListResourceEvaluationsResponse);
    final result = <Object?>[];
    if (payload.resourceEvaluations != null) {
      result
        ..add('ResourceEvaluations')
        ..add(serializers.serialize(
          payload.resourceEvaluations!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ResourceEvaluation)],
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
