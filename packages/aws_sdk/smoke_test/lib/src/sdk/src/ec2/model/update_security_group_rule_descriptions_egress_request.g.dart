// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_security_group_rule_descriptions_egress_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSecurityGroupRuleDescriptionsEgressRequest
    extends UpdateSecurityGroupRuleDescriptionsEgressRequest {
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

  factory _$UpdateSecurityGroupRuleDescriptionsEgressRequest(
          [void Function(
                  UpdateSecurityGroupRuleDescriptionsEgressRequestBuilder)?
              updates]) =>
      (new UpdateSecurityGroupRuleDescriptionsEgressRequestBuilder()
            ..update(updates))
          ._build();

  _$UpdateSecurityGroupRuleDescriptionsEgressRequest._(
      {required this.dryRun,
      this.groupId,
      this.groupName,
      this.ipPermissions,
      this.securityGroupRuleDescriptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'UpdateSecurityGroupRuleDescriptionsEgressRequest', 'dryRun');
  }

  @override
  UpdateSecurityGroupRuleDescriptionsEgressRequest rebuild(
          void Function(UpdateSecurityGroupRuleDescriptionsEgressRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSecurityGroupRuleDescriptionsEgressRequestBuilder toBuilder() =>
      new UpdateSecurityGroupRuleDescriptionsEgressRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSecurityGroupRuleDescriptionsEgressRequest &&
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

class UpdateSecurityGroupRuleDescriptionsEgressRequestBuilder
    implements
        Builder<UpdateSecurityGroupRuleDescriptionsEgressRequest,
            UpdateSecurityGroupRuleDescriptionsEgressRequestBuilder> {
  _$UpdateSecurityGroupRuleDescriptionsEgressRequest? _$v;

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

  UpdateSecurityGroupRuleDescriptionsEgressRequestBuilder() {
    UpdateSecurityGroupRuleDescriptionsEgressRequest._init(this);
  }

  UpdateSecurityGroupRuleDescriptionsEgressRequestBuilder get _$this {
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
  void replace(UpdateSecurityGroupRuleDescriptionsEgressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSecurityGroupRuleDescriptionsEgressRequest;
  }

  @override
  void update(
      void Function(UpdateSecurityGroupRuleDescriptionsEgressRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSecurityGroupRuleDescriptionsEgressRequest build() => _build();

  _$UpdateSecurityGroupRuleDescriptionsEgressRequest _build() {
    _$UpdateSecurityGroupRuleDescriptionsEgressRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateSecurityGroupRuleDescriptionsEgressRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'UpdateSecurityGroupRuleDescriptionsEgressRequest',
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
            r'UpdateSecurityGroupRuleDescriptionsEgressRequest',
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
