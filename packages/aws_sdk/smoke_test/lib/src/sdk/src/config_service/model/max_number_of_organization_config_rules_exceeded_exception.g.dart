// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'max_number_of_organization_config_rules_exceeded_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaxNumberOfOrganizationConfigRulesExceededException
    extends MaxNumberOfOrganizationConfigRulesExceededException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$MaxNumberOfOrganizationConfigRulesExceededException(
          [void Function(
                  MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder)?
              updates]) =>
      (new MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder()
            ..update(updates))
          ._build();

  _$MaxNumberOfOrganizationConfigRulesExceededException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  MaxNumberOfOrganizationConfigRulesExceededException rebuild(
          void Function(
                  MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder toBuilder() =>
      new MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxNumberOfOrganizationConfigRulesExceededException &&
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

class MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder
    implements
        Builder<MaxNumberOfOrganizationConfigRulesExceededException,
            MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder> {
  _$MaxNumberOfOrganizationConfigRulesExceededException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder() {
    MaxNumberOfOrganizationConfigRulesExceededException._init(this);
  }

  MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder get _$this {
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
  void replace(MaxNumberOfOrganizationConfigRulesExceededException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxNumberOfOrganizationConfigRulesExceededException;
  }

  @override
  void update(
      void Function(MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxNumberOfOrganizationConfigRulesExceededException build() => _build();

  _$MaxNumberOfOrganizationConfigRulesExceededException _build() {
    final _$result = _$v ??
        new _$MaxNumberOfOrganizationConfigRulesExceededException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
