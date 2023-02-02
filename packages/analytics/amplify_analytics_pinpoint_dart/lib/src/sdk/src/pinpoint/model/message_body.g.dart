// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.message_body;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MessageBody extends MessageBody {
  @override
  final String? message;
  @override
  final String? requestId;

  factory _$MessageBody([void Function(MessageBodyBuilder)? updates]) =>
      (new MessageBodyBuilder()..update(updates))._build();

  _$MessageBody._({this.message, this.requestId}) : super._();

  @override
  MessageBody rebuild(void Function(MessageBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageBodyBuilder toBuilder() => new MessageBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageBody &&
        message == other.message &&
        requestId == other.requestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MessageBodyBuilder implements Builder<MessageBody, MessageBodyBuilder> {
  _$MessageBody? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  MessageBodyBuilder() {
    MessageBody._init(this);
  }

  MessageBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _requestId = $v.requestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessageBody;
  }

  @override
  void update(void Function(MessageBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MessageBody build() => _build();

  _$MessageBody _build() {
    final _$result =
        _$v ?? new _$MessageBody._(message: message, requestId: requestId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
