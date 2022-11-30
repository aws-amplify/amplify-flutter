// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.model.data_already_accepted_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'data_already_accepted_exception.g.dart';

/// The event was already logged.
abstract class DataAlreadyAcceptedException
    with
        _i1.AWSEquatable<DataAlreadyAcceptedException>
    implements
        Built<DataAlreadyAcceptedException,
            DataAlreadyAcceptedExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The event was already logged.
  factory DataAlreadyAcceptedException({
    String? expectedSequenceToken,
    String? message,
  }) {
    return _$DataAlreadyAcceptedException._(
      expectedSequenceToken: expectedSequenceToken,
      message: message,
    );
  }

  /// The event was already logged.
  factory DataAlreadyAcceptedException.build(
          [void Function(DataAlreadyAcceptedExceptionBuilder) updates]) =
      _$DataAlreadyAcceptedException;

  const DataAlreadyAcceptedException._();

  /// Constructs a [DataAlreadyAcceptedException] from a [payload] and [response].
  factory DataAlreadyAcceptedException.fromResponse(
    DataAlreadyAcceptedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    DataAlreadyAcceptedExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DataAlreadyAcceptedExceptionBuilder b) {}
  String? get expectedSequenceToken;
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudwatchlogs',
        shape: 'DataAlreadyAcceptedException',
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
  List<Object?> get props => [
        expectedSequenceToken,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DataAlreadyAcceptedException');
    helper.add(
      'expectedSequenceToken',
      expectedSequenceToken,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class DataAlreadyAcceptedExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<DataAlreadyAcceptedException> {
  const DataAlreadyAcceptedExceptionAwsJson11Serializer()
      : super('DataAlreadyAcceptedException');

  @override
  Iterable<Type> get types => const [
        DataAlreadyAcceptedException,
        _$DataAlreadyAcceptedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DataAlreadyAcceptedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DataAlreadyAcceptedExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'expectedSequenceToken':
          if (value != null) {
            result.expectedSequenceToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
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
    final payload = (object as DataAlreadyAcceptedException);
    final result = <Object?>[];
    if (payload.expectedSequenceToken != null) {
      result
        ..add('expectedSequenceToken')
        ..add(serializers.serialize(
          payload.expectedSequenceToken!,
          specifiedType: const FullType(String),
        ));
    }
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
