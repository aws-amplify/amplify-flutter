// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCustomerGatewayRequest extends CreateCustomerGatewayRequest {
  @override
  final int bgpAsn;
  @override
  final String? publicIp;
  @override
  final String? certificateArn;
  @override
  final GatewayType? type;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? deviceName;
  @override
  final String? ipAddress;
  @override
  final bool dryRun;

  factory _$CreateCustomerGatewayRequest(
          [void Function(CreateCustomerGatewayRequestBuilder)? updates]) =>
      (new CreateCustomerGatewayRequestBuilder()..update(updates))._build();

  _$CreateCustomerGatewayRequest._(
      {required this.bgpAsn,
      this.publicIp,
      this.certificateArn,
      this.type,
      this.tagSpecifications,
      this.deviceName,
      this.ipAddress,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bgpAsn, r'CreateCustomerGatewayRequest', 'bgpAsn');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateCustomerGatewayRequest', 'dryRun');
  }

  @override
  CreateCustomerGatewayRequest rebuild(
          void Function(CreateCustomerGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCustomerGatewayRequestBuilder toBuilder() =>
      new CreateCustomerGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCustomerGatewayRequest &&
        bgpAsn == other.bgpAsn &&
        publicIp == other.publicIp &&
        certificateArn == other.certificateArn &&
        type == other.type &&
        tagSpecifications == other.tagSpecifications &&
        deviceName == other.deviceName &&
        ipAddress == other.ipAddress &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bgpAsn.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, certificateArn.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, ipAddress.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCustomerGatewayRequestBuilder
    implements
        Builder<CreateCustomerGatewayRequest,
            CreateCustomerGatewayRequestBuilder> {
  _$CreateCustomerGatewayRequest? _$v;

  int? _bgpAsn;
  int? get bgpAsn => _$this._bgpAsn;
  set bgpAsn(int? bgpAsn) => _$this._bgpAsn = bgpAsn;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  String? _certificateArn;
  String? get certificateArn => _$this._certificateArn;
  set certificateArn(String? certificateArn) =>
      _$this._certificateArn = certificateArn;

  GatewayType? _type;
  GatewayType? get type => _$this._type;
  set type(GatewayType? type) => _$this._type = type;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _ipAddress;
  String? get ipAddress => _$this._ipAddress;
  set ipAddress(String? ipAddress) => _$this._ipAddress = ipAddress;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateCustomerGatewayRequestBuilder() {
    CreateCustomerGatewayRequest._init(this);
  }

  CreateCustomerGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bgpAsn = $v.bgpAsn;
      _publicIp = $v.publicIp;
      _certificateArn = $v.certificateArn;
      _type = $v.type;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _deviceName = $v.deviceName;
      _ipAddress = $v.ipAddress;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCustomerGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCustomerGatewayRequest;
  }

  @override
  void update(void Function(CreateCustomerGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCustomerGatewayRequest build() => _build();

  _$CreateCustomerGatewayRequest _build() {
    _$CreateCustomerGatewayRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateCustomerGatewayRequest._(
              bgpAsn: BuiltValueNullFieldError.checkNotNull(
                  bgpAsn, r'CreateCustomerGatewayRequest', 'bgpAsn'),
              publicIp: publicIp,
              certificateArn: certificateArn,
              type: type,
              tagSpecifications: _tagSpecifications?.build(),
              deviceName: deviceName,
              ipAddress: ipAddress,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateCustomerGatewayRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCustomerGatewayRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
