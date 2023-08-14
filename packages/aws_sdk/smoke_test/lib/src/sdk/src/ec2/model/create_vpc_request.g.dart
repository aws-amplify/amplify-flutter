// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpc_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcRequest extends CreateVpcRequest {
  @override
  final String? cidrBlock;
  @override
  final bool amazonProvidedIpv6CidrBlock;
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
  @override
  final bool dryRun;
  @override
  final Tenancy? instanceTenancy;
  @override
  final String? ipv6CidrBlockNetworkBorderGroup;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateVpcRequest(
          [void Function(CreateVpcRequestBuilder)? updates]) =>
      (new CreateVpcRequestBuilder()..update(updates))._build();

  _$CreateVpcRequest._(
      {this.cidrBlock,
      required this.amazonProvidedIpv6CidrBlock,
      this.ipv6Pool,
      this.ipv6CidrBlock,
      this.ipv4IpamPoolId,
      this.ipv4NetmaskLength,
      this.ipv6IpamPoolId,
      this.ipv6NetmaskLength,
      required this.dryRun,
      this.instanceTenancy,
      this.ipv6CidrBlockNetworkBorderGroup,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(amazonProvidedIpv6CidrBlock,
        r'CreateVpcRequest', 'amazonProvidedIpv6CidrBlock');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVpcRequest', 'dryRun');
  }

  @override
  CreateVpcRequest rebuild(void Function(CreateVpcRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcRequestBuilder toBuilder() =>
      new CreateVpcRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcRequest &&
        cidrBlock == other.cidrBlock &&
        amazonProvidedIpv6CidrBlock == other.amazonProvidedIpv6CidrBlock &&
        ipv6Pool == other.ipv6Pool &&
        ipv6CidrBlock == other.ipv6CidrBlock &&
        ipv4IpamPoolId == other.ipv4IpamPoolId &&
        ipv4NetmaskLength == other.ipv4NetmaskLength &&
        ipv6IpamPoolId == other.ipv6IpamPoolId &&
        ipv6NetmaskLength == other.ipv6NetmaskLength &&
        dryRun == other.dryRun &&
        instanceTenancy == other.instanceTenancy &&
        ipv6CidrBlockNetworkBorderGroup ==
            other.ipv6CidrBlockNetworkBorderGroup &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidrBlock.hashCode);
    _$hash = $jc(_$hash, amazonProvidedIpv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, ipv6Pool.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, ipv4IpamPoolId.hashCode);
    _$hash = $jc(_$hash, ipv4NetmaskLength.hashCode);
    _$hash = $jc(_$hash, ipv6IpamPoolId.hashCode);
    _$hash = $jc(_$hash, ipv6NetmaskLength.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceTenancy.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlockNetworkBorderGroup.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcRequestBuilder
    implements Builder<CreateVpcRequest, CreateVpcRequestBuilder> {
  _$CreateVpcRequest? _$v;

  String? _cidrBlock;
  String? get cidrBlock => _$this._cidrBlock;
  set cidrBlock(String? cidrBlock) => _$this._cidrBlock = cidrBlock;

  bool? _amazonProvidedIpv6CidrBlock;
  bool? get amazonProvidedIpv6CidrBlock => _$this._amazonProvidedIpv6CidrBlock;
  set amazonProvidedIpv6CidrBlock(bool? amazonProvidedIpv6CidrBlock) =>
      _$this._amazonProvidedIpv6CidrBlock = amazonProvidedIpv6CidrBlock;

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

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  Tenancy? _instanceTenancy;
  Tenancy? get instanceTenancy => _$this._instanceTenancy;
  set instanceTenancy(Tenancy? instanceTenancy) =>
      _$this._instanceTenancy = instanceTenancy;

  String? _ipv6CidrBlockNetworkBorderGroup;
  String? get ipv6CidrBlockNetworkBorderGroup =>
      _$this._ipv6CidrBlockNetworkBorderGroup;
  set ipv6CidrBlockNetworkBorderGroup(
          String? ipv6CidrBlockNetworkBorderGroup) =>
      _$this._ipv6CidrBlockNetworkBorderGroup = ipv6CidrBlockNetworkBorderGroup;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateVpcRequestBuilder() {
    CreateVpcRequest._init(this);
  }

  CreateVpcRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidrBlock = $v.cidrBlock;
      _amazonProvidedIpv6CidrBlock = $v.amazonProvidedIpv6CidrBlock;
      _ipv6Pool = $v.ipv6Pool;
      _ipv6CidrBlock = $v.ipv6CidrBlock;
      _ipv4IpamPoolId = $v.ipv4IpamPoolId;
      _ipv4NetmaskLength = $v.ipv4NetmaskLength;
      _ipv6IpamPoolId = $v.ipv6IpamPoolId;
      _ipv6NetmaskLength = $v.ipv6NetmaskLength;
      _dryRun = $v.dryRun;
      _instanceTenancy = $v.instanceTenancy;
      _ipv6CidrBlockNetworkBorderGroup = $v.ipv6CidrBlockNetworkBorderGroup;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcRequest;
  }

  @override
  void update(void Function(CreateVpcRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcRequest build() => _build();

  _$CreateVpcRequest _build() {
    _$CreateVpcRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVpcRequest._(
              cidrBlock: cidrBlock,
              amazonProvidedIpv6CidrBlock:
                  BuiltValueNullFieldError.checkNotNull(
                      amazonProvidedIpv6CidrBlock,
                      r'CreateVpcRequest',
                      'amazonProvidedIpv6CidrBlock'),
              ipv6Pool: ipv6Pool,
              ipv6CidrBlock: ipv6CidrBlock,
              ipv4IpamPoolId: ipv4IpamPoolId,
              ipv4NetmaskLength: ipv4NetmaskLength,
              ipv6IpamPoolId: ipv6IpamPoolId,
              ipv6NetmaskLength: ipv6NetmaskLength,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateVpcRequest', 'dryRun'),
              instanceTenancy: instanceTenancy,
              ipv6CidrBlockNetworkBorderGroup: ipv6CidrBlockNetworkBorderGroup,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
