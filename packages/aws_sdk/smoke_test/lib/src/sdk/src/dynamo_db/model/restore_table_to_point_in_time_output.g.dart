// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.restore_table_to_point_in_time_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreTableToPointInTimeOutput
    extends RestoreTableToPointInTimeOutput {
  @override
  final _i2.TableDescription? tableDescription;

  factory _$RestoreTableToPointInTimeOutput(
          [void Function(RestoreTableToPointInTimeOutputBuilder)? updates]) =>
      (new RestoreTableToPointInTimeOutputBuilder()..update(updates))._build();

  _$RestoreTableToPointInTimeOutput._({this.tableDescription}) : super._();

  @override
  RestoreTableToPointInTimeOutput rebuild(
          void Function(RestoreTableToPointInTimeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreTableToPointInTimeOutputBuilder toBuilder() =>
      new RestoreTableToPointInTimeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreTableToPointInTimeOutput &&
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

class RestoreTableToPointInTimeOutputBuilder
    implements
        Builder<RestoreTableToPointInTimeOutput,
            RestoreTableToPointInTimeOutputBuilder> {
  _$RestoreTableToPointInTimeOutput? _$v;

  _i2.TableDescriptionBuilder? _tableDescription;
  _i2.TableDescriptionBuilder get tableDescription =>
      _$this._tableDescription ??= new _i2.TableDescriptionBuilder();
  set tableDescription(_i2.TableDescriptionBuilder? tableDescription) =>
      _$this._tableDescription = tableDescription;

  RestoreTableToPointInTimeOutputBuilder() {
    RestoreTableToPointInTimeOutput._init(this);
  }

  RestoreTableToPointInTimeOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableDescription = $v.tableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreTableToPointInTimeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreTableToPointInTimeOutput;
  }

  @override
  void update(void Function(RestoreTableToPointInTimeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreTableToPointInTimeOutput build() => _build();

  _$RestoreTableToPointInTimeOutput _build() {
    _$RestoreTableToPointInTimeOutput _$result;
    try {
      _$result = _$v ??
          new _$RestoreTableToPointInTimeOutput._(
              tableDescription: _tableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tableDescription';
        _tableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestoreTableToPointInTimeOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
