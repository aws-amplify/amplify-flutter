// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpu_device_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GpuDeviceInfo extends GpuDeviceInfo {
  @override
  final String? name;
  @override
  final String? manufacturer;
  @override
  final int? count;
  @override
  final GpuDeviceMemoryInfo? memoryInfo;

  factory _$GpuDeviceInfo([void Function(GpuDeviceInfoBuilder)? updates]) =>
      (new GpuDeviceInfoBuilder()..update(updates))._build();

  _$GpuDeviceInfo._({this.name, this.manufacturer, this.count, this.memoryInfo})
      : super._();

  @override
  GpuDeviceInfo rebuild(void Function(GpuDeviceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpuDeviceInfoBuilder toBuilder() => new GpuDeviceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpuDeviceInfo &&
        name == other.name &&
        manufacturer == other.manufacturer &&
        count == other.count &&
        memoryInfo == other.memoryInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, manufacturer.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, memoryInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GpuDeviceInfoBuilder
    implements Builder<GpuDeviceInfo, GpuDeviceInfoBuilder> {
  _$GpuDeviceInfo? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _manufacturer;
  String? get manufacturer => _$this._manufacturer;
  set manufacturer(String? manufacturer) => _$this._manufacturer = manufacturer;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  GpuDeviceMemoryInfoBuilder? _memoryInfo;
  GpuDeviceMemoryInfoBuilder get memoryInfo =>
      _$this._memoryInfo ??= new GpuDeviceMemoryInfoBuilder();
  set memoryInfo(GpuDeviceMemoryInfoBuilder? memoryInfo) =>
      _$this._memoryInfo = memoryInfo;

  GpuDeviceInfoBuilder();

  GpuDeviceInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _manufacturer = $v.manufacturer;
      _count = $v.count;
      _memoryInfo = $v.memoryInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpuDeviceInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpuDeviceInfo;
  }

  @override
  void update(void Function(GpuDeviceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpuDeviceInfo build() => _build();

  _$GpuDeviceInfo _build() {
    _$GpuDeviceInfo _$result;
    try {
      _$result = _$v ??
          new _$GpuDeviceInfo._(
              name: name,
              manufacturer: manufacturer,
              count: count,
              memoryInfo: _memoryInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'memoryInfo';
        _memoryInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GpuDeviceInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
