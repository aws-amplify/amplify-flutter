// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_security_group_egress_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeSecurityGroupEgressRequest
    extends RevokeSecurityGroupEgressRequest {
  @override
  final bool dryRun;
  @override
  final String? groupId;
  @override
  final _i3.BuiltList<IpPermission>? ipPermissions;
  @override
  final _i3.BuiltList<String>? securityGroupRuleIds;
  @override
  final String? cidrIp;
  @override
  final int fromPort;
  @override
  final String? ipProtocol;
  @override
  final int toPort;
  @override
  final String? sourceSecurityGroupName;
  @override
  final String? sourceSecurityGroupOwnerId;

  factory _$RevokeSecurityGroupEgressRequest(
          [void Function(RevokeSecurityGroupEgressRequestBuilder)? updates]) =>
      (new RevokeSecurityGroupEgressRequestBuilder()..update(updates))._build();

  _$RevokeSecurityGroupEgressRequest._(
      {required this.dryRun,
      this.groupId,
      this.ipPermissions,
      this.securityGroupRuleIds,
      this.cidrIp,
      required this.fromPort,
      this.ipProtocol,
      required this.toPort,
      this.sourceSecurityGroupName,
      this.sourceSecurityGroupOwnerId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RevokeSecurityGroupEgressRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'RevokeSecurityGroupEgressRequest', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(
        toPort, r'RevokeSecurityGroupEgressRequest', 'toPort');
  }

  @override
  RevokeSecurityGroupEgressRequest rebuild(
          void Function(RevokeSecurityGroupEgressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeSecurityGroupEgressRequestBuilder toBuilder() =>
      new RevokeSecurityGroupEgressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeSecurityGroupEgressRequest &&
        dryRun == other.dryRun &&
        groupId == other.groupId &&
        ipPermissions == other.ipPermissions &&
        securityGroupRuleIds == other.securityGroupRuleIds &&
        cidrIp == other.cidrIp &&
        fromPort == other.fromPort &&
        ipProtocol == other.ipProtocol &&
        toPort == other.toPort &&
        sourceSecurityGroupName == other.sourceSecurityGroupName &&
        sourceSecurityGroupOwnerId == other.sourceSecurityGroupOwnerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, ipPermissions.hashCode);
    _$hash = $jc(_$hash, securityGroupRuleIds.hashCode);
    _$hash = $jc(_$hash, cidrIp.hashCode);
    _$hash = $jc(_$hash, fromPort.hashCode);
    _$hash = $jc(_$hash, ipProtocol.hashCode);
    _$hash = $jc(_$hash, toPort.hashCode);
    _$hash = $jc(_$hash, sourceSecurityGroupName.hashCode);
    _$hash = $jc(_$hash, sourceSecurityGroupOwnerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RevokeSecurityGroupEgressRequestBuilder
    implements
        Builder<RevokeSecurityGroupEgressRequest,
            RevokeSecurityGroupEgressRequestBuilder> {
  _$RevokeSecurityGroupEgressRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  _i3.ListBuilder<IpPermission>? _ipPermissions;
  _i3.ListBuilder<IpPermission> get ipPermissions =>
      _$this._ipPermissions ??= new _i3.ListBuilder<IpPermission>();
  set ipPermissions(_i3.ListBuilder<IpPermission>? ipPermissions) =>
      _$this._ipPermissions = ipPermissions;

  _i3.ListBuilder<String>? _securityGroupRuleIds;
  _i3.ListBuilder<String> get securityGroupRuleIds =>
      _$this._securityGroupRuleIds ??= new _i3.ListBuilder<String>();
  set securityGroupRuleIds(_i3.ListBuilder<String>? securityGroupRuleIds) =>
      _$this._securityGroupRuleIds = securityGroupRuleIds;

  String? _cidrIp;
  String? get cidrIp => _$this._cidrIp;
  set cidrIp(String? cidrIp) => _$this._cidrIp = cidrIp;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

  String? _ipProtocol;
  String? get ipProtocol => _$this._ipProtocol;
  set ipProtocol(String? ipProtocol) => _$this._ipProtocol = ipProtocol;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  String? _sourceSecurityGroupName;
  String? get sourceSecurityGroupName => _$this._sourceSecurityGroupName;
  set sourceSecurityGroupName(String? sourceSecurityGroupName) =>
      _$this._sourceSecurityGroupName = sourceSecurityGroupName;

  String? _sourceSecurityGroupOwnerId;
  String? get sourceSecurityGroupOwnerId => _$this._sourceSecurityGroupOwnerId;
  set sourceSecurityGroupOwnerId(String? sourceSecurityGroupOwnerId) =>
      _$this._sourceSecurityGroupOwnerId = sourceSecurityGroupOwnerId;

  RevokeSecurityGroupEgressRequestBuilder() {
    RevokeSecurityGroupEgressRequest._init(this);
  }

  RevokeSecurityGroupEgressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _groupId = $v.groupId;
      _ipPermissions = $v.ipPermissions?.toBuilder();
      _securityGroupRuleIds = $v.securityGroupRuleIds?.toBuilder();
      _cidrIp = $v.cidrIp;
      _fromPort = $v.fromPort;
      _ipProtocol = $v.ipProtocol;
      _toPort = $v.toPort;
      _sourceSecurityGroupName = $v.sourceSecurityGroupName;
      _sourceSecurityGroupOwnerId = $v.sourceSecurityGroupOwnerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeSecurityGroupEgressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeSecurityGroupEgressRequest;
  }

  @override
  void update(void Function(RevokeSecurityGroupEgressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeSecurityGroupEgressRequest build() => _build();

  _$RevokeSecurityGroupEgressRequest _build() {
    _$RevokeSecurityGroupEgressRequest _$result;
    try {
      _$result = _$v ??
          new _$RevokeSecurityGroupEgressRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'RevokeSecurityGroupEgressRequest', 'dryRun'),
              groupId: groupId,
              ipPermissions: _ipPermissions?.build(),
              securityGroupRuleIds: _securityGroupRuleIds?.build(),
              cidrIp: cidrIp,
              fromPort: BuiltValueNullFieldError.checkNotNull(
                  fromPort, r'RevokeSecurityGroupEgressRequest', 'fromPort'),
              ipProtocol: ipProtocol,
              toPort: BuiltValueNullFieldError.checkNotNull(
                  toPort, r'RevokeSecurityGroupEgressRequest', 'toPort'),
              sourceSecurityGroupName: sourceSecurityGroupName,
              sourceSecurityGroupOwnerId: sourceSecurityGroupOwnerId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipPermissions';
        _ipPermissions?.build();
        _$failedField = 'securityGroupRuleIds';
        _securityGroupRuleIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RevokeSecurityGroupEgressRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
