// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagDescription extends TagDescription {
  @override
  final String? key;
  @override
  final String? resourceId;
  @override
  final ResourceType? resourceType;
  @override
  final String? value;

  factory _$TagDescription([void Function(TagDescriptionBuilder)? updates]) =>
      (new TagDescriptionBuilder()..update(updates))._build();

  _$TagDescription._({this.key, this.resourceId, this.resourceType, this.value})
      : super._();

  @override
  TagDescription rebuild(void Function(TagDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagDescriptionBuilder toBuilder() =>
      new TagDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagDescription &&
        key == other.key &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagDescriptionBuilder
    implements Builder<TagDescription, TagDescriptionBuilder> {
  _$TagDescription? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  ResourceType? _resourceType;
  ResourceType? get resourceType => _$this._resourceType;
  set resourceType(ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  TagDescriptionBuilder();

  TagDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagDescription;
  }

  @override
  void update(void Function(TagDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagDescription build() => _build();

  _$TagDescription _build() {
    final _$result = _$v ??
        new _$TagDescription._(
            key: key,
            resourceId: resourceId,
            resourceType: resourceType,
            value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
