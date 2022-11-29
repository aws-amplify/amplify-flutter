// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.continuous_backups_unavailable_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'continuous_backups_unavailable_exception.g.dart';

/// Backups have not yet been enabled for this table.
abstract class ContinuousBackupsUnavailableException
    with
        _i1.AWSEquatable<ContinuousBackupsUnavailableException>
    implements
        Built<ContinuousBackupsUnavailableException,
            ContinuousBackupsUnavailableExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Backups have not yet been enabled for this table.
  factory ContinuousBackupsUnavailableException({String? message}) {
    return _$ContinuousBackupsUnavailableException._(message: message);
  }

  /// Backups have not yet been enabled for this table.
  factory ContinuousBackupsUnavailableException.build(
      [void Function(ContinuousBackupsUnavailableExceptionBuilder)
          updates]) = _$ContinuousBackupsUnavailableException;

  const ContinuousBackupsUnavailableException._();

  /// Constructs a [ContinuousBackupsUnavailableException] from a [payload] and [response].
  factory ContinuousBackupsUnavailableException.fromResponse(
    ContinuousBackupsUnavailableException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ContinuousBackupsUnavailableExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ContinuousBackupsUnavailableExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'ContinuousBackupsUnavailableException',
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
    final helper =
        newBuiltValueToStringHelper('ContinuousBackupsUnavailableException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ContinuousBackupsUnavailableExceptionAwsJson10Serializer extends _i2
    .StructuredSmithySerializer<ContinuousBackupsUnavailableException> {
  const ContinuousBackupsUnavailableExceptionAwsJson10Serializer()
      : super('ContinuousBackupsUnavailableException');

  @override
  Iterable<Type> get types => const [
        ContinuousBackupsUnavailableException,
        _$ContinuousBackupsUnavailableException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ContinuousBackupsUnavailableException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContinuousBackupsUnavailableExceptionBuilder();
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
    final payload = (object as ContinuousBackupsUnavailableException);
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
