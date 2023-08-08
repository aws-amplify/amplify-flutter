// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_count.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceCount extends ResourceCount {
  @override
  final _i2.ResourceType? resourceType;
  @override
  final _i3.Int64 count;

  factory _$ResourceCount([void Function(ResourceCountBuilder)? updates]) =>
      (new ResourceCountBuilder()..update(updates))._build();

  _$ResourceCount._({this.resourceType, required this.count}) : super._() {
    BuiltValueNullFieldError.checkNotNull(count, r'ResourceCount', 'count');
  }

  @override
  ResourceCount rebuild(void Function(ResourceCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceCountBuilder toBuilder() => new ResourceCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceCount &&
        resourceType == other.resourceType &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceCountBuilder
    implements Builder<ResourceCount, ResourceCountBuilder> {
  _$ResourceCount? _$v;

  _i2.ResourceType? _resourceType;
  _i2.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i2.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i3.Int64? _count;
  _i3.Int64? get count => _$this._count;
  set count(_i3.Int64? count) => _$this._count = count;

  ResourceCountBuilder() {
    ResourceCount._init(this);
  }

  ResourceCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _count = $v.count;
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
    final _$result = _$v ??
        new _$ResourceCount._(
            resourceType: resourceType,
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'ResourceCount', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
