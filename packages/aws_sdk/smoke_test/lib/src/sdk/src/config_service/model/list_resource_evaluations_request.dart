// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.list_resource_evaluations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_evaluation_filters.dart'
    as _i3;

part 'list_resource_evaluations_request.g.dart';

abstract class ListResourceEvaluationsRequest
    with
        _i1.HttpInput<ListResourceEvaluationsRequest>,
        _i2.AWSEquatable<ListResourceEvaluationsRequest>
    implements
        Built<ListResourceEvaluationsRequest,
            ListResourceEvaluationsRequestBuilder> {
  factory ListResourceEvaluationsRequest({
    _i3.ResourceEvaluationFilters? filters,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$ListResourceEvaluationsRequest._(
      filters: filters,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory ListResourceEvaluationsRequest.build(
          [void Function(ListResourceEvaluationsRequestBuilder) updates]) =
      _$ListResourceEvaluationsRequest;

  const ListResourceEvaluationsRequest._();

  factory ListResourceEvaluationsRequest.fromRequest(
    ListResourceEvaluationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListResourceEvaluationsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListResourceEvaluationsRequestBuilder b) {
    b.limit = 0;
  }

  /// Returns a `ResourceEvaluationFilters` object.
  _i3.ResourceEvaluationFilters? get filters;

  /// The maximum number of evaluations returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  ListResourceEvaluationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListResourceEvaluationsRequest');
    helper.add(
      'filters',
      filters,
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

class ListResourceEvaluationsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ListResourceEvaluationsRequest> {
  const ListResourceEvaluationsRequestAwsJson11Serializer()
      : super('ListResourceEvaluationsRequest');

  @override
  Iterable<Type> get types => const [
        ListResourceEvaluationsRequest,
        _$ListResourceEvaluationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListResourceEvaluationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListResourceEvaluationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Filters':
          if (value != null) {
            result.filters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ResourceEvaluationFilters),
            ) as _i3.ResourceEvaluationFilters));
          }
          break;
        case 'Limit':
          result.limit = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as ListResourceEvaluationsRequest);
    final result = <Object?>[
      'Limit',
      serializers.serialize(
        payload.limit,
        specifiedType: const FullType(int),
      ),
    ];
    if (payload.filters != null) {
      result
        ..add('Filters')
        ..add(serializers.serialize(
          payload.filters!,
          specifiedType: const FullType(_i3.ResourceEvaluationFilters),
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
