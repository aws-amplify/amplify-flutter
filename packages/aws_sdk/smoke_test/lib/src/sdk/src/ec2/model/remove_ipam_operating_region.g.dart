// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_ipam_operating_region.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoveIpamOperatingRegion extends RemoveIpamOperatingRegion {
  @override
  final String? regionName;

  factory _$RemoveIpamOperatingRegion(
          [void Function(RemoveIpamOperatingRegionBuilder)? updates]) =>
      (new RemoveIpamOperatingRegionBuilder()..update(updates))._build();

  _$RemoveIpamOperatingRegion._({this.regionName}) : super._();

  @override
  RemoveIpamOperatingRegion rebuild(
          void Function(RemoveIpamOperatingRegionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveIpamOperatingRegionBuilder toBuilder() =>
      new RemoveIpamOperatingRegionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveIpamOperatingRegion && regionName == other.regionName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemoveIpamOperatingRegionBuilder
    implements
        Builder<RemoveIpamOperatingRegion, RemoveIpamOperatingRegionBuilder> {
  _$RemoveIpamOperatingRegion? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  RemoveIpamOperatingRegionBuilder();

  RemoveIpamOperatingRegionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveIpamOperatingRegion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveIpamOperatingRegion;
  }

  @override
  void update(void Function(RemoveIpamOperatingRegionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoveIpamOperatingRegion build() => _build();

  _$RemoveIpamOperatingRegion _build() {
    final _$result =
        _$v ?? new _$RemoveIpamOperatingRegion._(regionName: regionName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
