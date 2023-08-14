// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fpga_device_memory_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FpgaDeviceMemoryInfo extends FpgaDeviceMemoryInfo {
  @override
  final int? sizeInMib;

  factory _$FpgaDeviceMemoryInfo(
          [void Function(FpgaDeviceMemoryInfoBuilder)? updates]) =>
      (new FpgaDeviceMemoryInfoBuilder()..update(updates))._build();

  _$FpgaDeviceMemoryInfo._({this.sizeInMib}) : super._();

  @override
  FpgaDeviceMemoryInfo rebuild(
          void Function(FpgaDeviceMemoryInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FpgaDeviceMemoryInfoBuilder toBuilder() =>
      new FpgaDeviceMemoryInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FpgaDeviceMemoryInfo && sizeInMib == other.sizeInMib;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sizeInMib.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FpgaDeviceMemoryInfoBuilder
    implements Builder<FpgaDeviceMemoryInfo, FpgaDeviceMemoryInfoBuilder> {
  _$FpgaDeviceMemoryInfo? _$v;

  int? _sizeInMib;
  int? get sizeInMib => _$this._sizeInMib;
  set sizeInMib(int? sizeInMib) => _$this._sizeInMib = sizeInMib;

  FpgaDeviceMemoryInfoBuilder();

  FpgaDeviceMemoryInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sizeInMib = $v.sizeInMib;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FpgaDeviceMemoryInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FpgaDeviceMemoryInfo;
  }

  @override
  void update(void Function(FpgaDeviceMemoryInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FpgaDeviceMemoryInfo build() => _build();

  _$FpgaDeviceMemoryInfo _build() {
    final _$result = _$v ?? new _$FpgaDeviceMemoryInfo._(sizeInMib: sizeInMib);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
