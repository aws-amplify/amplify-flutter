// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_security_group_egress_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizeSecurityGroupEgressRequest
    extends AuthorizeSecurityGroupEgressRequest {
  @override
  final bool dryRun;
  @override
  final String? groupId;
  @override
  final _i3.BuiltList<IpPermission>? ipPermissions;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
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

  factory _$AuthorizeSecurityGroupEgressRequest(
          [void Function(AuthorizeSecurityGroupEgressRequestBuilder)?
              updates]) =>
      (new AuthorizeSecurityGroupEgressRequestBuilder()..update(updates))
          ._build();

  _$AuthorizeSecurityGroupEgressRequest._(
      {required this.dryRun,
      this.groupId,
      this.ipPermissions,
      this.tagSpecifications,
      this.cidrIp,
      required this.fromPort,
      this.ipProtocol,
      required this.toPort,
      this.sourceSecurityGroupName,
      this.sourceSecurityGroupOwnerId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AuthorizeSecurityGroupEgressRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'AuthorizeSecurityGroupEgressRequest', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(
        toPort, r'AuthorizeSecurityGroupEgressRequest', 'toPort');
  }

  @override
  AuthorizeSecurityGroupEgressRequest rebuild(
          void Function(AuthorizeSecurityGroupEgressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizeSecurityGroupEgressRequestBuilder toBuilder() =>
      new AuthorizeSecurityGroupEgressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizeSecurityGroupEgressRequest &&
        dryRun == other.dryRun &&
        groupId == other.groupId &&
        ipPermissions == other.ipPermissions &&
        tagSpecifications == other.tagSpecifications &&
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
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
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

class AuthorizeSecurityGroupEgressRequestBuilder
    implements
        Builder<AuthorizeSecurityGroupEgressRequest,
            AuthorizeSecurityGroupEgressRequestBuilder> {
  _$AuthorizeSecurityGroupEgressRequest? _$v;

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

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

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

  AuthorizeSecurityGroupEgressRequestBuilder() {
    AuthorizeSecurityGroupEgressRequest._init(this);
  }

  AuthorizeSecurityGroupEgressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _groupId = $v.groupId;
      _ipPermissions = $v.ipPermissions?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
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
  void replace(AuthorizeSecurityGroupEgressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorizeSecurityGroupEgressRequest;
  }

  @override
  void update(
      void Function(AuthorizeSecurityGroupEgressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizeSecurityGroupEgressRequest build() => _build();

  _$AuthorizeSecurityGroupEgressRequest _build() {
    _$AuthorizeSecurityGroupEgressRequest _$result;
    try {
      _$result = _$v ??
          new _$AuthorizeSecurityGroupEgressRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AuthorizeSecurityGroupEgressRequest', 'dryRun'),
              groupId: groupId,
              ipPermissions: _ipPermissions?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              cidrIp: cidrIp,
              fromPort: BuiltValueNullFieldError.checkNotNull(
                  fromPort, r'AuthorizeSecurityGroupEgressRequest', 'fromPort'),
              ipProtocol: ipProtocol,
              toPort: BuiltValueNullFieldError.checkNotNull(
                  toPort, r'AuthorizeSecurityGroupEgressRequest', 'toPort'),
              sourceSecurityGroupName: sourceSecurityGroupName,
              sourceSecurityGroupOwnerId: sourceSecurityGroupOwnerId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipPermissions';
        _ipPermissions?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthorizeSecurityGroupEgressRequest',
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
