// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.conflict_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConflictException extends ConflictException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$ConflictException(
          [void Function(ConflictExceptionBuilder)? updates]) =>
      (new ConflictExceptionBuilder()..update(updates))._build();

  _$ConflictException._({this.message, this.headers}) : super._();

  @override
  ConflictException rebuild(void Function(ConflictExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConflictExceptionBuilder toBuilder() =>
      new ConflictExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConflictException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConflictExceptionBuilder
    implements Builder<ConflictException, ConflictExceptionBuilder> {
  _$ConflictException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ConflictExceptionBuilder() {
    ConflictException._init(this);
  }

  ConflictExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConflictException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConflictException;
  }

  @override
  void update(void Function(ConflictExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConflictException build() => _build();

  _$ConflictException _build() {
    final _$result =
        _$v ?? new _$ConflictException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
