// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_all_features_not_enabled_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationAllFeaturesNotEnabledException
    extends OrganizationAllFeaturesNotEnabledException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$OrganizationAllFeaturesNotEnabledException(
          [void Function(OrganizationAllFeaturesNotEnabledExceptionBuilder)?
              updates]) =>
      (new OrganizationAllFeaturesNotEnabledExceptionBuilder()..update(updates))
          ._build();

  _$OrganizationAllFeaturesNotEnabledException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  OrganizationAllFeaturesNotEnabledException rebuild(
          void Function(OrganizationAllFeaturesNotEnabledExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationAllFeaturesNotEnabledExceptionBuilder toBuilder() =>
      new OrganizationAllFeaturesNotEnabledExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationAllFeaturesNotEnabledException &&
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

class OrganizationAllFeaturesNotEnabledExceptionBuilder
    implements
        Builder<OrganizationAllFeaturesNotEnabledException,
            OrganizationAllFeaturesNotEnabledExceptionBuilder> {
  _$OrganizationAllFeaturesNotEnabledException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  OrganizationAllFeaturesNotEnabledExceptionBuilder() {
    OrganizationAllFeaturesNotEnabledException._init(this);
  }

  OrganizationAllFeaturesNotEnabledExceptionBuilder get _$this {
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
  void replace(OrganizationAllFeaturesNotEnabledException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationAllFeaturesNotEnabledException;
  }

  @override
  void update(
      void Function(OrganizationAllFeaturesNotEnabledExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationAllFeaturesNotEnabledException build() => _build();

  _$OrganizationAllFeaturesNotEnabledException _build() {
    final _$result = _$v ??
        new _$OrganizationAllFeaturesNotEnabledException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
