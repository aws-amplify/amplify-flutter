// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.type_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeFilters extends TypeFilters {
  @override
  final _i2.Category? category;
  @override
  final String? publisherId;
  @override
  final String? typeNamePrefix;

  factory _$TypeFilters([void Function(TypeFiltersBuilder)? updates]) =>
      (new TypeFiltersBuilder()..update(updates))._build();

  _$TypeFilters._({this.category, this.publisherId, this.typeNamePrefix})
      : super._();

  @override
  TypeFilters rebuild(void Function(TypeFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeFiltersBuilder toBuilder() => new TypeFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeFilters &&
        category == other.category &&
        publisherId == other.publisherId &&
        typeNamePrefix == other.typeNamePrefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, publisherId.hashCode);
    _$hash = $jc(_$hash, typeNamePrefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TypeFiltersBuilder implements Builder<TypeFilters, TypeFiltersBuilder> {
  _$TypeFilters? _$v;

  _i2.Category? _category;
  _i2.Category? get category => _$this._category;
  set category(_i2.Category? category) => _$this._category = category;

  String? _publisherId;
  String? get publisherId => _$this._publisherId;
  set publisherId(String? publisherId) => _$this._publisherId = publisherId;

  String? _typeNamePrefix;
  String? get typeNamePrefix => _$this._typeNamePrefix;
  set typeNamePrefix(String? typeNamePrefix) =>
      _$this._typeNamePrefix = typeNamePrefix;

  TypeFiltersBuilder() {
    TypeFilters._init(this);
  }

  TypeFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _publisherId = $v.publisherId;
      _typeNamePrefix = $v.typeNamePrefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeFilters;
  }

  @override
  void update(void Function(TypeFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeFilters build() => _build();

  _$TypeFilters _build() {
    final _$result = _$v ??
        new _$TypeFilters._(
            category: category,
            publisherId: publisherId,
            typeNamePrefix: typeNamePrefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
