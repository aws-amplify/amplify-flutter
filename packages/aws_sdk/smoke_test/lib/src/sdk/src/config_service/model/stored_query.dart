// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? queryId,
    String? queryArn,
    required String queryName,
    String? description,
    String? expression,
  }) {
    return _$StoredQuery._(
      queryId: queryId,
      queryArn: queryArn,
      queryName: queryName,
      description: description,
      expression: expression,
    );
  }

  /// Provides the details of a stored query.
  factory StoredQuery.build([void Function(StoredQueryBuilder) updates]) =
      _$StoredQuery;

  const StoredQuery._();

  static const List<_i2.SmithySerializer<StoredQuery>> serializers = [
    StoredQueryAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StoredQueryBuilder b) {}

  /// The ID of the query.
  String? get queryId;

  /// Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
  String? get queryArn;

  /// The name of the query.
  String get queryName;

  /// A unique description for the query.
  String? get description;

  /// The expression of the query. For example, `SELECT resourceId, resourceType, supplementaryConfiguration.BucketVersioningConfiguration.status WHERE resourceType = 'AWS::S3::Bucket' AND supplementaryConfiguration.BucketVersioningConfiguration.status = 'Off'.`
  String? get expression;
  @override
  List<Object?> get props => [
        queryId,
        queryArn,
        queryName,
        description,
        expression,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StoredQuery')
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
      )
      ..add(
        'expression',
        expression,
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
        case 'Expression':
          result.expression = (serializers.deserialize(
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
    StoredQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StoredQuery(
      :queryId,
      :queryArn,
      :queryName,
      :description,
      :expression
    ) = object;
    result$.addAll([
      'QueryName',
      serializers.serialize(
        queryName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (queryId != null) {
      result$
        ..add('QueryId')
        ..add(serializers.serialize(
          queryId,
          specifiedType: const FullType(String),
        ));
    }
    if (queryArn != null) {
      result$
        ..add('QueryArn')
        ..add(serializers.serialize(
          queryArn,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add('Description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (expression != null) {
      result$
        ..add('Expression')
        ..add(serializers.serialize(
          expression,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
