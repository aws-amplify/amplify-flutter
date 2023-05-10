// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.module_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModuleInfo extends ModuleInfo {
  @override
  final String? typeHierarchy;
  @override
  final String? logicalIdHierarchy;

  factory _$ModuleInfo([void Function(ModuleInfoBuilder)? updates]) =>
      (new ModuleInfoBuilder()..update(updates))._build();

  _$ModuleInfo._({this.typeHierarchy, this.logicalIdHierarchy}) : super._();

  @override
  ModuleInfo rebuild(void Function(ModuleInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModuleInfoBuilder toBuilder() => new ModuleInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModuleInfo &&
        typeHierarchy == other.typeHierarchy &&
        logicalIdHierarchy == other.logicalIdHierarchy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeHierarchy.hashCode);
    _$hash = $jc(_$hash, logicalIdHierarchy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModuleInfoBuilder implements Builder<ModuleInfo, ModuleInfoBuilder> {
  _$ModuleInfo? _$v;

  String? _typeHierarchy;
  String? get typeHierarchy => _$this._typeHierarchy;
  set typeHierarchy(String? typeHierarchy) =>
      _$this._typeHierarchy = typeHierarchy;

  String? _logicalIdHierarchy;
  String? get logicalIdHierarchy => _$this._logicalIdHierarchy;
  set logicalIdHierarchy(String? logicalIdHierarchy) =>
      _$this._logicalIdHierarchy = logicalIdHierarchy;

  ModuleInfoBuilder() {
    ModuleInfo._init(this);
  }

  ModuleInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeHierarchy = $v.typeHierarchy;
      _logicalIdHierarchy = $v.logicalIdHierarchy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModuleInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModuleInfo;
  }

  @override
  void update(void Function(ModuleInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModuleInfo build() => _build();

  _$ModuleInfo _build() {
    final _$result = _$v ??
        new _$ModuleInfo._(
            typeHierarchy: typeHierarchy,
            logicalIdHierarchy: logicalIdHierarchy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
