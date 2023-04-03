// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_set_not_empty_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSetNotEmptyException extends StackSetNotEmptyException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$StackSetNotEmptyException(
          [void Function(StackSetNotEmptyExceptionBuilder)? updates]) =>
      (new StackSetNotEmptyExceptionBuilder()..update(updates))._build();

  _$StackSetNotEmptyException._({this.message, this.headers}) : super._();

  @override
  StackSetNotEmptyException rebuild(
          void Function(StackSetNotEmptyExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSetNotEmptyExceptionBuilder toBuilder() =>
      new StackSetNotEmptyExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSetNotEmptyException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSetNotEmptyExceptionBuilder
    implements
        Builder<StackSetNotEmptyException, StackSetNotEmptyExceptionBuilder> {
  _$StackSetNotEmptyException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  StackSetNotEmptyExceptionBuilder() {
    StackSetNotEmptyException._init(this);
  }

  StackSetNotEmptyExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSetNotEmptyException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSetNotEmptyException;
  }

  @override
  void update(void Function(StackSetNotEmptyExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSetNotEmptyException build() => _build();

  _$StackSetNotEmptyException _build() {
    final _$result = _$v ??
        new _$StackSetNotEmptyException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
