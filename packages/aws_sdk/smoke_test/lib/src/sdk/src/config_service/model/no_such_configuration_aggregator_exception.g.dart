// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.no_such_configuration_aggregator_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchConfigurationAggregatorException
    extends NoSuchConfigurationAggregatorException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchConfigurationAggregatorException(
          [void Function(NoSuchConfigurationAggregatorExceptionBuilder)?
              updates]) =>
      (new NoSuchConfigurationAggregatorExceptionBuilder()..update(updates))
          ._build();

  _$NoSuchConfigurationAggregatorException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoSuchConfigurationAggregatorException rebuild(
          void Function(NoSuchConfigurationAggregatorExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchConfigurationAggregatorExceptionBuilder toBuilder() =>
      new NoSuchConfigurationAggregatorExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchConfigurationAggregatorException &&
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

class NoSuchConfigurationAggregatorExceptionBuilder
    implements
        Builder<NoSuchConfigurationAggregatorException,
            NoSuchConfigurationAggregatorExceptionBuilder> {
  _$NoSuchConfigurationAggregatorException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchConfigurationAggregatorExceptionBuilder() {
    NoSuchConfigurationAggregatorException._init(this);
  }

  NoSuchConfigurationAggregatorExceptionBuilder get _$this {
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
  void replace(NoSuchConfigurationAggregatorException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchConfigurationAggregatorException;
  }

  @override
  void update(
      void Function(NoSuchConfigurationAggregatorExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchConfigurationAggregatorException build() => _build();

  _$NoSuchConfigurationAggregatorException _build() {
    final _$result = _$v ??
        new _$NoSuchConfigurationAggregatorException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
