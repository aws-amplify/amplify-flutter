// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.operation_id_already_exists_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationIdAlreadyExistsException
    extends OperationIdAlreadyExistsException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$OperationIdAlreadyExistsException(
          [void Function(OperationIdAlreadyExistsExceptionBuilder)? updates]) =>
      (new OperationIdAlreadyExistsExceptionBuilder()..update(updates))
          ._build();

  _$OperationIdAlreadyExistsException._({this.message, this.headers})
      : super._();

  @override
  OperationIdAlreadyExistsException rebuild(
          void Function(OperationIdAlreadyExistsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationIdAlreadyExistsExceptionBuilder toBuilder() =>
      new OperationIdAlreadyExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationIdAlreadyExistsException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OperationIdAlreadyExistsExceptionBuilder
    implements
        Builder<OperationIdAlreadyExistsException,
            OperationIdAlreadyExistsExceptionBuilder> {
  _$OperationIdAlreadyExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  OperationIdAlreadyExistsExceptionBuilder() {
    OperationIdAlreadyExistsException._init(this);
  }

  OperationIdAlreadyExistsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationIdAlreadyExistsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OperationIdAlreadyExistsException;
  }

  @override
  void update(
      void Function(OperationIdAlreadyExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationIdAlreadyExistsException build() => _build();

  _$OperationIdAlreadyExistsException _build() {
    final _$result = _$v ??
        new _$OperationIdAlreadyExistsException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
