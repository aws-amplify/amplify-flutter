// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_placement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotPlacement extends SpotPlacement {
  @override
  final String? availabilityZone;
  @override
  final String? groupName;
  @override
  final Tenancy? tenancy;

  factory _$SpotPlacement([void Function(SpotPlacementBuilder)? updates]) =>
      (new SpotPlacementBuilder()..update(updates))._build();

  _$SpotPlacement._({this.availabilityZone, this.groupName, this.tenancy})
      : super._();

  @override
  SpotPlacement rebuild(void Function(SpotPlacementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotPlacementBuilder toBuilder() => new SpotPlacementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotPlacement &&
        availabilityZone == other.availabilityZone &&
        groupName == other.groupName &&
        tenancy == other.tenancy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, tenancy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotPlacementBuilder
    implements Builder<SpotPlacement, SpotPlacementBuilder> {
  _$SpotPlacement? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  Tenancy? _tenancy;
  Tenancy? get tenancy => _$this._tenancy;
  set tenancy(Tenancy? tenancy) => _$this._tenancy = tenancy;

  SpotPlacementBuilder();

  SpotPlacementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _groupName = $v.groupName;
      _tenancy = $v.tenancy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotPlacement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotPlacement;
  }

  @override
  void update(void Function(SpotPlacementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotPlacement build() => _build();

  _$SpotPlacement _build() {
    final _$result = _$v ??
        new _$SpotPlacement._(
            availabilityZone: availabilityZone,
            groupName: groupName,
            tenancy: tenancy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
