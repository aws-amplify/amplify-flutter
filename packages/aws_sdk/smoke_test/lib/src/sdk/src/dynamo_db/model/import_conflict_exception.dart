// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.import_conflict_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'import_conflict_exception.g.dart';

/// There was a conflict when importing from the specified S3 source. This can occur when the current import conflicts with a previous import request that had the same client token.
abstract class ImportConflictException
    with _i1.AWSEquatable<ImportConflictException>
    implements
        Built<ImportConflictException, ImportConflictExceptionBuilder>,
        _i2.SmithyHttpException {
  /// There was a conflict when importing from the specified S3 source. This can occur when the current import conflicts with a previous import request that had the same client token.
  factory ImportConflictException({String? message}) {
    return _$ImportConflictException._(message: message);
  }

  /// There was a conflict when importing from the specified S3 source. This can occur when the current import conflicts with a previous import request that had the same client token.
  factory ImportConflictException.build(
          [void Function(ImportConflictExceptionBuilder) updates]) =
      _$ImportConflictException;

  const ImportConflictException._();

  /// Constructs a [ImportConflictException] from a [payload] and [response].
  factory ImportConflictException.fromResponse(
    ImportConflictException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ImportConflictException>> serializers =
      [ImportConflictExceptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportConflictExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'ImportConflictException',
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
    final helper = newBuiltValueToStringHelper('ImportConflictException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class ImportConflictExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ImportConflictException> {
  const ImportConflictExceptionAwsJson10Serializer()
      : super('ImportConflictException');

  @override
  Iterable<Type> get types => const [
        ImportConflictException,
        _$ImportConflictException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ImportConflictException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportConflictExceptionBuilder();
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
    ImportConflictException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ImportConflictException(:message) = object;
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
