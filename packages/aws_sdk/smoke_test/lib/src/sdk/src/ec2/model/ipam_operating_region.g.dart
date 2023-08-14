// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_operating_region.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamOperatingRegion extends IpamOperatingRegion {
  @override
  final String? regionName;

  factory _$IpamOperatingRegion(
          [void Function(IpamOperatingRegionBuilder)? updates]) =>
      (new IpamOperatingRegionBuilder()..update(updates))._build();

  _$IpamOperatingRegion._({this.regionName}) : super._();

  @override
  IpamOperatingRegion rebuild(
          void Function(IpamOperatingRegionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamOperatingRegionBuilder toBuilder() =>
      new IpamOperatingRegionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamOperatingRegion && regionName == other.regionName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamOperatingRegionBuilder
    implements Builder<IpamOperatingRegion, IpamOperatingRegionBuilder> {
  _$IpamOperatingRegion? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  IpamOperatingRegionBuilder();

  IpamOperatingRegionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamOperatingRegion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamOperatingRegion;
  }

  @override
  void update(void Function(IpamOperatingRegionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamOperatingRegion build() => _build();

  _$IpamOperatingRegion _build() {
    final _$result = _$v ?? new _$IpamOperatingRegion._(regionName: regionName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
