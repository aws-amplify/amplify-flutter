// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.max_number_of_conformance_packs_exceeded_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaxNumberOfConformancePacksExceededException
    extends MaxNumberOfConformancePacksExceededException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$MaxNumberOfConformancePacksExceededException(
          [void Function(MaxNumberOfConformancePacksExceededExceptionBuilder)?
              updates]) =>
      (new MaxNumberOfConformancePacksExceededExceptionBuilder()
            ..update(updates))
          ._build();

  _$MaxNumberOfConformancePacksExceededException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  MaxNumberOfConformancePacksExceededException rebuild(
          void Function(MaxNumberOfConformancePacksExceededExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxNumberOfConformancePacksExceededExceptionBuilder toBuilder() =>
      new MaxNumberOfConformancePacksExceededExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxNumberOfConformancePacksExceededException &&
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

class MaxNumberOfConformancePacksExceededExceptionBuilder
    implements
        Builder<MaxNumberOfConformancePacksExceededException,
            MaxNumberOfConformancePacksExceededExceptionBuilder> {
  _$MaxNumberOfConformancePacksExceededException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MaxNumberOfConformancePacksExceededExceptionBuilder() {
    MaxNumberOfConformancePacksExceededException._init(this);
  }

  MaxNumberOfConformancePacksExceededExceptionBuilder get _$this {
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
  void replace(MaxNumberOfConformancePacksExceededException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxNumberOfConformancePacksExceededException;
  }

  @override
  void update(
      void Function(MaxNumberOfConformancePacksExceededExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxNumberOfConformancePacksExceededException build() => _build();

  _$MaxNumberOfConformancePacksExceededException _build() {
    final _$result = _$v ??
        new _$MaxNumberOfConformancePacksExceededException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
