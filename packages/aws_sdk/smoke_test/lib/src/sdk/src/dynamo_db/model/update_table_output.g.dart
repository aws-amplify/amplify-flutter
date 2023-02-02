// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_table_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTableOutput extends UpdateTableOutput {
  @override
  final _i2.TableDescription? tableDescription;

  factory _$UpdateTableOutput(
          [void Function(UpdateTableOutputBuilder)? updates]) =>
      (new UpdateTableOutputBuilder()..update(updates))._build();

  _$UpdateTableOutput._({this.tableDescription}) : super._();

  @override
  UpdateTableOutput rebuild(void Function(UpdateTableOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTableOutputBuilder toBuilder() =>
      new UpdateTableOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTableOutput &&
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

class UpdateTableOutputBuilder
    implements Builder<UpdateTableOutput, UpdateTableOutputBuilder> {
  _$UpdateTableOutput? _$v;

  _i2.TableDescriptionBuilder? _tableDescription;
  _i2.TableDescriptionBuilder get tableDescription =>
      _$this._tableDescription ??= new _i2.TableDescriptionBuilder();
  set tableDescription(_i2.TableDescriptionBuilder? tableDescription) =>
      _$this._tableDescription = tableDescription;

  UpdateTableOutputBuilder() {
    UpdateTableOutput._init(this);
  }

  UpdateTableOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableDescription = $v.tableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTableOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTableOutput;
  }

  @override
  void update(void Function(UpdateTableOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTableOutput build() => _build();

  _$UpdateTableOutput _build() {
    _$UpdateTableOutput _$result;
    try {
      _$result = _$v ??
          new _$UpdateTableOutput._(
              tableDescription: _tableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tableDescription';
        _tableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTableOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
