// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_local_gateway_route_table_virtual_interface_group_association_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
    extends CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest {
  @override
  final String? localGatewayRouteTableId;
  @override
  final String? localGatewayVirtualInterfaceGroupId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest(
          [void Function(
                  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder)?
              updates]) =>
      (new CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder()
            ..update(updates))
          ._build();

  _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest._(
      {this.localGatewayRouteTableId,
      this.localGatewayVirtualInterfaceGroupId,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun,
        r'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest',
        'dryRun');
  }

  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest rebuild(
          void Function(
                  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder
      toBuilder() =>
          new CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        localGatewayVirtualInterfaceGroupId ==
            other.localGatewayVirtualInterfaceGroupId &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceGroupId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder
    implements
        Builder<
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder> {
  _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest? _$v;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  String? _localGatewayVirtualInterfaceGroupId;
  String? get localGatewayVirtualInterfaceGroupId =>
      _$this._localGatewayVirtualInterfaceGroupId;
  set localGatewayVirtualInterfaceGroupId(
          String? localGatewayVirtualInterfaceGroupId) =>
      _$this._localGatewayVirtualInterfaceGroupId =
          localGatewayVirtualInterfaceGroupId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder() {
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest._init(
        this);
  }

  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _localGatewayVirtualInterfaceGroupId =
          $v.localGatewayVirtualInterfaceGroupId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest;
  }

  @override
  void update(
      void Function(
              CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest build() =>
      _build();

  _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      _build() {
    _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
        _$result;
    try {
      _$result = _$v ??
          new _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
              ._(
              localGatewayRouteTableId: localGatewayRouteTableId,
              localGatewayVirtualInterfaceGroupId:
                  localGatewayVirtualInterfaceGroupId,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest',
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
