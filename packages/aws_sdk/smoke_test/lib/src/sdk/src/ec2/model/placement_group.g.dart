// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placement_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlacementGroup extends PlacementGroup {
  @override
  final String? groupName;
  @override
  final PlacementGroupState? state;
  @override
  final PlacementStrategy? strategy;
  @override
  final int partitionCount;
  @override
  final String? groupId;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? groupArn;
  @override
  final SpreadLevel? spreadLevel;

  factory _$PlacementGroup([void Function(PlacementGroupBuilder)? updates]) =>
      (new PlacementGroupBuilder()..update(updates))._build();

  _$PlacementGroup._(
      {this.groupName,
      this.state,
      this.strategy,
      required this.partitionCount,
      this.groupId,
      this.tags,
      this.groupArn,
      this.spreadLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        partitionCount, r'PlacementGroup', 'partitionCount');
  }

  @override
  PlacementGroup rebuild(void Function(PlacementGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlacementGroupBuilder toBuilder() =>
      new PlacementGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlacementGroup &&
        groupName == other.groupName &&
        state == other.state &&
        strategy == other.strategy &&
        partitionCount == other.partitionCount &&
        groupId == other.groupId &&
        tags == other.tags &&
        groupArn == other.groupArn &&
        spreadLevel == other.spreadLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, strategy.hashCode);
    _$hash = $jc(_$hash, partitionCount.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, groupArn.hashCode);
    _$hash = $jc(_$hash, spreadLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PlacementGroupBuilder
    implements Builder<PlacementGroup, PlacementGroupBuilder> {
  _$PlacementGroup? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  PlacementGroupState? _state;
  PlacementGroupState? get state => _$this._state;
  set state(PlacementGroupState? state) => _$this._state = state;

  PlacementStrategy? _strategy;
  PlacementStrategy? get strategy => _$this._strategy;
  set strategy(PlacementStrategy? strategy) => _$this._strategy = strategy;

  int? _partitionCount;
  int? get partitionCount => _$this._partitionCount;
  set partitionCount(int? partitionCount) =>
      _$this._partitionCount = partitionCount;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _groupArn;
  String? get groupArn => _$this._groupArn;
  set groupArn(String? groupArn) => _$this._groupArn = groupArn;

  SpreadLevel? _spreadLevel;
  SpreadLevel? get spreadLevel => _$this._spreadLevel;
  set spreadLevel(SpreadLevel? spreadLevel) =>
      _$this._spreadLevel = spreadLevel;

  PlacementGroupBuilder() {
    PlacementGroup._init(this);
  }

  PlacementGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _state = $v.state;
      _strategy = $v.strategy;
      _partitionCount = $v.partitionCount;
      _groupId = $v.groupId;
      _tags = $v.tags?.toBuilder();
      _groupArn = $v.groupArn;
      _spreadLevel = $v.spreadLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlacementGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlacementGroup;
  }

  @override
  void update(void Function(PlacementGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlacementGroup build() => _build();

  _$PlacementGroup _build() {
    _$PlacementGroup _$result;
    try {
      _$result = _$v ??
          new _$PlacementGroup._(
              groupName: groupName,
              state: state,
              strategy: strategy,
              partitionCount: BuiltValueNullFieldError.checkNotNull(
                  partitionCount, r'PlacementGroup', 'partitionCount'),
              groupId: groupId,
              tags: _tags?.build(),
              groupArn: groupArn,
              spreadLevel: spreadLevel);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlacementGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
