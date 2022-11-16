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
    return $jf($jc($jc(0, message.hashCode), requestId.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
