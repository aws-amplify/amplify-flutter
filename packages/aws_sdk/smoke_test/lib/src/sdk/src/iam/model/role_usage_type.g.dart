// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.role_usage_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleUsageType extends RoleUsageType {
  @override
  final String? region;
  @override
  final _i2.BuiltList<String>? resources;

  factory _$RoleUsageType([void Function(RoleUsageTypeBuilder)? updates]) =>
      (new RoleUsageTypeBuilder()..update(updates))._build();

  _$RoleUsageType._({this.region, this.resources}) : super._();

  @override
  RoleUsageType rebuild(void Function(RoleUsageTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleUsageTypeBuilder toBuilder() => new RoleUsageTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleUsageType &&
        region == other.region &&
        resources == other.resources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RoleUsageTypeBuilder
    implements Builder<RoleUsageType, RoleUsageTypeBuilder> {
  _$RoleUsageType? _$v;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  _i2.ListBuilder<String>? _resources;
  _i2.ListBuilder<String> get resources =>
      _$this._resources ??= new _i2.ListBuilder<String>();
  set resources(_i2.ListBuilder<String>? resources) =>
      _$this._resources = resources;

  RoleUsageTypeBuilder() {
    RoleUsageType._init(this);
  }

  RoleUsageTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _region = $v.region;
      _resources = $v.resources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleUsageType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RoleUsageType;
  }

  @override
  void update(void Function(RoleUsageTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleUsageType build() => _build();

  _$RoleUsageType _build() {
    _$RoleUsageType _$result;
    try {
      _$result = _$v ??
          new _$RoleUsageType._(region: region, resources: _resources?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resources';
        _resources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RoleUsageType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
