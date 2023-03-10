// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.endpoint;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Endpoint extends Endpoint {
  @override
  final String address;
  @override
  final _i2.Int64 cachePeriodInMinutes;

  factory _$Endpoint([void Function(EndpointBuilder)? updates]) =>
      (new EndpointBuilder()..update(updates))._build();

  _$Endpoint._({required this.address, required this.cachePeriodInMinutes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(address, r'Endpoint', 'address');
    BuiltValueNullFieldError.checkNotNull(
        cachePeriodInMinutes, r'Endpoint', 'cachePeriodInMinutes');
  }

  @override
  Endpoint rebuild(void Function(EndpointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointBuilder toBuilder() => new EndpointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Endpoint &&
        address == other.address &&
        cachePeriodInMinutes == other.cachePeriodInMinutes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, cachePeriodInMinutes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EndpointBuilder implements Builder<Endpoint, EndpointBuilder> {
  _$Endpoint? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  _i2.Int64? _cachePeriodInMinutes;
  _i2.Int64? get cachePeriodInMinutes => _$this._cachePeriodInMinutes;
  set cachePeriodInMinutes(_i2.Int64? cachePeriodInMinutes) =>
      _$this._cachePeriodInMinutes = cachePeriodInMinutes;

  EndpointBuilder() {
    Endpoint._init(this);
  }

  EndpointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _cachePeriodInMinutes = $v.cachePeriodInMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Endpoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Endpoint;
  }

  @override
  void update(void Function(EndpointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Endpoint build() => _build();

  _$Endpoint _build() {
    final _$result = _$v ??
        new _$Endpoint._(
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'Endpoint', 'address'),
            cachePeriodInMinutes: BuiltValueNullFieldError.checkNotNull(
                cachePeriodInMinutes, r'Endpoint', 'cachePeriodInMinutes'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
