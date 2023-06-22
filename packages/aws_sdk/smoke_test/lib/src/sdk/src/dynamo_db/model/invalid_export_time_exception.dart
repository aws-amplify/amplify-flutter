// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.invalid_export_time_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_export_time_exception.g.dart';

/// The specified `ExportTime` is outside of the point in time recovery window.
abstract class InvalidExportTimeException
    with _i1.AWSEquatable<InvalidExportTimeException>
    implements
        Built<InvalidExportTimeException, InvalidExportTimeExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified `ExportTime` is outside of the point in time recovery window.
  factory InvalidExportTimeException({String? message}) {
    return _$InvalidExportTimeException._(message: message);
  }

  /// The specified `ExportTime` is outside of the point in time recovery window.
  factory InvalidExportTimeException.build(
          [void Function(InvalidExportTimeExceptionBuilder) updates]) =
      _$InvalidExportTimeException;

  const InvalidExportTimeException._();

  /// Constructs a [InvalidExportTimeException] from a [payload] and [response].
  factory InvalidExportTimeException.fromResponse(
    InvalidExportTimeException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidExportTimeException>>
      serializers = [InvalidExportTimeExceptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidExportTimeExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'InvalidExportTimeException',
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
    final helper = newBuiltValueToStringHelper('InvalidExportTimeException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidExportTimeExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<InvalidExportTimeException> {
  const InvalidExportTimeExceptionAwsJson10Serializer()
      : super('InvalidExportTimeException');

  @override
  Iterable<Type> get types => const [
        InvalidExportTimeException,
        _$InvalidExportTimeException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  InvalidExportTimeException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidExportTimeExceptionBuilder();
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
    InvalidExportTimeException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidExportTimeException(:message) = object;
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
