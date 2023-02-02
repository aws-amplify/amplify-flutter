// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.alias_exists_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AliasExistsException extends AliasExistsException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$AliasExistsException(
          [void Function(AliasExistsExceptionBuilder)? updates]) =>
      (new AliasExistsExceptionBuilder()..update(updates))._build();

  _$AliasExistsException._({this.message, this.headers}) : super._();

  @override
  AliasExistsException rebuild(
          void Function(AliasExistsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AliasExistsExceptionBuilder toBuilder() =>
      new AliasExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AliasExistsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AliasExistsExceptionBuilder
    implements Builder<AliasExistsException, AliasExistsExceptionBuilder> {
  _$AliasExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  AliasExistsExceptionBuilder() {
    AliasExistsException._init(this);
  }

  AliasExistsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AliasExistsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AliasExistsException;
  }

  @override
  void update(void Function(AliasExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AliasExistsException build() => _build();

  _$AliasExistsException _build() {
    final _$result =
        _$v ?? new _$AliasExistsException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
