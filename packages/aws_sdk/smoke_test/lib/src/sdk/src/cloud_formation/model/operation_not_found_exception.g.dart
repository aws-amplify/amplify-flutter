// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.operation_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationNotFoundException extends OperationNotFoundException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$OperationNotFoundException(
          [void Function(OperationNotFoundExceptionBuilder)? updates]) =>
      (new OperationNotFoundExceptionBuilder()..update(updates))._build();

  _$OperationNotFoundException._({this.message, this.headers}) : super._();

  @override
  OperationNotFoundException rebuild(
          void Function(OperationNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationNotFoundExceptionBuilder toBuilder() =>
      new OperationNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OperationNotFoundExceptionBuilder
    implements
        Builder<OperationNotFoundException, OperationNotFoundExceptionBuilder> {
  _$OperationNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  OperationNotFoundExceptionBuilder() {
    OperationNotFoundException._init(this);
  }

  OperationNotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OperationNotFoundException;
  }

  @override
  void update(void Function(OperationNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationNotFoundException build() => _build();

  _$OperationNotFoundException _build() {
    final _$result = _$v ??
        new _$OperationNotFoundException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
