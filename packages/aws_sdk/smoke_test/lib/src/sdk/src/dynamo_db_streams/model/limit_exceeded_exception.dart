// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db_streams.model.limit_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'limit_exceeded_exception.g.dart';

/// There is no limit to the number of daily on-demand backups that can be taken.
///
/// For most purposes, up to 500 simultaneous table operations are allowed per account. These operations include `CreateTable`, `UpdateTable`, `DeleteTable`,`UpdateTimeToLive`, `RestoreTableFromBackup`, and `RestoreTableToPointInTime`.
///
/// When you are creating a table with one or more secondary indexes, you can have up to 250 such requests running at a time. However, if the table or index specifications are complex, then DynamoDB might temporarily reduce the number of concurrent operations.
///
/// When importing into DynamoDB, up to 50 simultaneous import table operations are allowed per account.
///
/// There is a soft account quota of 2,500 tables.
///
/// GetRecords was called with a value of more than 1000 for the limit request parameter.
///
/// More than 2 processes are reading from the same streams shard at the same time. Exceeding this limit may result in request throttling.
abstract class LimitExceededException
    with _i1.AWSEquatable<LimitExceededException>
    implements
        Built<LimitExceededException, LimitExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// There is no limit to the number of daily on-demand backups that can be taken.
  ///
  /// For most purposes, up to 500 simultaneous table operations are allowed per account. These operations include `CreateTable`, `UpdateTable`, `DeleteTable`,`UpdateTimeToLive`, `RestoreTableFromBackup`, and `RestoreTableToPointInTime`.
  ///
  /// When you are creating a table with one or more secondary indexes, you can have up to 250 such requests running at a time. However, if the table or index specifications are complex, then DynamoDB might temporarily reduce the number of concurrent operations.
  ///
  /// When importing into DynamoDB, up to 50 simultaneous import table operations are allowed per account.
  ///
  /// There is a soft account quota of 2,500 tables.
  ///
  /// GetRecords was called with a value of more than 1000 for the limit request parameter.
  ///
  /// More than 2 processes are reading from the same streams shard at the same time. Exceeding this limit may result in request throttling.
  factory LimitExceededException({String? message}) {
    return _$LimitExceededException._(message: message);
  }

  /// There is no limit to the number of daily on-demand backups that can be taken.
  ///
  /// For most purposes, up to 500 simultaneous table operations are allowed per account. These operations include `CreateTable`, `UpdateTable`, `DeleteTable`,`UpdateTimeToLive`, `RestoreTableFromBackup`, and `RestoreTableToPointInTime`.
  ///
  /// When you are creating a table with one or more secondary indexes, you can have up to 250 such requests running at a time. However, if the table or index specifications are complex, then DynamoDB might temporarily reduce the number of concurrent operations.
  ///
  /// When importing into DynamoDB, up to 50 simultaneous import table operations are allowed per account.
  ///
  /// There is a soft account quota of 2,500 tables.
  ///
  /// GetRecords was called with a value of more than 1000 for the limit request parameter.
  ///
  /// More than 2 processes are reading from the same streams shard at the same time. Exceeding this limit may result in request throttling.
  factory LimitExceededException.build(
          [void Function(LimitExceededExceptionBuilder) updates]) =
      _$LimitExceededException;

  const LimitExceededException._();

  /// Constructs a [LimitExceededException] from a [payload] and [response].
  factory LimitExceededException.fromResponse(
    LimitExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<LimitExceededException>> serializers =
      [LimitExceededExceptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LimitExceededExceptionBuilder b) {}

  /// Too many operations for a given subscriber.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodbstreams',
        shape: 'LimitExceededException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LimitExceededException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class LimitExceededExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<LimitExceededException> {
  const LimitExceededExceptionAwsJson10Serializer()
      : super('LimitExceededException');

  @override
  Iterable<Type> get types => const [
        LimitExceededException,
        _$LimitExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  LimitExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LimitExceededExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
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
    LimitExceededException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final LimitExceededException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
