// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remediation_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationException extends RemediationException {
  @override
  final String configRuleName;
  @override
  final String resourceType;
  @override
  final String resourceId;
  @override
  final String? message;
  @override
  final DateTime? expirationTime;

  factory _$RemediationException(
          [void Function(RemediationExceptionBuilder)? updates]) =>
      (new RemediationExceptionBuilder()..update(updates))._build();

  _$RemediationException._(
      {required this.configRuleName,
      required this.resourceType,
      required this.resourceId,
      this.message,
      this.expirationTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configRuleName, r'RemediationException', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'RemediationException', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'RemediationException', 'resourceId');
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
        resourceType == other.resourceType &&
        resourceId == other.resourceId &&
        message == other.message &&
        expirationTime == other.expirationTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, expirationTime.hashCode);
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

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _expirationTime;
  DateTime? get expirationTime => _$this._expirationTime;
  set expirationTime(DateTime? expirationTime) =>
      _$this._expirationTime = expirationTime;

  RemediationExceptionBuilder();

  RemediationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _message = $v.message;
      _expirationTime = $v.expirationTime;
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
            resourceType: BuiltValueNullFieldError.checkNotNull(
                resourceType, r'RemediationException', 'resourceType'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'RemediationException', 'resourceId'),
            message: message,
            expirationTime: expirationTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
