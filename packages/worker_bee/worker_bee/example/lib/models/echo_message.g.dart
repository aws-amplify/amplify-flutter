// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'echo_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EchoMessage> _$echoMessageSerializer = _$EchoMessageSerializer();
Serializer<EchoResponse> _$echoResponseSerializer = _$EchoResponseSerializer();

class _$EchoMessageSerializer implements StructuredSerializer<EchoMessage> {
  @override
  final Iterable<Type> types = const [EchoMessage, _$EchoMessage];
  @override
  final String wireName = 'EchoMessage';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EchoMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'message',
      serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.delayMs;
    if (value != null) {
      result
        ..add('delayMs')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  EchoMessage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EchoMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'delayMs':
          result.delayMs =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$EchoResponseSerializer implements StructuredSerializer<EchoResponse> {
  @override
  final Iterable<Type> types = const [EchoResponse, _$EchoResponse];
  @override
  final String wireName = 'EchoResponse';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EchoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'echoedMessage',
      serializers.serialize(
        object.echoedMessage,
        specifiedType: const FullType(String),
      ),
      'processedAt',
      serializers.serialize(
        object.processedAt,
        specifiedType: const FullType(DateTime),
      ),
      'messageCount',
      serializers.serialize(
        object.messageCount,
        specifiedType: const FullType(int),
      ),
      'reversedMessage',
      serializers.serialize(
        object.reversedMessage,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  EchoResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EchoResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'echoedMessage':
          result.echoedMessage =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'processedAt':
          result.processedAt =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )!
                  as DateTime;
          break;
        case 'messageCount':
          result.messageCount =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
        case 'reversedMessage':
          result.reversedMessage =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EchoMessage extends EchoMessage {
  @override
  final String message;
  @override
  final int? delayMs;

  factory _$EchoMessage([void Function(EchoMessageBuilder)? updates]) =>
      (EchoMessageBuilder()..update(updates))._build();

  _$EchoMessage._({required this.message, this.delayMs}) : super._();
  @override
  EchoMessage rebuild(void Function(EchoMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EchoMessageBuilder toBuilder() => EchoMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EchoMessage &&
        message == other.message &&
        delayMs == other.delayMs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, delayMs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EchoMessage')
          ..add('message', message)
          ..add('delayMs', delayMs))
        .toString();
  }
}

class EchoMessageBuilder implements Builder<EchoMessage, EchoMessageBuilder> {
  _$EchoMessage? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _delayMs;
  int? get delayMs => _$this._delayMs;
  set delayMs(int? delayMs) => _$this._delayMs = delayMs;

  EchoMessageBuilder();

  EchoMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _delayMs = $v.delayMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EchoMessage other) {
    _$v = other as _$EchoMessage;
  }

  @override
  void update(void Function(EchoMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EchoMessage build() => _build();

  _$EchoMessage _build() {
    final _$result =
        _$v ??
        _$EchoMessage._(
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'EchoMessage',
            'message',
          ),
          delayMs: delayMs,
        );
    replace(_$result);
    return _$result;
  }
}

class _$EchoResponse extends EchoResponse {
  @override
  final String echoedMessage;
  @override
  final DateTime processedAt;
  @override
  final int messageCount;
  @override
  final String reversedMessage;

  factory _$EchoResponse([void Function(EchoResponseBuilder)? updates]) =>
      (EchoResponseBuilder()..update(updates))._build();

  _$EchoResponse._({
    required this.echoedMessage,
    required this.processedAt,
    required this.messageCount,
    required this.reversedMessage,
  }) : super._();
  @override
  EchoResponse rebuild(void Function(EchoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EchoResponseBuilder toBuilder() => EchoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EchoResponse &&
        echoedMessage == other.echoedMessage &&
        processedAt == other.processedAt &&
        messageCount == other.messageCount &&
        reversedMessage == other.reversedMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, echoedMessage.hashCode);
    _$hash = $jc(_$hash, processedAt.hashCode);
    _$hash = $jc(_$hash, messageCount.hashCode);
    _$hash = $jc(_$hash, reversedMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EchoResponse')
          ..add('echoedMessage', echoedMessage)
          ..add('processedAt', processedAt)
          ..add('messageCount', messageCount)
          ..add('reversedMessage', reversedMessage))
        .toString();
  }
}

class EchoResponseBuilder
    implements Builder<EchoResponse, EchoResponseBuilder> {
  _$EchoResponse? _$v;

  String? _echoedMessage;
  String? get echoedMessage => _$this._echoedMessage;
  set echoedMessage(String? echoedMessage) =>
      _$this._echoedMessage = echoedMessage;

  DateTime? _processedAt;
  DateTime? get processedAt => _$this._processedAt;
  set processedAt(DateTime? processedAt) => _$this._processedAt = processedAt;

  int? _messageCount;
  int? get messageCount => _$this._messageCount;
  set messageCount(int? messageCount) => _$this._messageCount = messageCount;

  String? _reversedMessage;
  String? get reversedMessage => _$this._reversedMessage;
  set reversedMessage(String? reversedMessage) =>
      _$this._reversedMessage = reversedMessage;

  EchoResponseBuilder();

  EchoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _echoedMessage = $v.echoedMessage;
      _processedAt = $v.processedAt;
      _messageCount = $v.messageCount;
      _reversedMessage = $v.reversedMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EchoResponse other) {
    _$v = other as _$EchoResponse;
  }

  @override
  void update(void Function(EchoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EchoResponse build() => _build();

  _$EchoResponse _build() {
    final _$result =
        _$v ??
        _$EchoResponse._(
          echoedMessage: BuiltValueNullFieldError.checkNotNull(
            echoedMessage,
            r'EchoResponse',
            'echoedMessage',
          ),
          processedAt: BuiltValueNullFieldError.checkNotNull(
            processedAt,
            r'EchoResponse',
            'processedAt',
          ),
          messageCount: BuiltValueNullFieldError.checkNotNull(
            messageCount,
            r'EchoResponse',
            'messageCount',
          ),
          reversedMessage: BuiltValueNullFieldError.checkNotNull(
            reversedMessage,
            r'EchoResponse',
            'reversedMessage',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
