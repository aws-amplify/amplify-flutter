// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.key_pair_mismatch_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeyPairMismatchException extends KeyPairMismatchException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$KeyPairMismatchException(
          [void Function(KeyPairMismatchExceptionBuilder)? updates]) =>
      (new KeyPairMismatchExceptionBuilder()..update(updates))._build();

  _$KeyPairMismatchException._({this.message, this.headers}) : super._();

  @override
  KeyPairMismatchException rebuild(
          void Function(KeyPairMismatchExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyPairMismatchExceptionBuilder toBuilder() =>
      new KeyPairMismatchExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyPairMismatchException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KeyPairMismatchExceptionBuilder
    implements
        Builder<KeyPairMismatchException, KeyPairMismatchExceptionBuilder> {
  _$KeyPairMismatchException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  KeyPairMismatchExceptionBuilder() {
    KeyPairMismatchException._init(this);
  }

  KeyPairMismatchExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeyPairMismatchException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KeyPairMismatchException;
  }

  @override
  void update(void Function(KeyPairMismatchExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyPairMismatchException build() => _build();

  _$KeyPairMismatchException _build() {
    final _$result = _$v ??
        new _$KeyPairMismatchException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
