// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.backup_in_use_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupInUseException extends BackupInUseException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$BackupInUseException(
          [void Function(BackupInUseExceptionBuilder)? updates]) =>
      (new BackupInUseExceptionBuilder()..update(updates))._build();

  _$BackupInUseException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  BackupInUseException rebuild(
          void Function(BackupInUseExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupInUseExceptionBuilder toBuilder() =>
      new BackupInUseExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupInUseException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BackupInUseExceptionBuilder
    implements Builder<BackupInUseException, BackupInUseExceptionBuilder> {
  _$BackupInUseException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  BackupInUseExceptionBuilder() {
    BackupInUseException._init(this);
  }

  BackupInUseExceptionBuilder get _$this {
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
  void replace(BackupInUseException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BackupInUseException;
  }

  @override
  void update(void Function(BackupInUseExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupInUseException build() => _build();

  _$BackupInUseException _build() {
    final _$result = _$v ??
        new _$BackupInUseException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
