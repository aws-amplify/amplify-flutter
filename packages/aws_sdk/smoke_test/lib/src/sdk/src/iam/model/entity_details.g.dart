// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.entity_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityDetails extends EntityDetails {
  @override
  final _i2.EntityInfo entityInfo;
  @override
  final DateTime? lastAuthenticated;

  factory _$EntityDetails([void Function(EntityDetailsBuilder)? updates]) =>
      (new EntityDetailsBuilder()..update(updates))._build();

  _$EntityDetails._({required this.entityInfo, this.lastAuthenticated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        entityInfo, r'EntityDetails', 'entityInfo');
  }

  @override
  EntityDetails rebuild(void Function(EntityDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityDetailsBuilder toBuilder() => new EntityDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityDetails &&
        entityInfo == other.entityInfo &&
        lastAuthenticated == other.lastAuthenticated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityInfo.hashCode);
    _$hash = $jc(_$hash, lastAuthenticated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EntityDetailsBuilder
    implements Builder<EntityDetails, EntityDetailsBuilder> {
  _$EntityDetails? _$v;

  _i2.EntityInfoBuilder? _entityInfo;
  _i2.EntityInfoBuilder get entityInfo =>
      _$this._entityInfo ??= new _i2.EntityInfoBuilder();
  set entityInfo(_i2.EntityInfoBuilder? entityInfo) =>
      _$this._entityInfo = entityInfo;

  DateTime? _lastAuthenticated;
  DateTime? get lastAuthenticated => _$this._lastAuthenticated;
  set lastAuthenticated(DateTime? lastAuthenticated) =>
      _$this._lastAuthenticated = lastAuthenticated;

  EntityDetailsBuilder() {
    EntityDetails._init(this);
  }

  EntityDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityInfo = $v.entityInfo.toBuilder();
      _lastAuthenticated = $v.lastAuthenticated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntityDetails;
  }

  @override
  void update(void Function(EntityDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityDetails build() => _build();

  _$EntityDetails _build() {
    _$EntityDetails _$result;
    try {
      _$result = _$v ??
          new _$EntityDetails._(
              entityInfo: entityInfo.build(),
              lastAuthenticated: lastAuthenticated);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityInfo';
        entityInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EntityDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
