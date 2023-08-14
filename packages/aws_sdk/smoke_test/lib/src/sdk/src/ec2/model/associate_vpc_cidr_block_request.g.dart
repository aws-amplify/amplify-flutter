// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_vpc_cidr_block_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateVpcCidrBlockRequest extends AssociateVpcCidrBlockRequest {
  @override
  final bool amazonProvidedIpv6CidrBlock;
  @override
  final String? cidrBlock;
  @override
  final String? vpcId;
  @override
  final String? ipv6CidrBlockNetworkBorderGroup;
  @override
  final String? ipv6Pool;
  @override
  final String? ipv6CidrBlock;
  @override
  final String? ipv4IpamPoolId;
  @override
  final int? ipv4NetmaskLength;
  @override
  final String? ipv6IpamPoolId;
  @override
  final int? ipv6NetmaskLength;

  factory _$AssociateVpcCidrBlockRequest(
          [void Function(AssociateVpcCidrBlockRequestBuilder)? updates]) =>
      (new AssociateVpcCidrBlockRequestBuilder()..update(updates))._build();

  _$AssociateVpcCidrBlockRequest._(
      {required this.amazonProvidedIpv6CidrBlock,
      this.cidrBlock,
      this.vpcId,
      this.ipv6CidrBlockNetworkBorderGroup,
      this.ipv6Pool,
      this.ipv6CidrBlock,
      this.ipv4IpamPoolId,
      this.ipv4NetmaskLength,
      this.ipv6IpamPoolId,
      this.ipv6NetmaskLength})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(amazonProvidedIpv6CidrBlock,
        r'AssociateVpcCidrBlockRequest', 'amazonProvidedIpv6CidrBlock');
  }

  @override
  AssociateVpcCidrBlockRequest rebuild(
          void Function(AssociateVpcCidrBlockRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateVpcCidrBlockRequestBuilder toBuilder() =>
      new AssociateVpcCidrBlockRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateVpcCidrBlockRequest &&
        amazonProvidedIpv6CidrBlock == other.amazonProvidedIpv6CidrBlock &&
        cidrBlock == other.cidrBlock &&
        vpcId == other.vpcId &&
        ipv6CidrBlockNetworkBorderGroup ==
            other.ipv6CidrBlockNetworkBorderGroup &&
        ipv6Pool == other.ipv6Pool &&
        ipv6CidrBlock == other.ipv6CidrBlock &&
        ipv4IpamPoolId == other.ipv4IpamPoolId &&
        ipv4NetmaskLength == other.ipv4NetmaskLength &&
        ipv6IpamPoolId == other.ipv6IpamPoolId &&
        ipv6NetmaskLength == other.ipv6NetmaskLength;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amazonProvidedIpv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, cidrBlock.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlockNetworkBorderGroup.hashCode);
    _$hash = $jc(_$hash, ipv6Pool.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, ipv4IpamPoolId.hashCode);
    _$hash = $jc(_$hash, ipv4NetmaskLength.hashCode);
    _$hash = $jc(_$hash, ipv6IpamPoolId.hashCode);
    _$hash = $jc(_$hash, ipv6NetmaskLength.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateVpcCidrBlockRequestBuilder
    implements
        Builder<AssociateVpcCidrBlockRequest,
            AssociateVpcCidrBlockRequestBuilder> {
  _$AssociateVpcCidrBlockRequest? _$v;

  bool? _amazonProvidedIpv6CidrBlock;
  bool? get amazonProvidedIpv6CidrBlock => _$this._amazonProvidedIpv6CidrBlock;
  set amazonProvidedIpv6CidrBlock(bool? amazonProvidedIpv6CidrBlock) =>
      _$this._amazonProvidedIpv6CidrBlock = amazonProvidedIpv6CidrBlock;

  String? _cidrBlock;
  String? get cidrBlock => _$this._cidrBlock;
  set cidrBlock(String? cidrBlock) => _$this._cidrBlock = cidrBlock;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _ipv6CidrBlockNetworkBorderGroup;
  String? get ipv6CidrBlockNetworkBorderGroup =>
      _$this._ipv6CidrBlockNetworkBorderGroup;
  set ipv6CidrBlockNetworkBorderGroup(
          String? ipv6CidrBlockNetworkBorderGroup) =>
      _$this._ipv6CidrBlockNetworkBorderGroup = ipv6CidrBlockNetworkBorderGroup;

  String? _ipv6Pool;
  String? get ipv6Pool => _$this._ipv6Pool;
  set ipv6Pool(String? ipv6Pool) => _$this._ipv6Pool = ipv6Pool;

  String? _ipv6CidrBlock;
  String? get ipv6CidrBlock => _$this._ipv6CidrBlock;
  set ipv6CidrBlock(String? ipv6CidrBlock) =>
      _$this._ipv6CidrBlock = ipv6CidrBlock;

  String? _ipv4IpamPoolId;
  String? get ipv4IpamPoolId => _$this._ipv4IpamPoolId;
  set ipv4IpamPoolId(String? ipv4IpamPoolId) =>
      _$this._ipv4IpamPoolId = ipv4IpamPoolId;

  int? _ipv4NetmaskLength;
  int? get ipv4NetmaskLength => _$this._ipv4NetmaskLength;
  set ipv4NetmaskLength(int? ipv4NetmaskLength) =>
      _$this._ipv4NetmaskLength = ipv4NetmaskLength;

  String? _ipv6IpamPoolId;
  String? get ipv6IpamPoolId => _$this._ipv6IpamPoolId;
  set ipv6IpamPoolId(String? ipv6IpamPoolId) =>
      _$this._ipv6IpamPoolId = ipv6IpamPoolId;

  int? _ipv6NetmaskLength;
  int? get ipv6NetmaskLength => _$this._ipv6NetmaskLength;
  set ipv6NetmaskLength(int? ipv6NetmaskLength) =>
      _$this._ipv6NetmaskLength = ipv6NetmaskLength;

  AssociateVpcCidrBlockRequestBuilder() {
    AssociateVpcCidrBlockRequest._init(this);
  }

  AssociateVpcCidrBlockRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amazonProvidedIpv6CidrBlock = $v.amazonProvidedIpv6CidrBlock;
      _cidrBlock = $v.cidrBlock;
      _vpcId = $v.vpcId;
      _ipv6CidrBlockNetworkBorderGroup = $v.ipv6CidrBlockNetworkBorderGroup;
      _ipv6Pool = $v.ipv6Pool;
      _ipv6CidrBlock = $v.ipv6CidrBlock;
      _ipv4IpamPoolId = $v.ipv4IpamPoolId;
      _ipv4NetmaskLength = $v.ipv4NetmaskLength;
      _ipv6IpamPoolId = $v.ipv6IpamPoolId;
      _ipv6NetmaskLength = $v.ipv6NetmaskLength;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateVpcCidrBlockRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateVpcCidrBlockRequest;
  }

  @override
  void update(void Function(AssociateVpcCidrBlockRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateVpcCidrBlockRequest build() => _build();

  _$AssociateVpcCidrBlockRequest _build() {
    final _$result = _$v ??
        new _$AssociateVpcCidrBlockRequest._(
            amazonProvidedIpv6CidrBlock: BuiltValueNullFieldError.checkNotNull(
                amazonProvidedIpv6CidrBlock,
                r'AssociateVpcCidrBlockRequest',
                'amazonProvidedIpv6CidrBlock'),
            cidrBlock: cidrBlock,
            vpcId: vpcId,
            ipv6CidrBlockNetworkBorderGroup: ipv6CidrBlockNetworkBorderGroup,
            ipv6Pool: ipv6Pool,
            ipv6CidrBlock: ipv6CidrBlock,
            ipv4IpamPoolId: ipv4IpamPoolId,
            ipv4NetmaskLength: ipv4NetmaskLength,
            ipv6IpamPoolId: ipv6IpamPoolId,
            ipv6NetmaskLength: ipv6NetmaskLength);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
