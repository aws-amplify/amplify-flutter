import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'echo_message.g.dart';

/// Request message sent to the echo worker
@BuiltValue()
abstract class EchoMessage implements Built<EchoMessage, EchoMessageBuilder> {
  /// The message text to echo
  String get message;

  /// Optional delay in milliseconds before responding
  int? get delayMs;

  EchoMessage._();
  factory EchoMessage([void Function(EchoMessageBuilder) updates]) =
      _$EchoMessage;

  static Serializer<EchoMessage> get serializer => _$echoMessageSerializer;
}

/// Response message from the echo worker
@BuiltValue()
abstract class EchoResponse
    implements Built<EchoResponse, EchoResponseBuilder> {
  /// The echoed message
  String get echoedMessage;

  /// Timestamp when the worker processed the message
  DateTime get processedAt;

  /// Total number of messages processed by this worker
  int get messageCount;

  /// Reversed version of the message
  String get reversedMessage;

  EchoResponse._();
  factory EchoResponse([void Function(EchoResponseBuilder) updates]) =
      _$EchoResponse;

  static Serializer<EchoResponse> get serializer => _$echoResponseSerializer;
}
