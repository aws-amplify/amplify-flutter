// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.invalid_operation_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidOperationException extends InvalidOperationException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidOperationException(
          [void Function(InvalidOperationExceptionBuilder)? updates]) =>
      (new InvalidOperationExceptionBuilder()..update(updates))._build();

  _$InvalidOperationException._({this.message, this.headers}) : super._();

  @override
  InvalidOperationException rebuild(
          void Function(InvalidOperationExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidOperationExceptionBuilder toBuilder() =>
      new InvalidOperationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidOperationException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidOperationExceptionBuilder
    implements
        Builder<InvalidOperationException, InvalidOperationExceptionBuilder> {
  _$InvalidOperationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidOperationExceptionBuilder() {
    InvalidOperationException._init(this);
  }

  InvalidOperationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidOperationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidOperationException;
  }

  @override
  void update(void Function(InvalidOperationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidOperationException build() => _build();

  _$InvalidOperationException _build() {
    final _$result = _$v ??
        new _$InvalidOperationException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
