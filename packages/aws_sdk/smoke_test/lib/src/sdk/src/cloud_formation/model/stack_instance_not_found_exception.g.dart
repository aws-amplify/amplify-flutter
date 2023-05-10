// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_instance_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackInstanceNotFoundException extends StackInstanceNotFoundException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$StackInstanceNotFoundException(
          [void Function(StackInstanceNotFoundExceptionBuilder)? updates]) =>
      (new StackInstanceNotFoundExceptionBuilder()..update(updates))._build();

  _$StackInstanceNotFoundException._({this.message, this.headers}) : super._();

  @override
  StackInstanceNotFoundException rebuild(
          void Function(StackInstanceNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackInstanceNotFoundExceptionBuilder toBuilder() =>
      new StackInstanceNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackInstanceNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackInstanceNotFoundExceptionBuilder
    implements
        Builder<StackInstanceNotFoundException,
            StackInstanceNotFoundExceptionBuilder> {
  _$StackInstanceNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  StackInstanceNotFoundExceptionBuilder() {
    StackInstanceNotFoundException._init(this);
  }

  StackInstanceNotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackInstanceNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackInstanceNotFoundException;
  }

  @override
  void update(void Function(StackInstanceNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackInstanceNotFoundException build() => _build();

  _$StackInstanceNotFoundException _build() {
    final _$result = _$v ??
        new _$StackInstanceNotFoundException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
