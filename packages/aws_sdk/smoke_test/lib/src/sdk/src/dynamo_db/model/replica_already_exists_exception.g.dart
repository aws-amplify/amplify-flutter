// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_already_exists_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaAlreadyExistsException extends ReplicaAlreadyExistsException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ReplicaAlreadyExistsException(
          [void Function(ReplicaAlreadyExistsExceptionBuilder)? updates]) =>
      (new ReplicaAlreadyExistsExceptionBuilder()..update(updates))._build();

  _$ReplicaAlreadyExistsException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  ReplicaAlreadyExistsException rebuild(
          void Function(ReplicaAlreadyExistsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaAlreadyExistsExceptionBuilder toBuilder() =>
      new ReplicaAlreadyExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaAlreadyExistsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaAlreadyExistsExceptionBuilder
    implements
        Builder<ReplicaAlreadyExistsException,
            ReplicaAlreadyExistsExceptionBuilder> {
  _$ReplicaAlreadyExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ReplicaAlreadyExistsExceptionBuilder() {
    ReplicaAlreadyExistsException._init(this);
  }

  ReplicaAlreadyExistsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaAlreadyExistsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaAlreadyExistsException;
  }

  @override
  void update(void Function(ReplicaAlreadyExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaAlreadyExistsException build() => _build();

  _$ReplicaAlreadyExistsException _build() {
    final _$result = _$v ??
        new _$ReplicaAlreadyExistsException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
