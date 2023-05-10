// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.table_auto_scaling_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableAutoScalingDescription extends TableAutoScalingDescription {
  @override
  final String? tableName;
  @override
  final _i2.TableStatus? tableStatus;
  @override
  final _i4.BuiltList<_i3.ReplicaAutoScalingDescription>? replicas;

  factory _$TableAutoScalingDescription(
          [void Function(TableAutoScalingDescriptionBuilder)? updates]) =>
      (new TableAutoScalingDescriptionBuilder()..update(updates))._build();

  _$TableAutoScalingDescription._(
      {this.tableName, this.tableStatus, this.replicas})
      : super._();

  @override
  TableAutoScalingDescription rebuild(
          void Function(TableAutoScalingDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableAutoScalingDescriptionBuilder toBuilder() =>
      new TableAutoScalingDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableAutoScalingDescription &&
        tableName == other.tableName &&
        tableStatus == other.tableStatus &&
        replicas == other.replicas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, tableStatus.hashCode);
    _$hash = $jc(_$hash, replicas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TableAutoScalingDescriptionBuilder
    implements
        Builder<TableAutoScalingDescription,
            TableAutoScalingDescriptionBuilder> {
  _$TableAutoScalingDescription? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i2.TableStatus? _tableStatus;
  _i2.TableStatus? get tableStatus => _$this._tableStatus;
  set tableStatus(_i2.TableStatus? tableStatus) =>
      _$this._tableStatus = tableStatus;

  _i4.ListBuilder<_i3.ReplicaAutoScalingDescription>? _replicas;
  _i4.ListBuilder<_i3.ReplicaAutoScalingDescription> get replicas =>
      _$this._replicas ??=
          new _i4.ListBuilder<_i3.ReplicaAutoScalingDescription>();
  set replicas(_i4.ListBuilder<_i3.ReplicaAutoScalingDescription>? replicas) =>
      _$this._replicas = replicas;

  TableAutoScalingDescriptionBuilder() {
    TableAutoScalingDescription._init(this);
  }

  TableAutoScalingDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _tableStatus = $v.tableStatus;
      _replicas = $v.replicas?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableAutoScalingDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TableAutoScalingDescription;
  }

  @override
  void update(void Function(TableAutoScalingDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableAutoScalingDescription build() => _build();

  _$TableAutoScalingDescription _build() {
    _$TableAutoScalingDescription _$result;
    try {
      _$result = _$v ??
          new _$TableAutoScalingDescription._(
              tableName: tableName,
              tableStatus: tableStatus,
              replicas: _replicas?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicas';
        _replicas?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TableAutoScalingDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
