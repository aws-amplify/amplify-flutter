// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpu_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GpuInfo extends GpuInfo {
  @override
  final _i2.BuiltList<GpuDeviceInfo>? gpus;
  @override
  final int? totalGpuMemoryInMib;

  factory _$GpuInfo([void Function(GpuInfoBuilder)? updates]) =>
      (new GpuInfoBuilder()..update(updates))._build();

  _$GpuInfo._({this.gpus, this.totalGpuMemoryInMib}) : super._();

  @override
  GpuInfo rebuild(void Function(GpuInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpuInfoBuilder toBuilder() => new GpuInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpuInfo &&
        gpus == other.gpus &&
        totalGpuMemoryInMib == other.totalGpuMemoryInMib;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gpus.hashCode);
    _$hash = $jc(_$hash, totalGpuMemoryInMib.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GpuInfoBuilder implements Builder<GpuInfo, GpuInfoBuilder> {
  _$GpuInfo? _$v;

  _i2.ListBuilder<GpuDeviceInfo>? _gpus;
  _i2.ListBuilder<GpuDeviceInfo> get gpus =>
      _$this._gpus ??= new _i2.ListBuilder<GpuDeviceInfo>();
  set gpus(_i2.ListBuilder<GpuDeviceInfo>? gpus) => _$this._gpus = gpus;

  int? _totalGpuMemoryInMib;
  int? get totalGpuMemoryInMib => _$this._totalGpuMemoryInMib;
  set totalGpuMemoryInMib(int? totalGpuMemoryInMib) =>
      _$this._totalGpuMemoryInMib = totalGpuMemoryInMib;

  GpuInfoBuilder();

  GpuInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gpus = $v.gpus?.toBuilder();
      _totalGpuMemoryInMib = $v.totalGpuMemoryInMib;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpuInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpuInfo;
  }

  @override
  void update(void Function(GpuInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpuInfo build() => _build();

  _$GpuInfo _build() {
    _$GpuInfo _$result;
    try {
      _$result = _$v ??
          new _$GpuInfo._(
              gpus: _gpus?.build(), totalGpuMemoryInMib: totalGpuMemoryInMib);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gpus';
        _gpus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GpuInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
