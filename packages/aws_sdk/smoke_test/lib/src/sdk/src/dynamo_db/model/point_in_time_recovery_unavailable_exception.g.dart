// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.point_in_time_recovery_unavailable_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PointInTimeRecoveryUnavailableException
    extends PointInTimeRecoveryUnavailableException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$PointInTimeRecoveryUnavailableException(
          [void Function(PointInTimeRecoveryUnavailableExceptionBuilder)?
              updates]) =>
      (new PointInTimeRecoveryUnavailableExceptionBuilder()..update(updates))
          ._build();

  _$PointInTimeRecoveryUnavailableException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  PointInTimeRecoveryUnavailableException rebuild(
          void Function(PointInTimeRecoveryUnavailableExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PointInTimeRecoveryUnavailableExceptionBuilder toBuilder() =>
      new PointInTimeRecoveryUnavailableExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PointInTimeRecoveryUnavailableException &&
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

class PointInTimeRecoveryUnavailableExceptionBuilder
    implements
        Builder<PointInTimeRecoveryUnavailableException,
            PointInTimeRecoveryUnavailableExceptionBuilder> {
  _$PointInTimeRecoveryUnavailableException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  PointInTimeRecoveryUnavailableExceptionBuilder() {
    PointInTimeRecoveryUnavailableException._init(this);
  }

  PointInTimeRecoveryUnavailableExceptionBuilder get _$this {
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
  void replace(PointInTimeRecoveryUnavailableException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PointInTimeRecoveryUnavailableException;
  }

  @override
  void update(
      void Function(PointInTimeRecoveryUnavailableExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PointInTimeRecoveryUnavailableException build() => _build();

  _$PointInTimeRecoveryUnavailableException _build() {
    final _$result = _$v ??
        new _$PointInTimeRecoveryUnavailableException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
