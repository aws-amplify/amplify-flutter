// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.put_stored_query_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/stored_query.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart';

part 'put_stored_query_request.g.dart';

abstract class PutStoredQueryRequest
    with
        _i1.HttpInput<PutStoredQueryRequest>,
        _i2.AWSEquatable<PutStoredQueryRequest>
    implements Built<PutStoredQueryRequest, PutStoredQueryRequestBuilder> {
  factory PutStoredQueryRequest({
    required StoredQuery storedQuery,
    List<Tag>? tags,
  }) {
    return _$PutStoredQueryRequest._(
      storedQuery: storedQuery,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  factory PutStoredQueryRequest.build(
          [void Function(PutStoredQueryRequestBuilder) updates]) =
      _$PutStoredQueryRequest;

  const PutStoredQueryRequest._();

  factory PutStoredQueryRequest.fromRequest(
    PutStoredQueryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutStoredQueryRequest>> serializers = [
    PutStoredQueryRequestAwsJson11Serializer()
  ];

  /// A list of `StoredQuery` objects. The mandatory fields are `QueryName` and `Expression`.
  ///
  /// When you are creating a query, you must provide a query name and an expression. When you are updating a query, you must provide a query name but updating the description is optional.
  StoredQuery get storedQuery;

  /// A list of `Tags` object.
  _i3.BuiltList<Tag>? get tags;
  @override
  PutStoredQueryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        storedQuery,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutStoredQueryRequest')
      ..add(
        'storedQuery',
        storedQuery,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class PutStoredQueryRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutStoredQueryRequest> {
  const PutStoredQueryRequestAwsJson11Serializer()
      : super('PutStoredQueryRequest');

  @override
  Iterable<Type> get types => const [
        PutStoredQueryRequest,
        _$PutStoredQueryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutStoredQueryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutStoredQueryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StoredQuery':
          result.storedQuery.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StoredQuery),
          ) as StoredQuery));
        case 'Tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i3.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutStoredQueryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutStoredQueryRequest(:storedQuery, :tags) = object;
    result$.addAll([
      'StoredQuery',
      serializers.serialize(
        storedQuery,
        specifiedType: const FullType(StoredQuery),
      ),
    ]);
    if (tags != null) {
      result$
        ..add('Tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
