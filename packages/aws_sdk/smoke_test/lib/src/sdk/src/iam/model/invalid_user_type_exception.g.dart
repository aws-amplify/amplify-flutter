// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.invalid_user_type_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidUserTypeException extends InvalidUserTypeException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidUserTypeException(
          [void Function(InvalidUserTypeExceptionBuilder)? updates]) =>
      (new InvalidUserTypeExceptionBuilder()..update(updates))._build();

  _$InvalidUserTypeException._({this.message, this.headers}) : super._();

  @override
  InvalidUserTypeException rebuild(
          void Function(InvalidUserTypeExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidUserTypeExceptionBuilder toBuilder() =>
      new InvalidUserTypeExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidUserTypeException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidUserTypeExceptionBuilder
    implements
        Builder<InvalidUserTypeException, InvalidUserTypeExceptionBuilder> {
  _$InvalidUserTypeException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidUserTypeExceptionBuilder() {
    InvalidUserTypeException._init(this);
  }

  InvalidUserTypeExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidUserTypeException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidUserTypeException;
  }

  @override
  void update(void Function(InvalidUserTypeExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidUserTypeException build() => _build();

  _$InvalidUserTypeException _build() {
    final _$result = _$v ??
        new _$InvalidUserTypeException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
