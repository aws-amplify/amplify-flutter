// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_template_validation_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackTemplateValidationException
    extends ConformancePackTemplateValidationException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ConformancePackTemplateValidationException(
          [void Function(ConformancePackTemplateValidationExceptionBuilder)?
              updates]) =>
      (new ConformancePackTemplateValidationExceptionBuilder()..update(updates))
          ._build();

  _$ConformancePackTemplateValidationException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  ConformancePackTemplateValidationException rebuild(
          void Function(ConformancePackTemplateValidationExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackTemplateValidationExceptionBuilder toBuilder() =>
      new ConformancePackTemplateValidationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackTemplateValidationException &&
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

class ConformancePackTemplateValidationExceptionBuilder
    implements
        Builder<ConformancePackTemplateValidationException,
            ConformancePackTemplateValidationExceptionBuilder> {
  _$ConformancePackTemplateValidationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ConformancePackTemplateValidationExceptionBuilder() {
    ConformancePackTemplateValidationException._init(this);
  }

  ConformancePackTemplateValidationExceptionBuilder get _$this {
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
  void replace(ConformancePackTemplateValidationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackTemplateValidationException;
  }

  @override
  void update(
      void Function(ConformancePackTemplateValidationExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackTemplateValidationException build() => _build();

  _$ConformancePackTemplateValidationException _build() {
    final _$result = _$v ??
        new _$ConformancePackTemplateValidationException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
