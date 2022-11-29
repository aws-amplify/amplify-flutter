// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.stored_query; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stored_query.g.dart';

/// Provides the details of a stored query.
abstract class StoredQuery
    with _i1.AWSEquatable<StoredQuery>
    implements Built<StoredQuery, StoredQueryBuilder> {
  /// Provides the details of a stored query.
  factory StoredQuery({
    String? description,
    String? expression,
    String? queryArn,
    String? queryId,
    required String queryName,
  }) {
    return _$StoredQuery._(
      description: description,
      expression: expression,
      queryArn: queryArn,
      queryId: queryId,
      queryName: queryName,
    );
  }

  /// Provides the details of a stored query.
  factory StoredQuery.build([void Function(StoredQueryBuilder) updates]) =
      _$StoredQuery;

  const StoredQuery._();

  static const List<_i2.SmithySerializer> serializers = [
    StoredQueryAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StoredQueryBuilder b) {}

  /// A unique description for the query.
  String? get description;

  /// The expression of the query. For example, `SELECT resourceId, resourceType, supplementaryConfiguration.BucketVersioningConfiguration.status WHERE resourceType = 'AWS::S3::Bucket' AND supplementaryConfiguration.BucketVersioningConfiguration.status = 'Off'.`
  String? get expression;

  /// Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
  String? get queryArn;

  /// The ID of the query.
  String? get queryId;

  /// The name of the query.
  String get queryName;
  @override
  List<Object?> get props => [
        description,
        expression,
        queryArn,
        queryId,
        queryName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StoredQuery');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'expression',
      expression,
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

class StoredQueryAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<StoredQuery> {
  const StoredQueryAwsJson11Serializer() : super('StoredQuery');

  @override
  Iterable<Type> get types => const [
        StoredQuery,
        _$StoredQuery,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StoredQuery deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StoredQueryBuilder();
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
        case 'Expression':
          if (value != null) {
            result.expression = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'QueryArn':
          if (value != null) {
            result.queryArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'QueryId':
          if (value != null) {
            result.queryId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as StoredQuery);
    final result = <Object?>[
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
    if (payload.expression != null) {
      result
        ..add('Expression')
        ..add(serializers.serialize(
          payload.expression!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.queryArn != null) {
      result
        ..add('QueryArn')
        ..add(serializers.serialize(
          payload.queryArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.queryId != null) {
      result
        ..add('QueryId')
        ..add(serializers.serialize(
          payload.queryId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
