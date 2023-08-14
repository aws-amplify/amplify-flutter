// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_bandwidth_gbps.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkBandwidthGbps extends NetworkBandwidthGbps {
  @override
  final double min;
  @override
  final double max;

  factory _$NetworkBandwidthGbps(
          [void Function(NetworkBandwidthGbpsBuilder)? updates]) =>
      (new NetworkBandwidthGbpsBuilder()..update(updates))._build();

  _$NetworkBandwidthGbps._({required this.min, required this.max}) : super._() {
    BuiltValueNullFieldError.checkNotNull(min, r'NetworkBandwidthGbps', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'NetworkBandwidthGbps', 'max');
  }

  @override
  NetworkBandwidthGbps rebuild(
          void Function(NetworkBandwidthGbpsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkBandwidthGbpsBuilder toBuilder() =>
      new NetworkBandwidthGbpsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkBandwidthGbps &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkBandwidthGbpsBuilder
    implements Builder<NetworkBandwidthGbps, NetworkBandwidthGbpsBuilder> {
  _$NetworkBandwidthGbps? _$v;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  NetworkBandwidthGbpsBuilder() {
    NetworkBandwidthGbps._init(this);
  }

  NetworkBandwidthGbpsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkBandwidthGbps other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkBandwidthGbps;
  }

  @override
  void update(void Function(NetworkBandwidthGbpsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkBandwidthGbps build() => _build();

  _$NetworkBandwidthGbps _build() {
    final _$result = _$v ??
        new _$NetworkBandwidthGbps._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'NetworkBandwidthGbps', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'NetworkBandwidthGbps', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
