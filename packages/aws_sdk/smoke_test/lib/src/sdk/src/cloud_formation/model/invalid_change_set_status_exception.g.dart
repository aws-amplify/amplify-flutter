// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.invalid_change_set_status_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidChangeSetStatusException
    extends InvalidChangeSetStatusException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidChangeSetStatusException(
          [void Function(InvalidChangeSetStatusExceptionBuilder)? updates]) =>
      (new InvalidChangeSetStatusExceptionBuilder()..update(updates))._build();

  _$InvalidChangeSetStatusException._({this.message, this.headers}) : super._();

  @override
  InvalidChangeSetStatusException rebuild(
          void Function(InvalidChangeSetStatusExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidChangeSetStatusExceptionBuilder toBuilder() =>
      new InvalidChangeSetStatusExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidChangeSetStatusException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidChangeSetStatusExceptionBuilder
    implements
        Builder<InvalidChangeSetStatusException,
            InvalidChangeSetStatusExceptionBuilder> {
  _$InvalidChangeSetStatusException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidChangeSetStatusExceptionBuilder() {
    InvalidChangeSetStatusException._init(this);
  }

  InvalidChangeSetStatusExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidChangeSetStatusException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidChangeSetStatusException;
  }

  @override
  void update(void Function(InvalidChangeSetStatusExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidChangeSetStatusException build() => _build();

  _$InvalidChangeSetStatusException _build() {
    final _$result = _$v ??
        new _$InvalidChangeSetStatusException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
