// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.unsupported_operation_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnsupportedOperationException extends UnsupportedOperationException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$UnsupportedOperationException(
          [void Function(UnsupportedOperationExceptionBuilder)? updates]) =>
      (new UnsupportedOperationExceptionBuilder()..update(updates))._build();

  _$UnsupportedOperationException._({this.message, this.headers}) : super._();

  @override
  UnsupportedOperationException rebuild(
          void Function(UnsupportedOperationExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnsupportedOperationExceptionBuilder toBuilder() =>
      new UnsupportedOperationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnsupportedOperationException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnsupportedOperationExceptionBuilder
    implements
        Builder<UnsupportedOperationException,
            UnsupportedOperationExceptionBuilder> {
  _$UnsupportedOperationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  UnsupportedOperationExceptionBuilder() {
    UnsupportedOperationException._init(this);
  }

  UnsupportedOperationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnsupportedOperationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnsupportedOperationException;
  }

  @override
  void update(void Function(UnsupportedOperationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnsupportedOperationException build() => _build();

  _$UnsupportedOperationException _build() {
    final _$result = _$v ??
        new _$UnsupportedOperationException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
