// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.invalid_recording_group_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidRecordingGroupException extends InvalidRecordingGroupException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidRecordingGroupException(
          [void Function(InvalidRecordingGroupExceptionBuilder)? updates]) =>
      (new InvalidRecordingGroupExceptionBuilder()..update(updates))._build();

  _$InvalidRecordingGroupException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidRecordingGroupException rebuild(
          void Function(InvalidRecordingGroupExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidRecordingGroupExceptionBuilder toBuilder() =>
      new InvalidRecordingGroupExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidRecordingGroupException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidRecordingGroupExceptionBuilder
    implements
        Builder<InvalidRecordingGroupException,
            InvalidRecordingGroupExceptionBuilder> {
  _$InvalidRecordingGroupException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidRecordingGroupExceptionBuilder() {
    InvalidRecordingGroupException._init(this);
  }

  InvalidRecordingGroupExceptionBuilder get _$this {
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
  void replace(InvalidRecordingGroupException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidRecordingGroupException;
  }

  @override
  void update(void Function(InvalidRecordingGroupExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidRecordingGroupException build() => _build();

  _$InvalidRecordingGroupException _build() {
    final _$result = _$v ??
        new _$InvalidRecordingGroupException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
