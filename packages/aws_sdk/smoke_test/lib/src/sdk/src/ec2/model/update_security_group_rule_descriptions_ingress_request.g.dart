// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_security_group_rule_descriptions_ingress_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSecurityGroupRuleDescriptionsIngressRequest
    extends UpdateSecurityGroupRuleDescriptionsIngressRequest {
  @override
  final bool dryRun;
  @override
  final String? groupId;
  @override
  final String? groupName;
  @override
  final _i3.BuiltList<IpPermission>? ipPermissions;
  @override
  final _i3.BuiltList<SecurityGroupRuleDescription>?
      securityGroupRuleDescriptions;

  factory _$UpdateSecurityGroupRuleDescriptionsIngressRequest(
          [void Function(
                  UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder)?
              updates]) =>
      (new UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder()
            ..update(updates))
          ._build();

  _$UpdateSecurityGroupRuleDescriptionsIngressRequest._(
      {required this.dryRun,
      this.groupId,
      this.groupName,
      this.ipPermissions,
      this.securityGroupRuleDescriptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'UpdateSecurityGroupRuleDescriptionsIngressRequest', 'dryRun');
  }

  @override
  UpdateSecurityGroupRuleDescriptionsIngressRequest rebuild(
          void Function(
                  UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder toBuilder() =>
      new UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSecurityGroupRuleDescriptionsIngressRequest &&
        dryRun == other.dryRun &&
        groupId == other.groupId &&
        groupName == other.groupName &&
        ipPermissions == other.ipPermissions &&
        securityGroupRuleDescriptions == other.securityGroupRuleDescriptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, ipPermissions.hashCode);
    _$hash = $jc(_$hash, securityGroupRuleDescriptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder
    implements
        Builder<UpdateSecurityGroupRuleDescriptionsIngressRequest,
            UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder> {
  _$UpdateSecurityGroupRuleDescriptionsIngressRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  _i3.ListBuilder<IpPermission>? _ipPermissions;
  _i3.ListBuilder<IpPermission> get ipPermissions =>
      _$this._ipPermissions ??= new _i3.ListBuilder<IpPermission>();
  set ipPermissions(_i3.ListBuilder<IpPermission>? ipPermissions) =>
      _$this._ipPermissions = ipPermissions;

  _i3.ListBuilder<SecurityGroupRuleDescription>? _securityGroupRuleDescriptions;
  _i3.ListBuilder<SecurityGroupRuleDescription>
      get securityGroupRuleDescriptions =>
          _$this._securityGroupRuleDescriptions ??=
              new _i3.ListBuilder<SecurityGroupRuleDescription>();
  set securityGroupRuleDescriptions(
          _i3.ListBuilder<SecurityGroupRuleDescription>?
              securityGroupRuleDescriptions) =>
      _$this._securityGroupRuleDescriptions = securityGroupRuleDescriptions;

  UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder() {
    UpdateSecurityGroupRuleDescriptionsIngressRequest._init(this);
  }

  UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _groupId = $v.groupId;
      _groupName = $v.groupName;
      _ipPermissions = $v.ipPermissions?.toBuilder();
      _securityGroupRuleDescriptions =
          $v.securityGroupRuleDescriptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSecurityGroupRuleDescriptionsIngressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSecurityGroupRuleDescriptionsIngressRequest;
  }

  @override
  void update(
      void Function(UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSecurityGroupRuleDescriptionsIngressRequest build() => _build();

  _$UpdateSecurityGroupRuleDescriptionsIngressRequest _build() {
    _$UpdateSecurityGroupRuleDescriptionsIngressRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateSecurityGroupRuleDescriptionsIngressRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'UpdateSecurityGroupRuleDescriptionsIngressRequest',
                  'dryRun'),
              groupId: groupId,
              groupName: groupName,
              ipPermissions: _ipPermissions?.build(),
              securityGroupRuleDescriptions:
                  _securityGroupRuleDescriptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipPermissions';
        _ipPermissions?.build();
        _$failedField = 'securityGroupRuleDescriptions';
        _securityGroupRuleDescriptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateSecurityGroupRuleDescriptionsIngressRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
