// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.name_already_exists_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NameAlreadyExistsException extends NameAlreadyExistsException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$NameAlreadyExistsException(
          [void Function(NameAlreadyExistsExceptionBuilder)? updates]) =>
      (new NameAlreadyExistsExceptionBuilder()..update(updates))._build();

  _$NameAlreadyExistsException._({this.message, this.headers}) : super._();

  @override
  NameAlreadyExistsException rebuild(
          void Function(NameAlreadyExistsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NameAlreadyExistsExceptionBuilder toBuilder() =>
      new NameAlreadyExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NameAlreadyExistsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NameAlreadyExistsExceptionBuilder
    implements
        Builder<NameAlreadyExistsException, NameAlreadyExistsExceptionBuilder> {
  _$NameAlreadyExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NameAlreadyExistsExceptionBuilder() {
    NameAlreadyExistsException._init(this);
  }

  NameAlreadyExistsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NameAlreadyExistsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NameAlreadyExistsException;
  }

  @override
  void update(void Function(NameAlreadyExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NameAlreadyExistsException build() => _build();

  _$NameAlreadyExistsException _build() {
    final _$result = _$v ??
        new _$NameAlreadyExistsException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
