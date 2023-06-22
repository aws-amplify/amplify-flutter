// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exclusion_by_resource_types.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExclusionByResourceTypes extends ExclusionByResourceTypes {
  @override
  final _i3.BuiltList<_i2.ResourceType>? resourceTypes;

  factory _$ExclusionByResourceTypes(
          [void Function(ExclusionByResourceTypesBuilder)? updates]) =>
      (new ExclusionByResourceTypesBuilder()..update(updates))._build();

  _$ExclusionByResourceTypes._({this.resourceTypes}) : super._();

  @override
  ExclusionByResourceTypes rebuild(
          void Function(ExclusionByResourceTypesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExclusionByResourceTypesBuilder toBuilder() =>
      new ExclusionByResourceTypesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExclusionByResourceTypes &&
        resourceTypes == other.resourceTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExclusionByResourceTypesBuilder
    implements
        Builder<ExclusionByResourceTypes, ExclusionByResourceTypesBuilder> {
  _$ExclusionByResourceTypes? _$v;

  _i3.ListBuilder<_i2.ResourceType>? _resourceTypes;
  _i3.ListBuilder<_i2.ResourceType> get resourceTypes =>
      _$this._resourceTypes ??= new _i3.ListBuilder<_i2.ResourceType>();
  set resourceTypes(_i3.ListBuilder<_i2.ResourceType>? resourceTypes) =>
      _$this._resourceTypes = resourceTypes;

  ExclusionByResourceTypesBuilder() {
    ExclusionByResourceTypes._init(this);
  }

  ExclusionByResourceTypesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExclusionByResourceTypes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExclusionByResourceTypes;
  }

  @override
  void update(void Function(ExclusionByResourceTypesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExclusionByResourceTypes build() => _build();

  _$ExclusionByResourceTypes _build() {
    _$ExclusionByResourceTypes _$result;
    try {
      _$result = _$v ??
          new _$ExclusionByResourceTypes._(
              resourceTypes: _resourceTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceTypes';
        _resourceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExclusionByResourceTypes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
