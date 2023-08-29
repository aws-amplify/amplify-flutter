// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_local_gateway_route_table_vpc_association_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLocalGatewayRouteTableVpcAssociationRequest
    extends CreateLocalGatewayRouteTableVpcAssociationRequest {
  @override
  final String? localGatewayRouteTableId;
  @override
  final String? vpcId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateLocalGatewayRouteTableVpcAssociationRequest(
          [void Function(
                  CreateLocalGatewayRouteTableVpcAssociationRequestBuilder)?
              updates]) =>
      (new CreateLocalGatewayRouteTableVpcAssociationRequestBuilder()
            ..update(updates))
          ._build();

  _$CreateLocalGatewayRouteTableVpcAssociationRequest._(
      {this.localGatewayRouteTableId,
      this.vpcId,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateLocalGatewayRouteTableVpcAssociationRequest', 'dryRun');
  }

  @override
  CreateLocalGatewayRouteTableVpcAssociationRequest rebuild(
          void Function(
                  CreateLocalGatewayRouteTableVpcAssociationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLocalGatewayRouteTableVpcAssociationRequestBuilder toBuilder() =>
      new CreateLocalGatewayRouteTableVpcAssociationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLocalGatewayRouteTableVpcAssociationRequest &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        vpcId == other.vpcId &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLocalGatewayRouteTableVpcAssociationRequestBuilder
    implements
        Builder<CreateLocalGatewayRouteTableVpcAssociationRequest,
            CreateLocalGatewayRouteTableVpcAssociationRequestBuilder> {
  _$CreateLocalGatewayRouteTableVpcAssociationRequest? _$v;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateLocalGatewayRouteTableVpcAssociationRequestBuilder() {
    CreateLocalGatewayRouteTableVpcAssociationRequest._init(this);
  }

  CreateLocalGatewayRouteTableVpcAssociationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _vpcId = $v.vpcId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLocalGatewayRouteTableVpcAssociationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLocalGatewayRouteTableVpcAssociationRequest;
  }

  @override
  void update(
      void Function(CreateLocalGatewayRouteTableVpcAssociationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLocalGatewayRouteTableVpcAssociationRequest build() => _build();

  _$CreateLocalGatewayRouteTableVpcAssociationRequest _build() {
    _$CreateLocalGatewayRouteTableVpcAssociationRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateLocalGatewayRouteTableVpcAssociationRequest._(
              localGatewayRouteTableId: localGatewayRouteTableId,
              vpcId: vpcId,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'CreateLocalGatewayRouteTableVpcAssociationRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLocalGatewayRouteTableVpcAssociationRequest',
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
