// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.backup_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupNotFoundException extends BackupNotFoundException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$BackupNotFoundException(
          [void Function(BackupNotFoundExceptionBuilder)? updates]) =>
      (new BackupNotFoundExceptionBuilder()..update(updates))._build();

  _$BackupNotFoundException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  BackupNotFoundException rebuild(
          void Function(BackupNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupNotFoundExceptionBuilder toBuilder() =>
      new BackupNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BackupNotFoundExceptionBuilder
    implements
        Builder<BackupNotFoundException, BackupNotFoundExceptionBuilder> {
  _$BackupNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  BackupNotFoundExceptionBuilder() {
    BackupNotFoundException._init(this);
  }

  BackupNotFoundExceptionBuilder get _$this {
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
  void replace(BackupNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BackupNotFoundException;
  }

  @override
  void update(void Function(BackupNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupNotFoundException build() => _build();

  _$BackupNotFoundException _build() {
    final _$result = _$v ??
        new _$BackupNotFoundException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
