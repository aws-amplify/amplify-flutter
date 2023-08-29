// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_ipam_operating_region.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddIpamOperatingRegion extends AddIpamOperatingRegion {
  @override
  final String? regionName;

  factory _$AddIpamOperatingRegion(
          [void Function(AddIpamOperatingRegionBuilder)? updates]) =>
      (new AddIpamOperatingRegionBuilder()..update(updates))._build();

  _$AddIpamOperatingRegion._({this.regionName}) : super._();

  @override
  AddIpamOperatingRegion rebuild(
          void Function(AddIpamOperatingRegionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddIpamOperatingRegionBuilder toBuilder() =>
      new AddIpamOperatingRegionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddIpamOperatingRegion && regionName == other.regionName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AddIpamOperatingRegionBuilder
    implements Builder<AddIpamOperatingRegion, AddIpamOperatingRegionBuilder> {
  _$AddIpamOperatingRegion? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  AddIpamOperatingRegionBuilder();

  AddIpamOperatingRegionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddIpamOperatingRegion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddIpamOperatingRegion;
  }

  @override
  void update(void Function(AddIpamOperatingRegionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddIpamOperatingRegion build() => _build();

  _$AddIpamOperatingRegion _build() {
    final _$result =
        _$v ?? new _$AddIpamOperatingRegion._(regionName: regionName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
