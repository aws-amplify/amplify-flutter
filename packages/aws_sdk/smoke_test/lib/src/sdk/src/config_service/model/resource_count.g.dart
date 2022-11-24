// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_count;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceCount extends ResourceCount {
  @override
  final _i2.Int64? count;
  @override
  final _i3.ResourceType? resourceType;

  factory _$ResourceCount([void Function(ResourceCountBuilder)? updates]) =>
      (new ResourceCountBuilder()..update(updates))._build();

  _$ResourceCount._({this.count, this.resourceType}) : super._();

  @override
  ResourceCount rebuild(void Function(ResourceCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceCountBuilder toBuilder() => new ResourceCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceCount &&
        count == other.count &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), resourceType.hashCode));
  }
}

class ResourceCountBuilder
    implements Builder<ResourceCount, ResourceCountBuilder> {
  _$ResourceCount? _$v;

  _i2.Int64? _count;
  _i2.Int64? get count => _$this._count;
  set count(_i2.Int64? count) => _$this._count = count;

  _i3.ResourceType? _resourceType;
  _i3.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i3.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  ResourceCountBuilder() {
    ResourceCount._init(this);
  }

  ResourceCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceCount;
  }

  @override
  void update(void Function(ResourceCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceCount build() => _build();

  _$ResourceCount _build() {
    final _$result =
        _$v ?? new _$ResourceCount._(count: count, resourceType: resourceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
