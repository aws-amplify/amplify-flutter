// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    String? description,
    required String queryArn,
    required String queryId,
    required String queryName,
  }) {
    return _$StoredQueryMetadata._(
      description: description,
      queryArn: queryArn,
      queryId: queryId,
      queryName: queryName,
    );
  }

  /// Returns details of a specific query.
  factory StoredQueryMetadata.build(
          [void Function(StoredQueryMetadataBuilder) updates]) =
      _$StoredQueryMetadata;

  const StoredQueryMetadata._();

  static const List<_i2.SmithySerializer> serializers = [
    StoredQueryMetadataAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StoredQueryMetadataBuilder b) {}

  /// A unique description for the query.
  String? get description;

  /// Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
  String get queryArn;

  /// The ID of the query.
  String get queryId;

  /// The name of the query.
  String get queryName;
  @override
  List<Object?> get props => [
        description,
        queryArn,
        queryId,
        queryName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StoredQueryMetadata');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'queryArn',
      queryArn,
    );
    helper.add(
      'queryId',
      queryId,
    );
    helper.add(
      'queryName',
      queryName,
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
      switch (key) {
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'QueryArn':
          result.queryArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'QueryId':
          result.queryId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'QueryName':
          result.queryName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as StoredQueryMetadata);
    final result = <Object?>[
      'QueryArn',
      serializers.serialize(
        payload.queryArn,
        specifiedType: const FullType(String),
      ),
      'QueryId',
      serializers.serialize(
        payload.queryId,
        specifiedType: const FullType(String),
      ),
      'QueryName',
      serializers.serialize(
        payload.queryName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.description != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
