// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_stored_query_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_stored_query_request.g.dart';

abstract class GetStoredQueryRequest
    with
        _i1.HttpInput<GetStoredQueryRequest>,
        _i2.AWSEquatable<GetStoredQueryRequest>
    implements Built<GetStoredQueryRequest, GetStoredQueryRequestBuilder> {
  factory GetStoredQueryRequest({required String queryName}) {
    return _$GetStoredQueryRequest._(queryName: queryName);
  }

  factory GetStoredQueryRequest.build(
          [void Function(GetStoredQueryRequestBuilder) updates]) =
      _$GetStoredQueryRequest;

  const GetStoredQueryRequest._();

  factory GetStoredQueryRequest.fromRequest(
    GetStoredQueryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetStoredQueryRequest>> serializers = [
    GetStoredQueryRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetStoredQueryRequestBuilder b) {}

  /// The name of the query.
  String get queryName;
  @override
  GetStoredQueryRequest getPayload() => this;
  @override
  List<Object?> get props => [queryName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetStoredQueryRequest')
      ..add(
        'queryName',
        queryName,
      );
    return helper.toString();
  }
}

class GetStoredQueryRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetStoredQueryRequest> {
  const GetStoredQueryRequestAwsJson11Serializer()
      : super('GetStoredQueryRequest');

  @override
  Iterable<Type> get types => const [
        GetStoredQueryRequest,
        _$GetStoredQueryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetStoredQueryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetStoredQueryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'QueryName':
          result.queryName = (serializers.deserialize(
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
    GetStoredQueryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetStoredQueryRequest(:queryName) = object;
    result$.addAll([
      'QueryName',
      serializers.serialize(
        queryName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
