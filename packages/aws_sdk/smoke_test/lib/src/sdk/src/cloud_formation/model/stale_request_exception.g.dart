// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stale_request_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StaleRequestException extends StaleRequestException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$StaleRequestException(
          [void Function(StaleRequestExceptionBuilder)? updates]) =>
      (new StaleRequestExceptionBuilder()..update(updates))._build();

  _$StaleRequestException._({this.message, this.headers}) : super._();

  @override
  StaleRequestException rebuild(
          void Function(StaleRequestExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StaleRequestExceptionBuilder toBuilder() =>
      new StaleRequestExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StaleRequestException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StaleRequestExceptionBuilder
    implements Builder<StaleRequestException, StaleRequestExceptionBuilder> {
  _$StaleRequestException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  StaleRequestExceptionBuilder() {
    StaleRequestException._init(this);
  }

  StaleRequestExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaleRequestException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StaleRequestException;
  }

  @override
  void update(void Function(StaleRequestExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StaleRequestException build() => _build();

  _$StaleRequestException _build() {
    final _$result = _$v ??
        new _$StaleRequestException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
