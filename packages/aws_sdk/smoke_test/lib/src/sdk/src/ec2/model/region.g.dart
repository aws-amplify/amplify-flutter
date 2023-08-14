// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Region extends Region {
  @override
  final String? endpoint;
  @override
  final String? regionName;
  @override
  final String? optInStatus;

  factory _$Region([void Function(RegionBuilder)? updates]) =>
      (new RegionBuilder()..update(updates))._build();

  _$Region._({this.endpoint, this.regionName, this.optInStatus}) : super._();

  @override
  Region rebuild(void Function(RegionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionBuilder toBuilder() => new RegionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Region &&
        endpoint == other.endpoint &&
        regionName == other.regionName &&
        optInStatus == other.optInStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jc(_$hash, optInStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegionBuilder implements Builder<Region, RegionBuilder> {
  _$Region? _$v;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _optInStatus;
  String? get optInStatus => _$this._optInStatus;
  set optInStatus(String? optInStatus) => _$this._optInStatus = optInStatus;

  RegionBuilder();

  RegionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _regionName = $v.regionName;
      _optInStatus = $v.optInStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Region other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Region;
  }

  @override
  void update(void Function(RegionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Region build() => _build();

  _$Region _build() {
    final _$result = _$v ??
        new _$Region._(
            endpoint: endpoint,
            regionName: regionName,
            optInStatus: optInStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
