// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.delete_stored_query_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_stored_query_request.g.dart';

abstract class DeleteStoredQueryRequest
    with
        _i1.HttpInput<DeleteStoredQueryRequest>,
        _i2.AWSEquatable<DeleteStoredQueryRequest>
    implements
        Built<DeleteStoredQueryRequest, DeleteStoredQueryRequestBuilder> {
  factory DeleteStoredQueryRequest({required String queryName}) {
    return _$DeleteStoredQueryRequest._(queryName: queryName);
  }

  factory DeleteStoredQueryRequest.build(
          [void Function(DeleteStoredQueryRequestBuilder) updates]) =
      _$DeleteStoredQueryRequest;

  const DeleteStoredQueryRequest._();

  factory DeleteStoredQueryRequest.fromRequest(
    DeleteStoredQueryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteStoredQueryRequest>>
      serializers = [DeleteStoredQueryRequestAwsJson11Serializer()];

  /// The name of the query that you want to delete.
  String get queryName;
  @override
  DeleteStoredQueryRequest getPayload() => this;
  @override
  List<Object?> get props => [queryName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteStoredQueryRequest')
      ..add(
        'queryName',
        queryName,
      );
    return helper.toString();
  }
}

class DeleteStoredQueryRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DeleteStoredQueryRequest> {
  const DeleteStoredQueryRequestAwsJson11Serializer()
      : super('DeleteStoredQueryRequest');

  @override
  Iterable<Type> get types => const [
        DeleteStoredQueryRequest,
        _$DeleteStoredQueryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteStoredQueryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteStoredQueryRequestBuilder();
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
    DeleteStoredQueryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteStoredQueryRequest(:queryName) = object;
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
