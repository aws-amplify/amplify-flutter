// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.max_number_of_organization_conformance_packs_exceeded_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaxNumberOfOrganizationConformancePacksExceededException
    extends MaxNumberOfOrganizationConformancePacksExceededException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$MaxNumberOfOrganizationConformancePacksExceededException(
          [void Function(
                  MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder)?
              updates]) =>
      (new MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder()
            ..update(updates))
          ._build();

  _$MaxNumberOfOrganizationConformancePacksExceededException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  MaxNumberOfOrganizationConformancePacksExceededException rebuild(
          void Function(
                  MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder toBuilder() =>
      new MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxNumberOfOrganizationConformancePacksExceededException &&
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

class MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder
    implements
        Builder<MaxNumberOfOrganizationConformancePacksExceededException,
            MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder> {
  _$MaxNumberOfOrganizationConformancePacksExceededException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder() {
    MaxNumberOfOrganizationConformancePacksExceededException._init(this);
  }

  MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder get _$this {
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
  void replace(MaxNumberOfOrganizationConformancePacksExceededException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxNumberOfOrganizationConformancePacksExceededException;
  }

  @override
  void update(
      void Function(
              MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxNumberOfOrganizationConformancePacksExceededException build() => _build();

  _$MaxNumberOfOrganizationConformancePacksExceededException _build() {
    final _$result = _$v ??
        new _$MaxNumberOfOrganizationConformancePacksExceededException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
