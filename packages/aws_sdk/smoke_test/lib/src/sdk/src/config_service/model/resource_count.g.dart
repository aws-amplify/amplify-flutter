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
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
