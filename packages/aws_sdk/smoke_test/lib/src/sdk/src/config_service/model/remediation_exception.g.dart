// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.remediation_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationException extends RemediationException {
  @override
  final String configRuleName;
  @override
  final DateTime? expirationTime;
  @override
  final String? message;
  @override
  final String resourceId;
  @override
  final String resourceType;

  factory _$RemediationException(
          [void Function(RemediationExceptionBuilder)? updates]) =>
      (new RemediationExceptionBuilder()..update(updates))._build();

  _$RemediationException._(
      {required this.configRuleName,
      this.expirationTime,
      this.message,
      required this.resourceId,
      required this.resourceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configRuleName, r'RemediationException', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'RemediationException', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'RemediationException', 'resourceType');
  }

  @override
  RemediationException rebuild(
          void Function(RemediationExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemediationExceptionBuilder toBuilder() =>
      new RemediationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemediationException &&
        configRuleName == other.configRuleName &&
        expirationTime == other.expirationTime &&
        message == other.message &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, expirationTime.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemediationExceptionBuilder
    implements Builder<RemediationException, RemediationExceptionBuilder> {
  _$RemediationException? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  DateTime? _expirationTime;
  DateTime? get expirationTime => _$this._expirationTime;
  set expirationTime(DateTime? expirationTime) =>
      _$this._expirationTime = expirationTime;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  RemediationExceptionBuilder() {
    RemediationException._init(this);
  }

  RemediationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _expirationTime = $v.expirationTime;
      _message = $v.message;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemediationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemediationException;
  }

  @override
  void update(void Function(RemediationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemediationException build() => _build();

  _$RemediationException _build() {
    final _$result = _$v ??
        new _$RemediationException._(
            configRuleName: BuiltValueNullFieldError.checkNotNull(
                configRuleName, r'RemediationException', 'configRuleName'),
            expirationTime: expirationTime,
            message: message,
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'RemediationException', 'resourceId'),
            resourceType: BuiltValueNullFieldError.checkNotNull(
                resourceType, r'RemediationException', 'resourceType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
