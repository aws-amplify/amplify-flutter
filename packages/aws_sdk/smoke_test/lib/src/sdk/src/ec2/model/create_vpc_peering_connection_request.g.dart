// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpc_peering_connection_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcPeeringConnectionRequest
    extends CreateVpcPeeringConnectionRequest {
  @override
  final bool dryRun;
  @override
  final String? peerOwnerId;
  @override
  final String? peerVpcId;
  @override
  final String? vpcId;
  @override
  final String? peerRegion;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateVpcPeeringConnectionRequest(
          [void Function(CreateVpcPeeringConnectionRequestBuilder)? updates]) =>
      (new CreateVpcPeeringConnectionRequestBuilder()..update(updates))
          ._build();

  _$CreateVpcPeeringConnectionRequest._(
      {required this.dryRun,
      this.peerOwnerId,
      this.peerVpcId,
      this.vpcId,
      this.peerRegion,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVpcPeeringConnectionRequest', 'dryRun');
  }

  @override
  CreateVpcPeeringConnectionRequest rebuild(
          void Function(CreateVpcPeeringConnectionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcPeeringConnectionRequestBuilder toBuilder() =>
      new CreateVpcPeeringConnectionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcPeeringConnectionRequest &&
        dryRun == other.dryRun &&
        peerOwnerId == other.peerOwnerId &&
        peerVpcId == other.peerVpcId &&
        vpcId == other.vpcId &&
        peerRegion == other.peerRegion &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, peerOwnerId.hashCode);
    _$hash = $jc(_$hash, peerVpcId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, peerRegion.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcPeeringConnectionRequestBuilder
    implements
        Builder<CreateVpcPeeringConnectionRequest,
            CreateVpcPeeringConnectionRequestBuilder> {
  _$CreateVpcPeeringConnectionRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _peerOwnerId;
  String? get peerOwnerId => _$this._peerOwnerId;
  set peerOwnerId(String? peerOwnerId) => _$this._peerOwnerId = peerOwnerId;

  String? _peerVpcId;
  String? get peerVpcId => _$this._peerVpcId;
  set peerVpcId(String? peerVpcId) => _$this._peerVpcId = peerVpcId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _peerRegion;
  String? get peerRegion => _$this._peerRegion;
  set peerRegion(String? peerRegion) => _$this._peerRegion = peerRegion;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateVpcPeeringConnectionRequestBuilder() {
    CreateVpcPeeringConnectionRequest._init(this);
  }

  CreateVpcPeeringConnectionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _peerOwnerId = $v.peerOwnerId;
      _peerVpcId = $v.peerVpcId;
      _vpcId = $v.vpcId;
      _peerRegion = $v.peerRegion;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcPeeringConnectionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcPeeringConnectionRequest;
  }

  @override
  void update(
      void Function(CreateVpcPeeringConnectionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcPeeringConnectionRequest build() => _build();

  _$CreateVpcPeeringConnectionRequest _build() {
    _$CreateVpcPeeringConnectionRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVpcPeeringConnectionRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateVpcPeeringConnectionRequest', 'dryRun'),
              peerOwnerId: peerOwnerId,
              peerVpcId: peerVpcId,
              vpcId: vpcId,
              peerRegion: peerRegion,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcPeeringConnectionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
