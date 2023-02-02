// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.delete_table_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTableOutput extends DeleteTableOutput {
  @override
  final _i2.TableDescription? tableDescription;

  factory _$DeleteTableOutput(
          [void Function(DeleteTableOutputBuilder)? updates]) =>
      (new DeleteTableOutputBuilder()..update(updates))._build();

  _$DeleteTableOutput._({this.tableDescription}) : super._();

  @override
  DeleteTableOutput rebuild(void Function(DeleteTableOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTableOutputBuilder toBuilder() =>
      new DeleteTableOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTableOutput &&
        tableDescription == other.tableDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTableOutputBuilder
    implements Builder<DeleteTableOutput, DeleteTableOutputBuilder> {
  _$DeleteTableOutput? _$v;

  _i2.TableDescriptionBuilder? _tableDescription;
  _i2.TableDescriptionBuilder get tableDescription =>
      _$this._tableDescription ??= new _i2.TableDescriptionBuilder();
  set tableDescription(_i2.TableDescriptionBuilder? tableDescription) =>
      _$this._tableDescription = tableDescription;

  DeleteTableOutputBuilder() {
    DeleteTableOutput._init(this);
  }

  DeleteTableOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableDescription = $v.tableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTableOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTableOutput;
  }

  @override
  void update(void Function(DeleteTableOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTableOutput build() => _build();

  _$DeleteTableOutput _build() {
    _$DeleteTableOutput _$result;
    try {
      _$result = _$v ??
          new _$DeleteTableOutput._(
              tableDescription: _tableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tableDescription';
        _tableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTableOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
