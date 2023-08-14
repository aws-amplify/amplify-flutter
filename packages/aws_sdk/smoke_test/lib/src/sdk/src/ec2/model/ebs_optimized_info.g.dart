// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebs_optimized_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EbsOptimizedInfo extends EbsOptimizedInfo {
  @override
  final int? baselineBandwidthInMbps;
  @override
  final double? baselineThroughputInMBps;
  @override
  final int? baselineIops;
  @override
  final int? maximumBandwidthInMbps;
  @override
  final double? maximumThroughputInMBps;
  @override
  final int? maximumIops;

  factory _$EbsOptimizedInfo(
          [void Function(EbsOptimizedInfoBuilder)? updates]) =>
      (new EbsOptimizedInfoBuilder()..update(updates))._build();

  _$EbsOptimizedInfo._(
      {this.baselineBandwidthInMbps,
      this.baselineThroughputInMBps,
      this.baselineIops,
      this.maximumBandwidthInMbps,
      this.maximumThroughputInMBps,
      this.maximumIops})
      : super._();

  @override
  EbsOptimizedInfo rebuild(void Function(EbsOptimizedInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EbsOptimizedInfoBuilder toBuilder() =>
      new EbsOptimizedInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EbsOptimizedInfo &&
        baselineBandwidthInMbps == other.baselineBandwidthInMbps &&
        baselineThroughputInMBps == other.baselineThroughputInMBps &&
        baselineIops == other.baselineIops &&
        maximumBandwidthInMbps == other.maximumBandwidthInMbps &&
        maximumThroughputInMBps == other.maximumThroughputInMBps &&
        maximumIops == other.maximumIops;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baselineBandwidthInMbps.hashCode);
    _$hash = $jc(_$hash, baselineThroughputInMBps.hashCode);
    _$hash = $jc(_$hash, baselineIops.hashCode);
    _$hash = $jc(_$hash, maximumBandwidthInMbps.hashCode);
    _$hash = $jc(_$hash, maximumThroughputInMBps.hashCode);
    _$hash = $jc(_$hash, maximumIops.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EbsOptimizedInfoBuilder
    implements Builder<EbsOptimizedInfo, EbsOptimizedInfoBuilder> {
  _$EbsOptimizedInfo? _$v;

  int? _baselineBandwidthInMbps;
  int? get baselineBandwidthInMbps => _$this._baselineBandwidthInMbps;
  set baselineBandwidthInMbps(int? baselineBandwidthInMbps) =>
      _$this._baselineBandwidthInMbps = baselineBandwidthInMbps;

  double? _baselineThroughputInMBps;
  double? get baselineThroughputInMBps => _$this._baselineThroughputInMBps;
  set baselineThroughputInMBps(double? baselineThroughputInMBps) =>
      _$this._baselineThroughputInMBps = baselineThroughputInMBps;

  int? _baselineIops;
  int? get baselineIops => _$this._baselineIops;
  set baselineIops(int? baselineIops) => _$this._baselineIops = baselineIops;

  int? _maximumBandwidthInMbps;
  int? get maximumBandwidthInMbps => _$this._maximumBandwidthInMbps;
  set maximumBandwidthInMbps(int? maximumBandwidthInMbps) =>
      _$this._maximumBandwidthInMbps = maximumBandwidthInMbps;

  double? _maximumThroughputInMBps;
  double? get maximumThroughputInMBps => _$this._maximumThroughputInMBps;
  set maximumThroughputInMBps(double? maximumThroughputInMBps) =>
      _$this._maximumThroughputInMBps = maximumThroughputInMBps;

  int? _maximumIops;
  int? get maximumIops => _$this._maximumIops;
  set maximumIops(int? maximumIops) => _$this._maximumIops = maximumIops;

  EbsOptimizedInfoBuilder();

  EbsOptimizedInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baselineBandwidthInMbps = $v.baselineBandwidthInMbps;
      _baselineThroughputInMBps = $v.baselineThroughputInMBps;
      _baselineIops = $v.baselineIops;
      _maximumBandwidthInMbps = $v.maximumBandwidthInMbps;
      _maximumThroughputInMBps = $v.maximumThroughputInMBps;
      _maximumIops = $v.maximumIops;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EbsOptimizedInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EbsOptimizedInfo;
  }

  @override
  void update(void Function(EbsOptimizedInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EbsOptimizedInfo build() => _build();

  _$EbsOptimizedInfo _build() {
    final _$result = _$v ??
        new _$EbsOptimizedInfo._(
            baselineBandwidthInMbps: baselineBandwidthInMbps,
            baselineThroughputInMBps: baselineThroughputInMBps,
            baselineIops: baselineIops,
            maximumBandwidthInMbps: maximumBandwidthInMbps,
            maximumThroughputInMBps: maximumThroughputInMBps,
            maximumIops: maximumIops);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
