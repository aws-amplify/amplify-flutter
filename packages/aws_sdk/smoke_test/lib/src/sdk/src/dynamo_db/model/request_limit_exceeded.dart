// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.request_limit_exceeded; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'request_limit_exceeded.g.dart';

/// Throughput exceeds the current throughput quota for your account. Please contact [Amazon Web Services Support](https://aws.amazon.com/support) to request a quota increase.
abstract class RequestLimitExceeded
    with _i1.AWSEquatable<RequestLimitExceeded>
    implements
        Built<RequestLimitExceeded, RequestLimitExceededBuilder>,
        _i2.SmithyHttpException {
  /// Throughput exceeds the current throughput quota for your account. Please contact [Amazon Web Services Support](https://aws.amazon.com/support) to request a quota increase.
  factory RequestLimitExceeded({String? message}) {
    return _$RequestLimitExceeded._(message: message);
  }

  /// Throughput exceeds the current throughput quota for your account. Please contact [Amazon Web Services Support](https://aws.amazon.com/support) to request a quota increase.
  factory RequestLimitExceeded.build(
          [void Function(RequestLimitExceededBuilder) updates]) =
      _$RequestLimitExceeded;

  const RequestLimitExceeded._();

  /// Constructs a [RequestLimitExceeded] from a [payload] and [response].
  factory RequestLimitExceeded.fromResponse(
    RequestLimitExceeded payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    RequestLimitExceededAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestLimitExceededBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'RequestLimitExceeded',
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
    final helper = newBuiltValueToStringHelper('RequestLimitExceeded');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class RequestLimitExceededAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<RequestLimitExceeded> {
  const RequestLimitExceededAwsJson10Serializer()
      : super('RequestLimitExceeded');

  @override
  Iterable<Type> get types => const [
        RequestLimitExceeded,
        _$RequestLimitExceeded,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  RequestLimitExceeded deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestLimitExceededBuilder();
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
    final payload = (object as RequestLimitExceeded);
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
