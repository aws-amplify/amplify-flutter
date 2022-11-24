// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.message_body; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'message_body.g.dart';

/// Provides information about an API request or response.
abstract class MessageBody
    with _i1.AWSEquatable<MessageBody>
    implements Built<MessageBody, MessageBodyBuilder> {
  /// Provides information about an API request or response.
  factory MessageBody({
    String? message,
    String? requestId,
  }) {
    return _$MessageBody._(
      message: message,
      requestId: requestId,
    );
  }

  /// Provides information about an API request or response.
  factory MessageBody.build([void Function(MessageBodyBuilder) updates]) =
      _$MessageBody;

  const MessageBody._();

  static const List<_i2.SmithySerializer> serializers = [
    MessageBodyRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MessageBodyBuilder b) {}

  /// The message that's returned from the API.
  String? get message;

  /// The unique identifier for the request or response.
  String? get requestId;
  @override
  List<Object?> get props => [
        message,
        requestId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MessageBody');
    helper.add(
      'message',
      message,
    );
    helper.add(
      'requestId',
      requestId,
    );
    return helper.toString();
  }
}

class MessageBodyRestJson1Serializer
    extends _i2.StructuredSmithySerializer<MessageBody> {
  const MessageBodyRestJson1Serializer() : super('MessageBody');

  @override
  Iterable<Type> get types => const [
        MessageBody,
        _$MessageBody,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MessageBody deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessageBodyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RequestID':
          if (value != null) {
            result.requestId = (serializers.deserialize(
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
    final payload = (object as MessageBody);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.requestId != null) {
      result
        ..add('RequestID')
        ..add(serializers.serialize(
          payload.requestId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
