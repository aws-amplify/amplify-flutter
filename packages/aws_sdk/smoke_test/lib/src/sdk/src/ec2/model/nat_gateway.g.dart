// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nat_gateway.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NatGateway extends NatGateway {
  @override
  final DateTime? createTime;
  @override
  final DateTime? deleteTime;
  @override
  final String? failureCode;
  @override
  final String? failureMessage;
  @override
  final _i2.BuiltList<NatGatewayAddress>? natGatewayAddresses;
  @override
  final String? natGatewayId;
  @override
  final ProvisionedBandwidth? provisionedBandwidth;
  @override
  final NatGatewayState? state;
  @override
  final String? subnetId;
  @override
  final String? vpcId;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final ConnectivityType? connectivityType;

  factory _$NatGateway([void Function(NatGatewayBuilder)? updates]) =>
      (new NatGatewayBuilder()..update(updates))._build();

  _$NatGateway._(
      {this.createTime,
      this.deleteTime,
      this.failureCode,
      this.failureMessage,
      this.natGatewayAddresses,
      this.natGatewayId,
      this.provisionedBandwidth,
      this.state,
      this.subnetId,
      this.vpcId,
      this.tags,
      this.connectivityType})
      : super._();

  @override
  NatGateway rebuild(void Function(NatGatewayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NatGatewayBuilder toBuilder() => new NatGatewayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NatGateway &&
        createTime == other.createTime &&
        deleteTime == other.deleteTime &&
        failureCode == other.failureCode &&
        failureMessage == other.failureMessage &&
        natGatewayAddresses == other.natGatewayAddresses &&
        natGatewayId == other.natGatewayId &&
        provisionedBandwidth == other.provisionedBandwidth &&
        state == other.state &&
        subnetId == other.subnetId &&
        vpcId == other.vpcId &&
        tags == other.tags &&
        connectivityType == other.connectivityType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jc(_$hash, deleteTime.hashCode);
    _$hash = $jc(_$hash, failureCode.hashCode);
    _$hash = $jc(_$hash, failureMessage.hashCode);
    _$hash = $jc(_$hash, natGatewayAddresses.hashCode);
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jc(_$hash, provisionedBandwidth.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, connectivityType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NatGatewayBuilder implements Builder<NatGateway, NatGatewayBuilder> {
  _$NatGateway? _$v;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  DateTime? _deleteTime;
  DateTime? get deleteTime => _$this._deleteTime;
  set deleteTime(DateTime? deleteTime) => _$this._deleteTime = deleteTime;

  String? _failureCode;
  String? get failureCode => _$this._failureCode;
  set failureCode(String? failureCode) => _$this._failureCode = failureCode;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  _i2.ListBuilder<NatGatewayAddress>? _natGatewayAddresses;
  _i2.ListBuilder<NatGatewayAddress> get natGatewayAddresses =>
      _$this._natGatewayAddresses ??= new _i2.ListBuilder<NatGatewayAddress>();
  set natGatewayAddresses(
          _i2.ListBuilder<NatGatewayAddress>? natGatewayAddresses) =>
      _$this._natGatewayAddresses = natGatewayAddresses;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  ProvisionedBandwidthBuilder? _provisionedBandwidth;
  ProvisionedBandwidthBuilder get provisionedBandwidth =>
      _$this._provisionedBandwidth ??= new ProvisionedBandwidthBuilder();
  set provisionedBandwidth(ProvisionedBandwidthBuilder? provisionedBandwidth) =>
      _$this._provisionedBandwidth = provisionedBandwidth;

  NatGatewayState? _state;
  NatGatewayState? get state => _$this._state;
  set state(NatGatewayState? state) => _$this._state = state;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  ConnectivityType? _connectivityType;
  ConnectivityType? get connectivityType => _$this._connectivityType;
  set connectivityType(ConnectivityType? connectivityType) =>
      _$this._connectivityType = connectivityType;

  NatGatewayBuilder();

  NatGatewayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createTime = $v.createTime;
      _deleteTime = $v.deleteTime;
      _failureCode = $v.failureCode;
      _failureMessage = $v.failureMessage;
      _natGatewayAddresses = $v.natGatewayAddresses?.toBuilder();
      _natGatewayId = $v.natGatewayId;
      _provisionedBandwidth = $v.provisionedBandwidth?.toBuilder();
      _state = $v.state;
      _subnetId = $v.subnetId;
      _vpcId = $v.vpcId;
      _tags = $v.tags?.toBuilder();
      _connectivityType = $v.connectivityType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NatGateway other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NatGateway;
  }

  @override
  void update(void Function(NatGatewayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NatGateway build() => _build();

  _$NatGateway _build() {
    _$NatGateway _$result;
    try {
      _$result = _$v ??
          new _$NatGateway._(
              createTime: createTime,
              deleteTime: deleteTime,
              failureCode: failureCode,
              failureMessage: failureMessage,
              natGatewayAddresses: _natGatewayAddresses?.build(),
              natGatewayId: natGatewayId,
              provisionedBandwidth: _provisionedBandwidth?.build(),
              state: state,
              subnetId: subnetId,
              vpcId: vpcId,
              tags: _tags?.build(),
              connectivityType: connectivityType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'natGatewayAddresses';
        _natGatewayAddresses?.build();

        _$failedField = 'provisionedBandwidth';
        _provisionedBandwidth?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NatGateway', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
