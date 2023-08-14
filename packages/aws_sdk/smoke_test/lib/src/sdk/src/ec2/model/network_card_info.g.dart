// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_card_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkCardInfo extends NetworkCardInfo {
  @override
  final int? networkCardIndex;
  @override
  final String? networkPerformance;
  @override
  final int? maximumNetworkInterfaces;
  @override
  final double? baselineBandwidthInGbps;
  @override
  final double? peakBandwidthInGbps;

  factory _$NetworkCardInfo([void Function(NetworkCardInfoBuilder)? updates]) =>
      (new NetworkCardInfoBuilder()..update(updates))._build();

  _$NetworkCardInfo._(
      {this.networkCardIndex,
      this.networkPerformance,
      this.maximumNetworkInterfaces,
      this.baselineBandwidthInGbps,
      this.peakBandwidthInGbps})
      : super._();

  @override
  NetworkCardInfo rebuild(void Function(NetworkCardInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkCardInfoBuilder toBuilder() =>
      new NetworkCardInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkCardInfo &&
        networkCardIndex == other.networkCardIndex &&
        networkPerformance == other.networkPerformance &&
        maximumNetworkInterfaces == other.maximumNetworkInterfaces &&
        baselineBandwidthInGbps == other.baselineBandwidthInGbps &&
        peakBandwidthInGbps == other.peakBandwidthInGbps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkCardIndex.hashCode);
    _$hash = $jc(_$hash, networkPerformance.hashCode);
    _$hash = $jc(_$hash, maximumNetworkInterfaces.hashCode);
    _$hash = $jc(_$hash, baselineBandwidthInGbps.hashCode);
    _$hash = $jc(_$hash, peakBandwidthInGbps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkCardInfoBuilder
    implements Builder<NetworkCardInfo, NetworkCardInfoBuilder> {
  _$NetworkCardInfo? _$v;

  int? _networkCardIndex;
  int? get networkCardIndex => _$this._networkCardIndex;
  set networkCardIndex(int? networkCardIndex) =>
      _$this._networkCardIndex = networkCardIndex;

  String? _networkPerformance;
  String? get networkPerformance => _$this._networkPerformance;
  set networkPerformance(String? networkPerformance) =>
      _$this._networkPerformance = networkPerformance;

  int? _maximumNetworkInterfaces;
  int? get maximumNetworkInterfaces => _$this._maximumNetworkInterfaces;
  set maximumNetworkInterfaces(int? maximumNetworkInterfaces) =>
      _$this._maximumNetworkInterfaces = maximumNetworkInterfaces;

  double? _baselineBandwidthInGbps;
  double? get baselineBandwidthInGbps => _$this._baselineBandwidthInGbps;
  set baselineBandwidthInGbps(double? baselineBandwidthInGbps) =>
      _$this._baselineBandwidthInGbps = baselineBandwidthInGbps;

  double? _peakBandwidthInGbps;
  double? get peakBandwidthInGbps => _$this._peakBandwidthInGbps;
  set peakBandwidthInGbps(double? peakBandwidthInGbps) =>
      _$this._peakBandwidthInGbps = peakBandwidthInGbps;

  NetworkCardInfoBuilder();

  NetworkCardInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkCardIndex = $v.networkCardIndex;
      _networkPerformance = $v.networkPerformance;
      _maximumNetworkInterfaces = $v.maximumNetworkInterfaces;
      _baselineBandwidthInGbps = $v.baselineBandwidthInGbps;
      _peakBandwidthInGbps = $v.peakBandwidthInGbps;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkCardInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkCardInfo;
  }

  @override
  void update(void Function(NetworkCardInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkCardInfo build() => _build();

  _$NetworkCardInfo _build() {
    final _$result = _$v ??
        new _$NetworkCardInfo._(
            networkCardIndex: networkCardIndex,
            networkPerformance: networkPerformance,
            maximumNetworkInterfaces: maximumNetworkInterfaces,
            baselineBandwidthInGbps: baselineBandwidthInGbps,
            peakBandwidthInGbps: peakBandwidthInGbps);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
