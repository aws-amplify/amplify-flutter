// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_reuse_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefreshTokenReuseException extends RefreshTokenReuseException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$RefreshTokenReuseException([
    void Function(RefreshTokenReuseExceptionBuilder)? updates,
  ]) => (RefreshTokenReuseExceptionBuilder()..update(updates))._build();

  _$RefreshTokenReuseException._({this.message, this.headers}) : super._();
  @override
  RefreshTokenReuseException rebuild(
    void Function(RefreshTokenReuseExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RefreshTokenReuseExceptionBuilder toBuilder() =>
      RefreshTokenReuseExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshTokenReuseException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RefreshTokenReuseExceptionBuilder
    implements
        Builder<RefreshTokenReuseException, RefreshTokenReuseExceptionBuilder> {
  _$RefreshTokenReuseException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  RefreshTokenReuseExceptionBuilder();

  RefreshTokenReuseExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshTokenReuseException other) {
    _$v = other as _$RefreshTokenReuseException;
  }

  @override
  void update(void Function(RefreshTokenReuseExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshTokenReuseException build() => _build();

  _$RefreshTokenReuseException _build() {
    final _$result =
        _$v ??
        _$RefreshTokenReuseException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
