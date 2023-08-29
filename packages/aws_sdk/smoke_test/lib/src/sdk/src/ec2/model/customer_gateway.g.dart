// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_gateway.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerGateway extends CustomerGateway {
  @override
  final String? bgpAsn;
  @override
  final String? customerGatewayId;
  @override
  final String? ipAddress;
  @override
  final String? certificateArn;
  @override
  final String? state;
  @override
  final String? type;
  @override
  final String? deviceName;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$CustomerGateway([void Function(CustomerGatewayBuilder)? updates]) =>
      (new CustomerGatewayBuilder()..update(updates))._build();

  _$CustomerGateway._(
      {this.bgpAsn,
      this.customerGatewayId,
      this.ipAddress,
      this.certificateArn,
      this.state,
      this.type,
      this.deviceName,
      this.tags})
      : super._();

  @override
  CustomerGateway rebuild(void Function(CustomerGatewayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerGatewayBuilder toBuilder() =>
      new CustomerGatewayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerGateway &&
        bgpAsn == other.bgpAsn &&
        customerGatewayId == other.customerGatewayId &&
        ipAddress == other.ipAddress &&
        certificateArn == other.certificateArn &&
        state == other.state &&
        type == other.type &&
        deviceName == other.deviceName &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bgpAsn.hashCode);
    _$hash = $jc(_$hash, customerGatewayId.hashCode);
    _$hash = $jc(_$hash, ipAddress.hashCode);
    _$hash = $jc(_$hash, certificateArn.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CustomerGatewayBuilder
    implements Builder<CustomerGateway, CustomerGatewayBuilder> {
  _$CustomerGateway? _$v;

  String? _bgpAsn;
  String? get bgpAsn => _$this._bgpAsn;
  set bgpAsn(String? bgpAsn) => _$this._bgpAsn = bgpAsn;

  String? _customerGatewayId;
  String? get customerGatewayId => _$this._customerGatewayId;
  set customerGatewayId(String? customerGatewayId) =>
      _$this._customerGatewayId = customerGatewayId;

  String? _ipAddress;
  String? get ipAddress => _$this._ipAddress;
  set ipAddress(String? ipAddress) => _$this._ipAddress = ipAddress;

  String? _certificateArn;
  String? get certificateArn => _$this._certificateArn;
  set certificateArn(String? certificateArn) =>
      _$this._certificateArn = certificateArn;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  CustomerGatewayBuilder();

  CustomerGatewayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bgpAsn = $v.bgpAsn;
      _customerGatewayId = $v.customerGatewayId;
      _ipAddress = $v.ipAddress;
      _certificateArn = $v.certificateArn;
      _state = $v.state;
      _type = $v.type;
      _deviceName = $v.deviceName;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerGateway other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomerGateway;
  }

  @override
  void update(void Function(CustomerGatewayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerGateway build() => _build();

  _$CustomerGateway _build() {
    _$CustomerGateway _$result;
    try {
      _$result = _$v ??
          new _$CustomerGateway._(
              bgpAsn: bgpAsn,
              customerGatewayId: customerGatewayId,
              ipAddress: ipAddress,
              certificateArn: certificateArn,
              state: state,
              type: type,
              deviceName: deviceName,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CustomerGateway', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
