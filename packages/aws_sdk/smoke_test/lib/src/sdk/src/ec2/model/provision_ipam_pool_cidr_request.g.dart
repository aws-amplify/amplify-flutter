// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provision_ipam_pool_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionIpamPoolCidrRequest extends ProvisionIpamPoolCidrRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamPoolId;
  @override
  final String? cidr;
  @override
  final IpamCidrAuthorizationContext? cidrAuthorizationContext;
  @override
  final int netmaskLength;
  @override
  final String? clientToken;

  factory _$ProvisionIpamPoolCidrRequest(
          [void Function(ProvisionIpamPoolCidrRequestBuilder)? updates]) =>
      (new ProvisionIpamPoolCidrRequestBuilder()..update(updates))._build();

  _$ProvisionIpamPoolCidrRequest._(
      {required this.dryRun,
      this.ipamPoolId,
      this.cidr,
      this.cidrAuthorizationContext,
      required this.netmaskLength,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ProvisionIpamPoolCidrRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        netmaskLength, r'ProvisionIpamPoolCidrRequest', 'netmaskLength');
  }

  @override
  ProvisionIpamPoolCidrRequest rebuild(
          void Function(ProvisionIpamPoolCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvisionIpamPoolCidrRequestBuilder toBuilder() =>
      new ProvisionIpamPoolCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvisionIpamPoolCidrRequest &&
        dryRun == other.dryRun &&
        ipamPoolId == other.ipamPoolId &&
        cidr == other.cidr &&
        cidrAuthorizationContext == other.cidrAuthorizationContext &&
        netmaskLength == other.netmaskLength &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, cidrAuthorizationContext.hashCode);
    _$hash = $jc(_$hash, netmaskLength.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProvisionIpamPoolCidrRequestBuilder
    implements
        Builder<ProvisionIpamPoolCidrRequest,
            ProvisionIpamPoolCidrRequestBuilder> {
  _$ProvisionIpamPoolCidrRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  IpamCidrAuthorizationContextBuilder? _cidrAuthorizationContext;
  IpamCidrAuthorizationContextBuilder get cidrAuthorizationContext =>
      _$this._cidrAuthorizationContext ??=
          new IpamCidrAuthorizationContextBuilder();
  set cidrAuthorizationContext(
          IpamCidrAuthorizationContextBuilder? cidrAuthorizationContext) =>
      _$this._cidrAuthorizationContext = cidrAuthorizationContext;

  int? _netmaskLength;
  int? get netmaskLength => _$this._netmaskLength;
  set netmaskLength(int? netmaskLength) =>
      _$this._netmaskLength = netmaskLength;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  ProvisionIpamPoolCidrRequestBuilder() {
    ProvisionIpamPoolCidrRequest._init(this);
  }

  ProvisionIpamPoolCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamPoolId = $v.ipamPoolId;
      _cidr = $v.cidr;
      _cidrAuthorizationContext = $v.cidrAuthorizationContext?.toBuilder();
      _netmaskLength = $v.netmaskLength;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvisionIpamPoolCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvisionIpamPoolCidrRequest;
  }

  @override
  void update(void Function(ProvisionIpamPoolCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvisionIpamPoolCidrRequest build() => _build();

  _$ProvisionIpamPoolCidrRequest _build() {
    _$ProvisionIpamPoolCidrRequest _$result;
    try {
      _$result = _$v ??
          new _$ProvisionIpamPoolCidrRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ProvisionIpamPoolCidrRequest', 'dryRun'),
              ipamPoolId: ipamPoolId,
              cidr: cidr,
              cidrAuthorizationContext: _cidrAuthorizationContext?.build(),
              netmaskLength: BuiltValueNullFieldError.checkNotNull(
                  netmaskLength,
                  r'ProvisionIpamPoolCidrRequest',
                  'netmaskLength'),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cidrAuthorizationContext';
        _cidrAuthorizationContext?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProvisionIpamPoolCidrRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
