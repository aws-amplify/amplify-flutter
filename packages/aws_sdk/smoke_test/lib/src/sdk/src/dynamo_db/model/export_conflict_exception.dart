// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.export_conflict_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'export_conflict_exception.g.dart';

/// There was a conflict when writing to the specified S3 bucket.
abstract class ExportConflictException
    with _i1.AWSEquatable<ExportConflictException>
    implements
        Built<ExportConflictException, ExportConflictExceptionBuilder>,
        _i2.SmithyHttpException {
  /// There was a conflict when writing to the specified S3 bucket.
  factory ExportConflictException({String? message}) {
    return _$ExportConflictException._(message: message);
  }

  /// There was a conflict when writing to the specified S3 bucket.
  factory ExportConflictException.build(
          [void Function(ExportConflictExceptionBuilder) updates]) =
      _$ExportConflictException;

  const ExportConflictException._();

  /// Constructs a [ExportConflictException] from a [payload] and [response].
  factory ExportConflictException.fromResponse(
    ExportConflictException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ExportConflictExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportConflictExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'ExportConflictException',
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
    final helper = newBuiltValueToStringHelper('ExportConflictException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ExportConflictExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ExportConflictException> {
  const ExportConflictExceptionAwsJson10Serializer()
      : super('ExportConflictException');

  @override
  Iterable<Type> get types => const [
        ExportConflictException,
        _$ExportConflictException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExportConflictException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportConflictExceptionBuilder();
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
    final payload = (object as ExportConflictException);
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
