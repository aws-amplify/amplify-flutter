// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.continuous_backups_unavailable_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContinuousBackupsUnavailableException
    extends ContinuousBackupsUnavailableException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ContinuousBackupsUnavailableException(
          [void Function(ContinuousBackupsUnavailableExceptionBuilder)?
              updates]) =>
      (new ContinuousBackupsUnavailableExceptionBuilder()..update(updates))
          ._build();

  _$ContinuousBackupsUnavailableException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  ContinuousBackupsUnavailableException rebuild(
          void Function(ContinuousBackupsUnavailableExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContinuousBackupsUnavailableExceptionBuilder toBuilder() =>
      new ContinuousBackupsUnavailableExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContinuousBackupsUnavailableException &&
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

class ContinuousBackupsUnavailableExceptionBuilder
    implements
        Builder<ContinuousBackupsUnavailableException,
            ContinuousBackupsUnavailableExceptionBuilder> {
  _$ContinuousBackupsUnavailableException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ContinuousBackupsUnavailableExceptionBuilder() {
    ContinuousBackupsUnavailableException._init(this);
  }

  ContinuousBackupsUnavailableExceptionBuilder get _$this {
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
  void replace(ContinuousBackupsUnavailableException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContinuousBackupsUnavailableException;
  }

  @override
  void update(
      void Function(ContinuousBackupsUnavailableExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContinuousBackupsUnavailableException build() => _build();

  _$ContinuousBackupsUnavailableException _build() {
    final _$result = _$v ??
        new _$ContinuousBackupsUnavailableException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
