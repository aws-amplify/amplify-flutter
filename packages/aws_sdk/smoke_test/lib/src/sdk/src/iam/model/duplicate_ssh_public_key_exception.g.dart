// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.duplicate_ssh_public_key_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DuplicateSshPublicKeyException extends DuplicateSshPublicKeyException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$DuplicateSshPublicKeyException(
          [void Function(DuplicateSshPublicKeyExceptionBuilder)? updates]) =>
      (new DuplicateSshPublicKeyExceptionBuilder()..update(updates))._build();

  _$DuplicateSshPublicKeyException._({this.message, this.headers}) : super._();

  @override
  DuplicateSshPublicKeyException rebuild(
          void Function(DuplicateSshPublicKeyExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DuplicateSshPublicKeyExceptionBuilder toBuilder() =>
      new DuplicateSshPublicKeyExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DuplicateSshPublicKeyException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DuplicateSshPublicKeyExceptionBuilder
    implements
        Builder<DuplicateSshPublicKeyException,
            DuplicateSshPublicKeyExceptionBuilder> {
  _$DuplicateSshPublicKeyException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  DuplicateSshPublicKeyExceptionBuilder() {
    DuplicateSshPublicKeyException._init(this);
  }

  DuplicateSshPublicKeyExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DuplicateSshPublicKeyException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DuplicateSshPublicKeyException;
  }

  @override
  void update(void Function(DuplicateSshPublicKeyExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DuplicateSshPublicKeyException build() => _build();

  _$DuplicateSshPublicKeyException _build() {
    final _$result = _$v ??
        new _$DuplicateSshPublicKeyException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
