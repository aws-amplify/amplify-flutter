// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_nat_gateway_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateNatGatewayAddressRequest
    extends AssociateNatGatewayAddressRequest {
  @override
  final String? natGatewayId;
  @override
  final _i3.BuiltList<String>? allocationIds;
  @override
  final _i3.BuiltList<String>? privateIpAddresses;
  @override
  final bool dryRun;

  factory _$AssociateNatGatewayAddressRequest(
          [void Function(AssociateNatGatewayAddressRequestBuilder)? updates]) =>
      (new AssociateNatGatewayAddressRequestBuilder()..update(updates))
          ._build();

  _$AssociateNatGatewayAddressRequest._(
      {this.natGatewayId,
      this.allocationIds,
      this.privateIpAddresses,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateNatGatewayAddressRequest', 'dryRun');
  }

  @override
  AssociateNatGatewayAddressRequest rebuild(
          void Function(AssociateNatGatewayAddressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateNatGatewayAddressRequestBuilder toBuilder() =>
      new AssociateNatGatewayAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateNatGatewayAddressRequest &&
        natGatewayId == other.natGatewayId &&
        allocationIds == other.allocationIds &&
        privateIpAddresses == other.privateIpAddresses &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jc(_$hash, allocationIds.hashCode);
    _$hash = $jc(_$hash, privateIpAddresses.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateNatGatewayAddressRequestBuilder
    implements
        Builder<AssociateNatGatewayAddressRequest,
            AssociateNatGatewayAddressRequestBuilder> {
  _$AssociateNatGatewayAddressRequest? _$v;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  _i3.ListBuilder<String>? _allocationIds;
  _i3.ListBuilder<String> get allocationIds =>
      _$this._allocationIds ??= new _i3.ListBuilder<String>();
  set allocationIds(_i3.ListBuilder<String>? allocationIds) =>
      _$this._allocationIds = allocationIds;

  _i3.ListBuilder<String>? _privateIpAddresses;
  _i3.ListBuilder<String> get privateIpAddresses =>
      _$this._privateIpAddresses ??= new _i3.ListBuilder<String>();
  set privateIpAddresses(_i3.ListBuilder<String>? privateIpAddresses) =>
      _$this._privateIpAddresses = privateIpAddresses;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AssociateNatGatewayAddressRequestBuilder() {
    AssociateNatGatewayAddressRequest._init(this);
  }

  AssociateNatGatewayAddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _natGatewayId = $v.natGatewayId;
      _allocationIds = $v.allocationIds?.toBuilder();
      _privateIpAddresses = $v.privateIpAddresses?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateNatGatewayAddressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateNatGatewayAddressRequest;
  }

  @override
  void update(
      void Function(AssociateNatGatewayAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateNatGatewayAddressRequest build() => _build();

  _$AssociateNatGatewayAddressRequest _build() {
    _$AssociateNatGatewayAddressRequest _$result;
    try {
      _$result = _$v ??
          new _$AssociateNatGatewayAddressRequest._(
              natGatewayId: natGatewayId,
              allocationIds: _allocationIds?.build(),
              privateIpAddresses: _privateIpAddresses?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AssociateNatGatewayAddressRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allocationIds';
        _allocationIds?.build();
        _$failedField = 'privateIpAddresses';
        _privateIpAddresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateNatGatewayAddressRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
