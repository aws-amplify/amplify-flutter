// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_placement_groups_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePlacementGroupsResult extends DescribePlacementGroupsResult {
  @override
  final _i2.BuiltList<PlacementGroup>? placementGroups;

  factory _$DescribePlacementGroupsResult(
          [void Function(DescribePlacementGroupsResultBuilder)? updates]) =>
      (new DescribePlacementGroupsResultBuilder()..update(updates))._build();

  _$DescribePlacementGroupsResult._({this.placementGroups}) : super._();

  @override
  DescribePlacementGroupsResult rebuild(
          void Function(DescribePlacementGroupsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePlacementGroupsResultBuilder toBuilder() =>
      new DescribePlacementGroupsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePlacementGroupsResult &&
        placementGroups == other.placementGroups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placementGroups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribePlacementGroupsResultBuilder
    implements
        Builder<DescribePlacementGroupsResult,
            DescribePlacementGroupsResultBuilder> {
  _$DescribePlacementGroupsResult? _$v;

  _i2.ListBuilder<PlacementGroup>? _placementGroups;
  _i2.ListBuilder<PlacementGroup> get placementGroups =>
      _$this._placementGroups ??= new _i2.ListBuilder<PlacementGroup>();
  set placementGroups(_i2.ListBuilder<PlacementGroup>? placementGroups) =>
      _$this._placementGroups = placementGroups;

  DescribePlacementGroupsResultBuilder();

  DescribePlacementGroupsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placementGroups = $v.placementGroups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePlacementGroupsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePlacementGroupsResult;
  }

  @override
  void update(void Function(DescribePlacementGroupsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePlacementGroupsResult build() => _build();

  _$DescribePlacementGroupsResult _build() {
    _$DescribePlacementGroupsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribePlacementGroupsResult._(
              placementGroups: _placementGroups?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'placementGroups';
        _placementGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribePlacementGroupsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
