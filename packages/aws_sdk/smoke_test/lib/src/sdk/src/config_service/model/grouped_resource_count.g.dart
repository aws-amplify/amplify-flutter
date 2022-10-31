// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.grouped_resource_count;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupedResourceCount extends GroupedResourceCount {
  @override
  final String groupName;
  @override
  final _i2.Int64 resourceCount;

  factory _$GroupedResourceCount(
          [void Function(GroupedResourceCountBuilder)? updates]) =>
      (new GroupedResourceCountBuilder()..update(updates))._build();

  _$GroupedResourceCount._(
      {required this.groupName, required this.resourceCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'GroupedResourceCount', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        resourceCount, r'GroupedResourceCount', 'resourceCount');
  }

  @override
  GroupedResourceCount rebuild(
          void Function(GroupedResourceCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupedResourceCountBuilder toBuilder() =>
      new GroupedResourceCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupedResourceCount &&
        groupName == other.groupName &&
        resourceCount == other.resourceCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, groupName.hashCode), resourceCount.hashCode));
  }
}

class GroupedResourceCountBuilder
    implements Builder<GroupedResourceCount, GroupedResourceCountBuilder> {
  _$GroupedResourceCount? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  _i2.Int64? _resourceCount;
  _i2.Int64? get resourceCount => _$this._resourceCount;
  set resourceCount(_i2.Int64? resourceCount) =>
      _$this._resourceCount = resourceCount;

  GroupedResourceCountBuilder() {
    GroupedResourceCount._init(this);
  }

  GroupedResourceCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _resourceCount = $v.resourceCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupedResourceCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupedResourceCount;
  }

  @override
  void update(void Function(GroupedResourceCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupedResourceCount build() => _build();

  _$GroupedResourceCount _build() {
    final _$result = _$v ??
        new _$GroupedResourceCount._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'GroupedResourceCount', 'groupName'),
            resourceCount: BuiltValueNullFieldError.checkNotNull(
                resourceCount, r'GroupedResourceCount', 'resourceCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
