// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_security_group_ingress_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizeSecurityGroupIngressRequest
    extends AuthorizeSecurityGroupIngressRequest {
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
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$AuthorizeSecurityGroupIngressRequest(
          [void Function(AuthorizeSecurityGroupIngressRequestBuilder)?
              updates]) =>
      (new AuthorizeSecurityGroupIngressRequestBuilder()..update(updates))
          ._build();

  _$AuthorizeSecurityGroupIngressRequest._(
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
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'AuthorizeSecurityGroupIngressRequest', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(
        toPort, r'AuthorizeSecurityGroupIngressRequest', 'toPort');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AuthorizeSecurityGroupIngressRequest', 'dryRun');
  }

  @override
  AuthorizeSecurityGroupIngressRequest rebuild(
          void Function(AuthorizeSecurityGroupIngressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizeSecurityGroupIngressRequestBuilder toBuilder() =>
      new AuthorizeSecurityGroupIngressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizeSecurityGroupIngressRequest &&
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
        tagSpecifications == other.tagSpecifications;
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
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthorizeSecurityGroupIngressRequestBuilder
    implements
        Builder<AuthorizeSecurityGroupIngressRequest,
            AuthorizeSecurityGroupIngressRequestBuilder> {
  _$AuthorizeSecurityGroupIngressRequest? _$v;

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

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  AuthorizeSecurityGroupIngressRequestBuilder() {
    AuthorizeSecurityGroupIngressRequest._init(this);
  }

  AuthorizeSecurityGroupIngressRequestBuilder get _$this {
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
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizeSecurityGroupIngressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorizeSecurityGroupIngressRequest;
  }

  @override
  void update(
      void Function(AuthorizeSecurityGroupIngressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizeSecurityGroupIngressRequest build() => _build();

  _$AuthorizeSecurityGroupIngressRequest _build() {
    _$AuthorizeSecurityGroupIngressRequest _$result;
    try {
      _$result = _$v ??
          new _$AuthorizeSecurityGroupIngressRequest._(
              cidrIp: cidrIp,
              fromPort: BuiltValueNullFieldError.checkNotNull(fromPort,
                  r'AuthorizeSecurityGroupIngressRequest', 'fromPort'),
              groupId: groupId,
              groupName: groupName,
              ipPermissions: _ipPermissions?.build(),
              ipProtocol: ipProtocol,
              sourceSecurityGroupName: sourceSecurityGroupName,
              sourceSecurityGroupOwnerId: sourceSecurityGroupOwnerId,
              toPort: BuiltValueNullFieldError.checkNotNull(
                  toPort, r'AuthorizeSecurityGroupIngressRequest', 'toPort'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AuthorizeSecurityGroupIngressRequest', 'dryRun'),
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipPermissions';
        _ipPermissions?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthorizeSecurityGroupIngressRequest',
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
