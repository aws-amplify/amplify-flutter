// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.max_number_of_configuration_recorders_exceeded_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaxNumberOfConfigurationRecordersExceededException
    extends MaxNumberOfConfigurationRecordersExceededException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$MaxNumberOfConfigurationRecordersExceededException(
          [void Function(
                  MaxNumberOfConfigurationRecordersExceededExceptionBuilder)?
              updates]) =>
      (new MaxNumberOfConfigurationRecordersExceededExceptionBuilder()
            ..update(updates))
          ._build();

  _$MaxNumberOfConfigurationRecordersExceededException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  MaxNumberOfConfigurationRecordersExceededException rebuild(
          void Function(
                  MaxNumberOfConfigurationRecordersExceededExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxNumberOfConfigurationRecordersExceededExceptionBuilder toBuilder() =>
      new MaxNumberOfConfigurationRecordersExceededExceptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxNumberOfConfigurationRecordersExceededException &&
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

class MaxNumberOfConfigurationRecordersExceededExceptionBuilder
    implements
        Builder<MaxNumberOfConfigurationRecordersExceededException,
            MaxNumberOfConfigurationRecordersExceededExceptionBuilder> {
  _$MaxNumberOfConfigurationRecordersExceededException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MaxNumberOfConfigurationRecordersExceededExceptionBuilder() {
    MaxNumberOfConfigurationRecordersExceededException._init(this);
  }

  MaxNumberOfConfigurationRecordersExceededExceptionBuilder get _$this {
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
  void replace(MaxNumberOfConfigurationRecordersExceededException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxNumberOfConfigurationRecordersExceededException;
  }

  @override
  void update(
      void Function(MaxNumberOfConfigurationRecordersExceededExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxNumberOfConfigurationRecordersExceededException build() => _build();

  _$MaxNumberOfConfigurationRecordersExceededException _build() {
    final _$result = _$v ??
        new _$MaxNumberOfConfigurationRecordersExceededException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
