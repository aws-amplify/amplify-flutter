// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_fleet_tag_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotFleetTagSpecification extends SpotFleetTagSpecification {
  @override
  final ResourceType? resourceType;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$SpotFleetTagSpecification(
          [void Function(SpotFleetTagSpecificationBuilder)? updates]) =>
      (new SpotFleetTagSpecificationBuilder()..update(updates))._build();

  _$SpotFleetTagSpecification._({this.resourceType, this.tags}) : super._();

  @override
  SpotFleetTagSpecification rebuild(
          void Function(SpotFleetTagSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotFleetTagSpecificationBuilder toBuilder() =>
      new SpotFleetTagSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotFleetTagSpecification &&
        resourceType == other.resourceType &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotFleetTagSpecificationBuilder
    implements
        Builder<SpotFleetTagSpecification, SpotFleetTagSpecificationBuilder> {
  _$SpotFleetTagSpecification? _$v;

  ResourceType? _resourceType;
  ResourceType? get resourceType => _$this._resourceType;
  set resourceType(ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  SpotFleetTagSpecificationBuilder();

  SpotFleetTagSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotFleetTagSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotFleetTagSpecification;
  }

  @override
  void update(void Function(SpotFleetTagSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotFleetTagSpecification build() => _build();

  _$SpotFleetTagSpecification _build() {
    _$SpotFleetTagSpecification _$result;
    try {
      _$result = _$v ??
          new _$SpotFleetTagSpecification._(
              resourceType: resourceType, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotFleetTagSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
