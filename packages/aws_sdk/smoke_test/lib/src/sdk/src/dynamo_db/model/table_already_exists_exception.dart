// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.table_already_exists_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'table_already_exists_exception.g.dart';

/// A target table with the specified name already exists.
abstract class TableAlreadyExistsException
    with _i1.AWSEquatable<TableAlreadyExistsException>
    implements
        Built<TableAlreadyExistsException, TableAlreadyExistsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// A target table with the specified name already exists.
  factory TableAlreadyExistsException({String? message}) {
    return _$TableAlreadyExistsException._(message: message);
  }

  /// A target table with the specified name already exists.
  factory TableAlreadyExistsException.build(
          [void Function(TableAlreadyExistsExceptionBuilder) updates]) =
      _$TableAlreadyExistsException;

  const TableAlreadyExistsException._();

  /// Constructs a [TableAlreadyExistsException] from a [payload] and [response].
  factory TableAlreadyExistsException.fromResponse(
    TableAlreadyExistsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    TableAlreadyExistsExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TableAlreadyExistsExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'TableAlreadyExistsException',
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
    final helper = newBuiltValueToStringHelper('TableAlreadyExistsException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class TableAlreadyExistsExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<TableAlreadyExistsException> {
  const TableAlreadyExistsExceptionAwsJson10Serializer()
      : super('TableAlreadyExistsException');

  @override
  Iterable<Type> get types => const [
        TableAlreadyExistsException,
        _$TableAlreadyExistsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TableAlreadyExistsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TableAlreadyExistsExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as TableAlreadyExistsException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
