// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_set_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSetNotFoundException extends StackSetNotFoundException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$StackSetNotFoundException(
          [void Function(StackSetNotFoundExceptionBuilder)? updates]) =>
      (new StackSetNotFoundExceptionBuilder()..update(updates))._build();

  _$StackSetNotFoundException._({this.message, this.headers}) : super._();

  @override
  StackSetNotFoundException rebuild(
          void Function(StackSetNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSetNotFoundExceptionBuilder toBuilder() =>
      new StackSetNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSetNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSetNotFoundExceptionBuilder
    implements
        Builder<StackSetNotFoundException, StackSetNotFoundExceptionBuilder> {
  _$StackSetNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  StackSetNotFoundExceptionBuilder() {
    StackSetNotFoundException._init(this);
  }

  StackSetNotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSetNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSetNotFoundException;
  }

  @override
  void update(void Function(StackSetNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSetNotFoundException build() => _build();

  _$StackSetNotFoundException _build() {
    final _$result = _$v ??
        new _$StackSetNotFoundException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
