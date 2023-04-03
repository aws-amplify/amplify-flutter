// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.already_exists_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlreadyExistsException extends AlreadyExistsException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$AlreadyExistsException(
          [void Function(AlreadyExistsExceptionBuilder)? updates]) =>
      (new AlreadyExistsExceptionBuilder()..update(updates))._build();

  _$AlreadyExistsException._({this.message, this.headers}) : super._();

  @override
  AlreadyExistsException rebuild(
          void Function(AlreadyExistsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlreadyExistsExceptionBuilder toBuilder() =>
      new AlreadyExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlreadyExistsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AlreadyExistsExceptionBuilder
    implements Builder<AlreadyExistsException, AlreadyExistsExceptionBuilder> {
  _$AlreadyExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  AlreadyExistsExceptionBuilder() {
    AlreadyExistsException._init(this);
  }

  AlreadyExistsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlreadyExistsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlreadyExistsException;
  }

  @override
  void update(void Function(AlreadyExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlreadyExistsException build() => _build();

  _$AlreadyExistsException _build() {
    final _$result = _$v ??
        new _$AlreadyExistsException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
