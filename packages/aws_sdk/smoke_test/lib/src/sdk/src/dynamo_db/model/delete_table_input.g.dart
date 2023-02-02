// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.delete_table_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTableInput extends DeleteTableInput {
  @override
  final String tableName;

  factory _$DeleteTableInput(
          [void Function(DeleteTableInputBuilder)? updates]) =>
      (new DeleteTableInputBuilder()..update(updates))._build();

  _$DeleteTableInput._({required this.tableName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DeleteTableInput', 'tableName');
  }

  @override
  DeleteTableInput rebuild(void Function(DeleteTableInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTableInputBuilder toBuilder() =>
      new DeleteTableInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTableInput && tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTableInputBuilder
    implements Builder<DeleteTableInput, DeleteTableInputBuilder> {
  _$DeleteTableInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DeleteTableInputBuilder() {
    DeleteTableInput._init(this);
  }

  DeleteTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTableInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTableInput;
  }

  @override
  void update(void Function(DeleteTableInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTableInput build() => _build();

  _$DeleteTableInput _build() {
    final _$result = _$v ??
        new _$DeleteTableInput._(
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'DeleteTableInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
