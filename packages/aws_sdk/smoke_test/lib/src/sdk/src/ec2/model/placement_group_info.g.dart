// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placement_group_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlacementGroupInfo extends PlacementGroupInfo {
  @override
  final _i2.BuiltList<PlacementGroupStrategy>? supportedStrategies;

  factory _$PlacementGroupInfo(
          [void Function(PlacementGroupInfoBuilder)? updates]) =>
      (new PlacementGroupInfoBuilder()..update(updates))._build();

  _$PlacementGroupInfo._({this.supportedStrategies}) : super._();

  @override
  PlacementGroupInfo rebuild(
          void Function(PlacementGroupInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlacementGroupInfoBuilder toBuilder() =>
      new PlacementGroupInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlacementGroupInfo &&
        supportedStrategies == other.supportedStrategies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, supportedStrategies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PlacementGroupInfoBuilder
    implements Builder<PlacementGroupInfo, PlacementGroupInfoBuilder> {
  _$PlacementGroupInfo? _$v;

  _i2.ListBuilder<PlacementGroupStrategy>? _supportedStrategies;
  _i2.ListBuilder<PlacementGroupStrategy> get supportedStrategies =>
      _$this._supportedStrategies ??=
          new _i2.ListBuilder<PlacementGroupStrategy>();
  set supportedStrategies(
          _i2.ListBuilder<PlacementGroupStrategy>? supportedStrategies) =>
      _$this._supportedStrategies = supportedStrategies;

  PlacementGroupInfoBuilder();

  PlacementGroupInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _supportedStrategies = $v.supportedStrategies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlacementGroupInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlacementGroupInfo;
  }

  @override
  void update(void Function(PlacementGroupInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlacementGroupInfo build() => _build();

  _$PlacementGroupInfo _build() {
    _$PlacementGroupInfo _$result;
    try {
      _$result = _$v ??
          new _$PlacementGroupInfo._(
              supportedStrategies: _supportedStrategies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportedStrategies';
        _supportedStrategies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlacementGroupInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
