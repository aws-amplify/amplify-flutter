// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpn_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpnGatewayRequest extends CreateVpnGatewayRequest {
  @override
  final String? availabilityZone;
  @override
  final GatewayType? type;
  @override
  final _i4.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final _i3.Int64 amazonSideAsn;
  @override
  final bool dryRun;

  factory _$CreateVpnGatewayRequest(
          [void Function(CreateVpnGatewayRequestBuilder)? updates]) =>
      (new CreateVpnGatewayRequestBuilder()..update(updates))._build();

  _$CreateVpnGatewayRequest._(
      {this.availabilityZone,
      this.type,
      this.tagSpecifications,
      required this.amazonSideAsn,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amazonSideAsn, r'CreateVpnGatewayRequest', 'amazonSideAsn');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVpnGatewayRequest', 'dryRun');
  }

  @override
  CreateVpnGatewayRequest rebuild(
          void Function(CreateVpnGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpnGatewayRequestBuilder toBuilder() =>
      new CreateVpnGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpnGatewayRequest &&
        availabilityZone == other.availabilityZone &&
        type == other.type &&
        tagSpecifications == other.tagSpecifications &&
        amazonSideAsn == other.amazonSideAsn &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, amazonSideAsn.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpnGatewayRequestBuilder
    implements
        Builder<CreateVpnGatewayRequest, CreateVpnGatewayRequestBuilder> {
  _$CreateVpnGatewayRequest? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  GatewayType? _type;
  GatewayType? get type => _$this._type;
  set type(GatewayType? type) => _$this._type = type;

  _i4.ListBuilder<TagSpecification>? _tagSpecifications;
  _i4.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i4.ListBuilder<TagSpecification>();
  set tagSpecifications(_i4.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  _i3.Int64? _amazonSideAsn;
  _i3.Int64? get amazonSideAsn => _$this._amazonSideAsn;
  set amazonSideAsn(_i3.Int64? amazonSideAsn) =>
      _$this._amazonSideAsn = amazonSideAsn;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateVpnGatewayRequestBuilder() {
    CreateVpnGatewayRequest._init(this);
  }

  CreateVpnGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _type = $v.type;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _amazonSideAsn = $v.amazonSideAsn;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpnGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpnGatewayRequest;
  }

  @override
  void update(void Function(CreateVpnGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpnGatewayRequest build() => _build();

  _$CreateVpnGatewayRequest _build() {
    _$CreateVpnGatewayRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVpnGatewayRequest._(
              availabilityZone: availabilityZone,
              type: type,
              tagSpecifications: _tagSpecifications?.build(),
              amazonSideAsn: BuiltValueNullFieldError.checkNotNull(
                  amazonSideAsn, r'CreateVpnGatewayRequest', 'amazonSideAsn'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateVpnGatewayRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpnGatewayRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
