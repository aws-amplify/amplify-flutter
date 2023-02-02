// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaNotFoundException extends ReplicaNotFoundException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ReplicaNotFoundException(
          [void Function(ReplicaNotFoundExceptionBuilder)? updates]) =>
      (new ReplicaNotFoundExceptionBuilder()..update(updates))._build();

  _$ReplicaNotFoundException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  ReplicaNotFoundException rebuild(
          void Function(ReplicaNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaNotFoundExceptionBuilder toBuilder() =>
      new ReplicaNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaNotFoundExceptionBuilder
    implements
        Builder<ReplicaNotFoundException, ReplicaNotFoundExceptionBuilder> {
  _$ReplicaNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ReplicaNotFoundExceptionBuilder() {
    ReplicaNotFoundException._init(this);
  }

  ReplicaNotFoundExceptionBuilder get _$this {
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
  void replace(ReplicaNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaNotFoundException;
  }

  @override
  void update(void Function(ReplicaNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaNotFoundException build() => _build();

  _$ReplicaNotFoundException _build() {
    final _$result = _$v ??
        new _$ReplicaNotFoundException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
