// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrier_gateway.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CarrierGateway extends CarrierGateway {
  @override
  final String? carrierGatewayId;
  @override
  final String? vpcId;
  @override
  final CarrierGatewayState? state;
  @override
  final String? ownerId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$CarrierGateway([void Function(CarrierGatewayBuilder)? updates]) =>
      (new CarrierGatewayBuilder()..update(updates))._build();

  _$CarrierGateway._(
      {this.carrierGatewayId, this.vpcId, this.state, this.ownerId, this.tags})
      : super._();

  @override
  CarrierGateway rebuild(void Function(CarrierGatewayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarrierGatewayBuilder toBuilder() =>
      new CarrierGatewayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarrierGateway &&
        carrierGatewayId == other.carrierGatewayId &&
        vpcId == other.vpcId &&
        state == other.state &&
        ownerId == other.ownerId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, carrierGatewayId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CarrierGatewayBuilder
    implements Builder<CarrierGateway, CarrierGatewayBuilder> {
  _$CarrierGateway? _$v;

  String? _carrierGatewayId;
  String? get carrierGatewayId => _$this._carrierGatewayId;
  set carrierGatewayId(String? carrierGatewayId) =>
      _$this._carrierGatewayId = carrierGatewayId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  CarrierGatewayState? _state;
  CarrierGatewayState? get state => _$this._state;
  set state(CarrierGatewayState? state) => _$this._state = state;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  CarrierGatewayBuilder();

  CarrierGatewayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carrierGatewayId = $v.carrierGatewayId;
      _vpcId = $v.vpcId;
      _state = $v.state;
      _ownerId = $v.ownerId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarrierGateway other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarrierGateway;
  }

  @override
  void update(void Function(CarrierGatewayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarrierGateway build() => _build();

  _$CarrierGateway _build() {
    _$CarrierGateway _$result;
    try {
      _$result = _$v ??
          new _$CarrierGateway._(
              carrierGatewayId: carrierGatewayId,
              vpcId: vpcId,
              state: state,
              ownerId: ownerId,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CarrierGateway', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
