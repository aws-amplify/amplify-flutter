// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.policy_granting_service_access;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyGrantingServiceAccess extends PolicyGrantingServiceAccess {
  @override
  final String policyName;
  @override
  final _i2.PolicyType policyType;
  @override
  final String? policyArn;
  @override
  final _i3.PolicyOwnerEntityType? entityType;
  @override
  final String? entityName;

  factory _$PolicyGrantingServiceAccess(
          [void Function(PolicyGrantingServiceAccessBuilder)? updates]) =>
      (new PolicyGrantingServiceAccessBuilder()..update(updates))._build();

  _$PolicyGrantingServiceAccess._(
      {required this.policyName,
      required this.policyType,
      this.policyArn,
      this.entityType,
      this.entityName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'PolicyGrantingServiceAccess', 'policyName');
    BuiltValueNullFieldError.checkNotNull(
        policyType, r'PolicyGrantingServiceAccess', 'policyType');
  }

  @override
  PolicyGrantingServiceAccess rebuild(
          void Function(PolicyGrantingServiceAccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyGrantingServiceAccessBuilder toBuilder() =>
      new PolicyGrantingServiceAccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyGrantingServiceAccess &&
        policyName == other.policyName &&
        policyType == other.policyType &&
        policyArn == other.policyArn &&
        entityType == other.entityType &&
        entityName == other.entityName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyType.hashCode);
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, entityName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PolicyGrantingServiceAccessBuilder
    implements
        Builder<PolicyGrantingServiceAccess,
            PolicyGrantingServiceAccessBuilder> {
  _$PolicyGrantingServiceAccess? _$v;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  _i2.PolicyType? _policyType;
  _i2.PolicyType? get policyType => _$this._policyType;
  set policyType(_i2.PolicyType? policyType) => _$this._policyType = policyType;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  _i3.PolicyOwnerEntityType? _entityType;
  _i3.PolicyOwnerEntityType? get entityType => _$this._entityType;
  set entityType(_i3.PolicyOwnerEntityType? entityType) =>
      _$this._entityType = entityType;

  String? _entityName;
  String? get entityName => _$this._entityName;
  set entityName(String? entityName) => _$this._entityName = entityName;

  PolicyGrantingServiceAccessBuilder() {
    PolicyGrantingServiceAccess._init(this);
  }

  PolicyGrantingServiceAccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyName = $v.policyName;
      _policyType = $v.policyType;
      _policyArn = $v.policyArn;
      _entityType = $v.entityType;
      _entityName = $v.entityName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyGrantingServiceAccess other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyGrantingServiceAccess;
  }

  @override
  void update(void Function(PolicyGrantingServiceAccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyGrantingServiceAccess build() => _build();

  _$PolicyGrantingServiceAccess _build() {
    final _$result = _$v ??
        new _$PolicyGrantingServiceAccess._(
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'PolicyGrantingServiceAccess', 'policyName'),
            policyType: BuiltValueNullFieldError.checkNotNull(
                policyType, r'PolicyGrantingServiceAccess', 'policyType'),
            policyArn: policyArn,
            entityType: entityType,
            entityName: entityName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
