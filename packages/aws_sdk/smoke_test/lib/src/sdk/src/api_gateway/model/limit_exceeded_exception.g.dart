// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.limit_exceeded_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LimitExceededException extends LimitExceededException {
  @override
  final String? retryAfterSeconds;
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$LimitExceededException(
          [void Function(LimitExceededExceptionBuilder)? updates]) =>
      (new LimitExceededExceptionBuilder()..update(updates))._build();

  _$LimitExceededException._(
      {this.retryAfterSeconds, this.message, this.headers})
      : super._();

  @override
  LimitExceededException rebuild(
          void Function(LimitExceededExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LimitExceededExceptionBuilder toBuilder() =>
      new LimitExceededExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LimitExceededException &&
        retryAfterSeconds == other.retryAfterSeconds &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, retryAfterSeconds.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LimitExceededExceptionBuilder
    implements Builder<LimitExceededException, LimitExceededExceptionBuilder> {
  _$LimitExceededException? _$v;

  String? _retryAfterSeconds;
  String? get retryAfterSeconds => _$this._retryAfterSeconds;
  set retryAfterSeconds(String? retryAfterSeconds) =>
      _$this._retryAfterSeconds = retryAfterSeconds;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  LimitExceededExceptionBuilder() {
    LimitExceededException._init(this);
  }

  LimitExceededExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _retryAfterSeconds = $v.retryAfterSeconds;
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LimitExceededException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LimitExceededException;
  }

  @override
  void update(void Function(LimitExceededExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LimitExceededException build() => _build();

  _$LimitExceededException _build() {
    final _$result = _$v ??
        new _$LimitExceededException._(
            retryAfterSeconds: retryAfterSeconds,
            message: message,
            headers: headers);
    replace(_$result);
    return _$result;
  }
}

class _$LimitExceededExceptionPayload extends LimitExceededExceptionPayload {
  @override
  final String? message;

  factory _$LimitExceededExceptionPayload(
          [void Function(LimitExceededExceptionPayloadBuilder)? updates]) =>
      (new LimitExceededExceptionPayloadBuilder()..update(updates))._build();

  _$LimitExceededExceptionPayload._({this.message}) : super._();

  @override
  LimitExceededExceptionPayload rebuild(
          void Function(LimitExceededExceptionPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LimitExceededExceptionPayloadBuilder toBuilder() =>
      new LimitExceededExceptionPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LimitExceededExceptionPayload && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LimitExceededExceptionPayloadBuilder
    implements
        Builder<LimitExceededExceptionPayload,
            LimitExceededExceptionPayloadBuilder> {
  _$LimitExceededExceptionPayload? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  LimitExceededExceptionPayloadBuilder() {
    LimitExceededExceptionPayload._init(this);
  }

  LimitExceededExceptionPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LimitExceededExceptionPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LimitExceededExceptionPayload;
  }

  @override
  void update(void Function(LimitExceededExceptionPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LimitExceededExceptionPayload build() => _build();

  _$LimitExceededExceptionPayload _build() {
    final _$result =
        _$v ?? new _$LimitExceededExceptionPayload._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
