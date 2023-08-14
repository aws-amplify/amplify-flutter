// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_security_group_ingress_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeSecurityGroupIngressRequest
    extends RevokeSecurityGroupIngressRequest {
  @override
  final String? cidrIp;
  @override
  final int fromPort;
  @override
  final String? groupId;
  @override
  final String? groupName;
  @override
  final _i3.BuiltList<IpPermission>? ipPermissions;
  @override
  final String? ipProtocol;
  @override
  final String? sourceSecurityGroupName;
  @override
  final String? sourceSecurityGroupOwnerId;
  @override
  final int toPort;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? securityGroupRuleIds;

  factory _$RevokeSecurityGroupIngressRequest(
          [void Function(RevokeSecurityGroupIngressRequestBuilder)? updates]) =>
      (new RevokeSecurityGroupIngressRequestBuilder()..update(updates))
          ._build();

  _$RevokeSecurityGroupIngressRequest._(
      {this.cidrIp,
      required this.fromPort,
      this.groupId,
      this.groupName,
      this.ipPermissions,
      this.ipProtocol,
      this.sourceSecurityGroupName,
      this.sourceSecurityGroupOwnerId,
      required this.toPort,
      required this.dryRun,
      this.securityGroupRuleIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'RevokeSecurityGroupIngressRequest', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(
        toPort, r'RevokeSecurityGroupIngressRequest', 'toPort');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RevokeSecurityGroupIngressRequest', 'dryRun');
  }

  @override
  RevokeSecurityGroupIngressRequest rebuild(
          void Function(RevokeSecurityGroupIngressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeSecurityGroupIngressRequestBuilder toBuilder() =>
      new RevokeSecurityGroupIngressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeSecurityGroupIngressRequest &&
        cidrIp == other.cidrIp &&
        fromPort == other.fromPort &&
        groupId == other.groupId &&
        groupName == other.groupName &&
        ipPermissions == other.ipPermissions &&
        ipProtocol == other.ipProtocol &&
        sourceSecurityGroupName == other.sourceSecurityGroupName &&
        sourceSecurityGroupOwnerId == other.sourceSecurityGroupOwnerId &&
        toPort == other.toPort &&
        dryRun == other.dryRun &&
        securityGroupRuleIds == other.securityGroupRuleIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidrIp.hashCode);
    _$hash = $jc(_$hash, fromPort.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, ipPermissions.hashCode);
    _$hash = $jc(_$hash, ipProtocol.hashCode);
    _$hash = $jc(_$hash, sourceSecurityGroupName.hashCode);
    _$hash = $jc(_$hash, sourceSecurityGroupOwnerId.hashCode);
    _$hash = $jc(_$hash, toPort.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, securityGroupRuleIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RevokeSecurityGroupIngressRequestBuilder
    implements
        Builder<RevokeSecurityGroupIngressRequest,
            RevokeSecurityGroupIngressRequestBuilder> {
  _$RevokeSecurityGroupIngressRequest? _$v;

  String? _cidrIp;
  String? get cidrIp => _$this._cidrIp;
  set cidrIp(String? cidrIp) => _$this._cidrIp = cidrIp;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

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

  String? _ipProtocol;
  String? get ipProtocol => _$this._ipProtocol;
  set ipProtocol(String? ipProtocol) => _$this._ipProtocol = ipProtocol;

  String? _sourceSecurityGroupName;
  String? get sourceSecurityGroupName => _$this._sourceSecurityGroupName;
  set sourceSecurityGroupName(String? sourceSecurityGroupName) =>
      _$this._sourceSecurityGroupName = sourceSecurityGroupName;

  String? _sourceSecurityGroupOwnerId;
  String? get sourceSecurityGroupOwnerId => _$this._sourceSecurityGroupOwnerId;
  set sourceSecurityGroupOwnerId(String? sourceSecurityGroupOwnerId) =>
      _$this._sourceSecurityGroupOwnerId = sourceSecurityGroupOwnerId;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _securityGroupRuleIds;
  _i3.ListBuilder<String> get securityGroupRuleIds =>
      _$this._securityGroupRuleIds ??= new _i3.ListBuilder<String>();
  set securityGroupRuleIds(_i3.ListBuilder<String>? securityGroupRuleIds) =>
      _$this._securityGroupRuleIds = securityGroupRuleIds;

  RevokeSecurityGroupIngressRequestBuilder() {
    RevokeSecurityGroupIngressRequest._init(this);
  }

  RevokeSecurityGroupIngressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidrIp = $v.cidrIp;
      _fromPort = $v.fromPort;
      _groupId = $v.groupId;
      _groupName = $v.groupName;
      _ipPermissions = $v.ipPermissions?.toBuilder();
      _ipProtocol = $v.ipProtocol;
      _sourceSecurityGroupName = $v.sourceSecurityGroupName;
      _sourceSecurityGroupOwnerId = $v.sourceSecurityGroupOwnerId;
      _toPort = $v.toPort;
      _dryRun = $v.dryRun;
      _securityGroupRuleIds = $v.securityGroupRuleIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeSecurityGroupIngressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeSecurityGroupIngressRequest;
  }

  @override
  void update(
      void Function(RevokeSecurityGroupIngressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeSecurityGroupIngressRequest build() => _build();

  _$RevokeSecurityGroupIngressRequest _build() {
    _$RevokeSecurityGroupIngressRequest _$result;
    try {
      _$result = _$v ??
          new _$RevokeSecurityGroupIngressRequest._(
              cidrIp: cidrIp,
              fromPort: BuiltValueNullFieldError.checkNotNull(
                  fromPort, r'RevokeSecurityGroupIngressRequest', 'fromPort'),
              groupId: groupId,
              groupName: groupName,
              ipPermissions: _ipPermissions?.build(),
              ipProtocol: ipProtocol,
              sourceSecurityGroupName: sourceSecurityGroupName,
              sourceSecurityGroupOwnerId: sourceSecurityGroupOwnerId,
              toPort: BuiltValueNullFieldError.checkNotNull(
                  toPort, r'RevokeSecurityGroupIngressRequest', 'toPort'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'RevokeSecurityGroupIngressRequest', 'dryRun'),
              securityGroupRuleIds: _securityGroupRuleIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipPermissions';
        _ipPermissions?.build();

        _$failedField = 'securityGroupRuleIds';
        _securityGroupRuleIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RevokeSecurityGroupIngressRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
