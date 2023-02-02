// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_table;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalTable extends GlobalTable {
  @override
  final String? globalTableName;
  @override
  final _i3.BuiltList<_i2.Replica>? replicationGroup;

  factory _$GlobalTable([void Function(GlobalTableBuilder)? updates]) =>
      (new GlobalTableBuilder()..update(updates))._build();

  _$GlobalTable._({this.globalTableName, this.replicationGroup}) : super._();

  @override
  GlobalTable rebuild(void Function(GlobalTableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalTableBuilder toBuilder() => new GlobalTableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalTable &&
        globalTableName == other.globalTableName &&
        replicationGroup == other.replicationGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalTableName.hashCode);
    _$hash = $jc(_$hash, replicationGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GlobalTableBuilder implements Builder<GlobalTable, GlobalTableBuilder> {
  _$GlobalTable? _$v;

  String? _globalTableName;
  String? get globalTableName => _$this._globalTableName;
  set globalTableName(String? globalTableName) =>
      _$this._globalTableName = globalTableName;

  _i3.ListBuilder<_i2.Replica>? _replicationGroup;
  _i3.ListBuilder<_i2.Replica> get replicationGroup =>
      _$this._replicationGroup ??= new _i3.ListBuilder<_i2.Replica>();
  set replicationGroup(_i3.ListBuilder<_i2.Replica>? replicationGroup) =>
      _$this._replicationGroup = replicationGroup;

  GlobalTableBuilder() {
    GlobalTable._init(this);
  }

  GlobalTableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableName = $v.globalTableName;
      _replicationGroup = $v.replicationGroup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobalTable other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalTable;
  }

  @override
  void update(void Function(GlobalTableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalTable build() => _build();

  _$GlobalTable _build() {
    _$GlobalTable _$result;
    try {
      _$result = _$v ??
          new _$GlobalTable._(
              globalTableName: globalTableName,
              replicationGroup: _replicationGroup?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicationGroup';
        _replicationGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlobalTable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
