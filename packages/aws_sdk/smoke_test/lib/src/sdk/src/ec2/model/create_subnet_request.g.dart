// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subnet_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSubnetRequest extends CreateSubnetRequest {
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? availabilityZone;
  @override
  final String? availabilityZoneId;
  @override
  final String? cidrBlock;
  @override
  final String? ipv6CidrBlock;
  @override
  final String? outpostArn;
  @override
  final String? vpcId;
  @override
  final bool dryRun;
  @override
  final bool ipv6Native;

  factory _$CreateSubnetRequest(
          [void Function(CreateSubnetRequestBuilder)? updates]) =>
      (new CreateSubnetRequestBuilder()..update(updates))._build();

  _$CreateSubnetRequest._(
      {this.tagSpecifications,
      this.availabilityZone,
      this.availabilityZoneId,
      this.cidrBlock,
      this.ipv6CidrBlock,
      this.outpostArn,
      this.vpcId,
      required this.dryRun,
      required this.ipv6Native})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateSubnetRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        ipv6Native, r'CreateSubnetRequest', 'ipv6Native');
  }

  @override
  CreateSubnetRequest rebuild(
          void Function(CreateSubnetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSubnetRequestBuilder toBuilder() =>
      new CreateSubnetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSubnetRequest &&
        tagSpecifications == other.tagSpecifications &&
        availabilityZone == other.availabilityZone &&
        availabilityZoneId == other.availabilityZoneId &&
        cidrBlock == other.cidrBlock &&
        ipv6CidrBlock == other.ipv6CidrBlock &&
        outpostArn == other.outpostArn &&
        vpcId == other.vpcId &&
        dryRun == other.dryRun &&
        ipv6Native == other.ipv6Native;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, availabilityZoneId.hashCode);
    _$hash = $jc(_$hash, cidrBlock.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipv6Native.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSubnetRequestBuilder
    implements Builder<CreateSubnetRequest, CreateSubnetRequestBuilder> {
  _$CreateSubnetRequest? _$v;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _availabilityZoneId;
  String? get availabilityZoneId => _$this._availabilityZoneId;
  set availabilityZoneId(String? availabilityZoneId) =>
      _$this._availabilityZoneId = availabilityZoneId;

  String? _cidrBlock;
  String? get cidrBlock => _$this._cidrBlock;
  set cidrBlock(String? cidrBlock) => _$this._cidrBlock = cidrBlock;

  String? _ipv6CidrBlock;
  String? get ipv6CidrBlock => _$this._ipv6CidrBlock;
  set ipv6CidrBlock(String? ipv6CidrBlock) =>
      _$this._ipv6CidrBlock = ipv6CidrBlock;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _ipv6Native;
  bool? get ipv6Native => _$this._ipv6Native;
  set ipv6Native(bool? ipv6Native) => _$this._ipv6Native = ipv6Native;

  CreateSubnetRequestBuilder() {
    CreateSubnetRequest._init(this);
  }

  CreateSubnetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _availabilityZone = $v.availabilityZone;
      _availabilityZoneId = $v.availabilityZoneId;
      _cidrBlock = $v.cidrBlock;
      _ipv6CidrBlock = $v.ipv6CidrBlock;
      _outpostArn = $v.outpostArn;
      _vpcId = $v.vpcId;
      _dryRun = $v.dryRun;
      _ipv6Native = $v.ipv6Native;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSubnetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSubnetRequest;
  }

  @override
  void update(void Function(CreateSubnetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSubnetRequest build() => _build();

  _$CreateSubnetRequest _build() {
    _$CreateSubnetRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateSubnetRequest._(
              tagSpecifications: _tagSpecifications?.build(),
              availabilityZone: availabilityZone,
              availabilityZoneId: availabilityZoneId,
              cidrBlock: cidrBlock,
              ipv6CidrBlock: ipv6CidrBlock,
              outpostArn: outpostArn,
              vpcId: vpcId,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateSubnetRequest', 'dryRun'),
              ipv6Native: BuiltValueNullFieldError.checkNotNull(
                  ipv6Native, r'CreateSubnetRequest', 'ipv6Native'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSubnetRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
