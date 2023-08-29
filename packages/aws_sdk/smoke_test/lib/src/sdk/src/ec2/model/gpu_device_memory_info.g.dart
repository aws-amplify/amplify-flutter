// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpu_device_memory_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GpuDeviceMemoryInfo extends GpuDeviceMemoryInfo {
  @override
  final int? sizeInMib;

  factory _$GpuDeviceMemoryInfo(
          [void Function(GpuDeviceMemoryInfoBuilder)? updates]) =>
      (new GpuDeviceMemoryInfoBuilder()..update(updates))._build();

  _$GpuDeviceMemoryInfo._({this.sizeInMib}) : super._();

  @override
  GpuDeviceMemoryInfo rebuild(
          void Function(GpuDeviceMemoryInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpuDeviceMemoryInfoBuilder toBuilder() =>
      new GpuDeviceMemoryInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpuDeviceMemoryInfo && sizeInMib == other.sizeInMib;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sizeInMib.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GpuDeviceMemoryInfoBuilder
    implements Builder<GpuDeviceMemoryInfo, GpuDeviceMemoryInfoBuilder> {
  _$GpuDeviceMemoryInfo? _$v;

  int? _sizeInMib;
  int? get sizeInMib => _$this._sizeInMib;
  set sizeInMib(int? sizeInMib) => _$this._sizeInMib = sizeInMib;

  GpuDeviceMemoryInfoBuilder();

  GpuDeviceMemoryInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sizeInMib = $v.sizeInMib;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpuDeviceMemoryInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpuDeviceMemoryInfo;
  }

  @override
  void update(void Function(GpuDeviceMemoryInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpuDeviceMemoryInfo build() => _build();

  _$GpuDeviceMemoryInfo _build() {
    final _$result = _$v ?? new _$GpuDeviceMemoryInfo._(sizeInMib: sizeInMib);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
