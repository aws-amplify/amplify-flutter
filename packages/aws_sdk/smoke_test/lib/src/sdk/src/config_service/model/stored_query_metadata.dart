// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.stored_query_metadata; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stored_query_metadata.g.dart';

/// Returns details of a specific query.
abstract class StoredQueryMetadata
    with _i1.AWSEquatable<StoredQueryMetadata>
    implements Built<StoredQueryMetadata, StoredQueryMetadataBuilder> {
  /// Returns details of a specific query.
  factory StoredQueryMetadata({
    required String queryId,
    required String queryArn,
    required String queryName,
    String? description,
  }) {
    return _$StoredQueryMetadata._(
      queryId: queryId,
      queryArn: queryArn,
      queryName: queryName,
      description: description,
    );
  }

  /// Returns details of a specific query.
  factory StoredQueryMetadata.build(
          [void Function(StoredQueryMetadataBuilder) updates]) =
      _$StoredQueryMetadata;

  const StoredQueryMetadata._();

  static const List<_i2.SmithySerializer<StoredQueryMetadata>> serializers = [
    StoredQueryMetadataAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StoredQueryMetadataBuilder b) {}

  /// The ID of the query.
  String get queryId;

  /// Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
  String get queryArn;

  /// The name of the query.
  String get queryName;

  /// A unique description for the query.
  String? get description;
  @override
  List<Object?> get props => [
        queryId,
        queryArn,
        queryName,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StoredQueryMetadata')
      ..add(
        'queryId',
        queryId,
      )
      ..add(
        'queryArn',
        queryArn,
      )
      ..add(
        'queryName',
        queryName,
      )
      ..add(
        'description',
        description,
      );
    return helper.toString();
  }
}

class StoredQueryMetadataAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<StoredQueryMetadata> {
  const StoredQueryMetadataAwsJson11Serializer() : super('StoredQueryMetadata');

  @override
  Iterable<Type> get types => const [
        StoredQueryMetadata,
        _$StoredQueryMetadata,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StoredQueryMetadata deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StoredQueryMetadataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'QueryId':
          result.queryId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'QueryArn':
          result.queryArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'QueryName':
          result.queryName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
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
    StoredQueryMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StoredQueryMetadata(:queryId, :queryArn, :queryName, :description) =
        object;
    result$.addAll([
      'QueryId',
      serializers.serialize(
        queryId,
        specifiedType: const FullType(String),
      ),
      'QueryArn',
      serializers.serialize(
        queryArn,
        specifiedType: const FullType(String),
      ),
      'QueryName',
      serializers.serialize(
        queryName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (description != null) {
      result$
        ..add('Description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
