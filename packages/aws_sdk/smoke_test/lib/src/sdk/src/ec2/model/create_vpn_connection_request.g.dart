// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpn_connection_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpnConnectionRequest extends CreateVpnConnectionRequest {
  @override
  final String? customerGatewayId;
  @override
  final String? type;
  @override
  final String? vpnGatewayId;
  @override
  final String? transitGatewayId;
  @override
  final bool dryRun;
  @override
  final VpnConnectionOptionsSpecification? options;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateVpnConnectionRequest(
          [void Function(CreateVpnConnectionRequestBuilder)? updates]) =>
      (new CreateVpnConnectionRequestBuilder()..update(updates))._build();

  _$CreateVpnConnectionRequest._(
      {this.customerGatewayId,
      this.type,
      this.vpnGatewayId,
      this.transitGatewayId,
      required this.dryRun,
      this.options,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVpnConnectionRequest', 'dryRun');
  }

  @override
  CreateVpnConnectionRequest rebuild(
          void Function(CreateVpnConnectionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpnConnectionRequestBuilder toBuilder() =>
      new CreateVpnConnectionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpnConnectionRequest &&
        customerGatewayId == other.customerGatewayId &&
        type == other.type &&
        vpnGatewayId == other.vpnGatewayId &&
        transitGatewayId == other.transitGatewayId &&
        dryRun == other.dryRun &&
        options == other.options &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerGatewayId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, vpnGatewayId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpnConnectionRequestBuilder
    implements
        Builder<CreateVpnConnectionRequest, CreateVpnConnectionRequestBuilder> {
  _$CreateVpnConnectionRequest? _$v;

  String? _customerGatewayId;
  String? get customerGatewayId => _$this._customerGatewayId;
  set customerGatewayId(String? customerGatewayId) =>
      _$this._customerGatewayId = customerGatewayId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _vpnGatewayId;
  String? get vpnGatewayId => _$this._vpnGatewayId;
  set vpnGatewayId(String? vpnGatewayId) => _$this._vpnGatewayId = vpnGatewayId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  VpnConnectionOptionsSpecificationBuilder? _options;
  VpnConnectionOptionsSpecificationBuilder get options =>
      _$this._options ??= new VpnConnectionOptionsSpecificationBuilder();
  set options(VpnConnectionOptionsSpecificationBuilder? options) =>
      _$this._options = options;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateVpnConnectionRequestBuilder() {
    CreateVpnConnectionRequest._init(this);
  }

  CreateVpnConnectionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerGatewayId = $v.customerGatewayId;
      _type = $v.type;
      _vpnGatewayId = $v.vpnGatewayId;
      _transitGatewayId = $v.transitGatewayId;
      _dryRun = $v.dryRun;
      _options = $v.options?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpnConnectionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpnConnectionRequest;
  }

  @override
  void update(void Function(CreateVpnConnectionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpnConnectionRequest build() => _build();

  _$CreateVpnConnectionRequest _build() {
    _$CreateVpnConnectionRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVpnConnectionRequest._(
              customerGatewayId: customerGatewayId,
              type: type,
              vpnGatewayId: vpnGatewayId,
              transitGatewayId: transitGatewayId,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateVpnConnectionRequest', 'dryRun'),
              options: _options?.build(),
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpnConnectionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
