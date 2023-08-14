// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fpga_device_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FpgaDeviceInfo extends FpgaDeviceInfo {
  @override
  final String? name;
  @override
  final String? manufacturer;
  @override
  final int? count;
  @override
  final FpgaDeviceMemoryInfo? memoryInfo;

  factory _$FpgaDeviceInfo([void Function(FpgaDeviceInfoBuilder)? updates]) =>
      (new FpgaDeviceInfoBuilder()..update(updates))._build();

  _$FpgaDeviceInfo._(
      {this.name, this.manufacturer, this.count, this.memoryInfo})
      : super._();

  @override
  FpgaDeviceInfo rebuild(void Function(FpgaDeviceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FpgaDeviceInfoBuilder toBuilder() =>
      new FpgaDeviceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FpgaDeviceInfo &&
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

class FpgaDeviceInfoBuilder
    implements Builder<FpgaDeviceInfo, FpgaDeviceInfoBuilder> {
  _$FpgaDeviceInfo? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _manufacturer;
  String? get manufacturer => _$this._manufacturer;
  set manufacturer(String? manufacturer) => _$this._manufacturer = manufacturer;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  FpgaDeviceMemoryInfoBuilder? _memoryInfo;
  FpgaDeviceMemoryInfoBuilder get memoryInfo =>
      _$this._memoryInfo ??= new FpgaDeviceMemoryInfoBuilder();
  set memoryInfo(FpgaDeviceMemoryInfoBuilder? memoryInfo) =>
      _$this._memoryInfo = memoryInfo;

  FpgaDeviceInfoBuilder();

  FpgaDeviceInfoBuilder get _$this {
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
  void replace(FpgaDeviceInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FpgaDeviceInfo;
  }

  @override
  void update(void Function(FpgaDeviceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FpgaDeviceInfo build() => _build();

  _$FpgaDeviceInfo _build() {
    _$FpgaDeviceInfo _$result;
    try {
      _$result = _$v ??
          new _$FpgaDeviceInfo._(
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
            r'FpgaDeviceInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
