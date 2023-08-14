// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_ipv4_pool_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PublicIpv4PoolRange extends PublicIpv4PoolRange {
  @override
  final String? firstAddress;
  @override
  final String? lastAddress;
  @override
  final int addressCount;
  @override
  final int availableAddressCount;

  factory _$PublicIpv4PoolRange(
          [void Function(PublicIpv4PoolRangeBuilder)? updates]) =>
      (new PublicIpv4PoolRangeBuilder()..update(updates))._build();

  _$PublicIpv4PoolRange._(
      {this.firstAddress,
      this.lastAddress,
      required this.addressCount,
      required this.availableAddressCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        addressCount, r'PublicIpv4PoolRange', 'addressCount');
    BuiltValueNullFieldError.checkNotNull(
        availableAddressCount, r'PublicIpv4PoolRange', 'availableAddressCount');
  }

  @override
  PublicIpv4PoolRange rebuild(
          void Function(PublicIpv4PoolRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublicIpv4PoolRangeBuilder toBuilder() =>
      new PublicIpv4PoolRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PublicIpv4PoolRange &&
        firstAddress == other.firstAddress &&
        lastAddress == other.lastAddress &&
        addressCount == other.addressCount &&
        availableAddressCount == other.availableAddressCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstAddress.hashCode);
    _$hash = $jc(_$hash, lastAddress.hashCode);
    _$hash = $jc(_$hash, addressCount.hashCode);
    _$hash = $jc(_$hash, availableAddressCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PublicIpv4PoolRangeBuilder
    implements Builder<PublicIpv4PoolRange, PublicIpv4PoolRangeBuilder> {
  _$PublicIpv4PoolRange? _$v;

  String? _firstAddress;
  String? get firstAddress => _$this._firstAddress;
  set firstAddress(String? firstAddress) => _$this._firstAddress = firstAddress;

  String? _lastAddress;
  String? get lastAddress => _$this._lastAddress;
  set lastAddress(String? lastAddress) => _$this._lastAddress = lastAddress;

  int? _addressCount;
  int? get addressCount => _$this._addressCount;
  set addressCount(int? addressCount) => _$this._addressCount = addressCount;

  int? _availableAddressCount;
  int? get availableAddressCount => _$this._availableAddressCount;
  set availableAddressCount(int? availableAddressCount) =>
      _$this._availableAddressCount = availableAddressCount;

  PublicIpv4PoolRangeBuilder() {
    PublicIpv4PoolRange._init(this);
  }

  PublicIpv4PoolRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstAddress = $v.firstAddress;
      _lastAddress = $v.lastAddress;
      _addressCount = $v.addressCount;
      _availableAddressCount = $v.availableAddressCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PublicIpv4PoolRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PublicIpv4PoolRange;
  }

  @override
  void update(void Function(PublicIpv4PoolRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PublicIpv4PoolRange build() => _build();

  _$PublicIpv4PoolRange _build() {
    final _$result = _$v ??
        new _$PublicIpv4PoolRange._(
            firstAddress: firstAddress,
            lastAddress: lastAddress,
            addressCount: BuiltValueNullFieldError.checkNotNull(
                addressCount, r'PublicIpv4PoolRange', 'addressCount'),
            availableAddressCount: BuiltValueNullFieldError.checkNotNull(
                availableAddressCount,
                r'PublicIpv4PoolRange',
                'availableAddressCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
