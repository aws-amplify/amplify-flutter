// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_placement_group_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePlacementGroupResult extends CreatePlacementGroupResult {
  @override
  final PlacementGroup? placementGroup;

  factory _$CreatePlacementGroupResult(
          [void Function(CreatePlacementGroupResultBuilder)? updates]) =>
      (new CreatePlacementGroupResultBuilder()..update(updates))._build();

  _$CreatePlacementGroupResult._({this.placementGroup}) : super._();

  @override
  CreatePlacementGroupResult rebuild(
          void Function(CreatePlacementGroupResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePlacementGroupResultBuilder toBuilder() =>
      new CreatePlacementGroupResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePlacementGroupResult &&
        placementGroup == other.placementGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placementGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreatePlacementGroupResultBuilder
    implements
        Builder<CreatePlacementGroupResult, CreatePlacementGroupResultBuilder> {
  _$CreatePlacementGroupResult? _$v;

  PlacementGroupBuilder? _placementGroup;
  PlacementGroupBuilder get placementGroup =>
      _$this._placementGroup ??= new PlacementGroupBuilder();
  set placementGroup(PlacementGroupBuilder? placementGroup) =>
      _$this._placementGroup = placementGroup;

  CreatePlacementGroupResultBuilder();

  CreatePlacementGroupResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placementGroup = $v.placementGroup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePlacementGroupResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePlacementGroupResult;
  }

  @override
  void update(void Function(CreatePlacementGroupResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePlacementGroupResult build() => _build();

  _$CreatePlacementGroupResult _build() {
    _$CreatePlacementGroupResult _$result;
    try {
      _$result = _$v ??
          new _$CreatePlacementGroupResult._(
              placementGroup: _placementGroup?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'placementGroup';
        _placementGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePlacementGroupResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
