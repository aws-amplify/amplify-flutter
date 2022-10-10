// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_table_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTableOutput extends DescribeTableOutput {
  @override
  final _i2.TableDescription? table;

  factory _$DescribeTableOutput(
          [void Function(DescribeTableOutputBuilder)? updates]) =>
      (new DescribeTableOutputBuilder()..update(updates))._build();

  _$DescribeTableOutput._({this.table}) : super._();

  @override
  DescribeTableOutput rebuild(
          void Function(DescribeTableOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTableOutputBuilder toBuilder() =>
      new DescribeTableOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTableOutput && table == other.table;
  }

  @override
  int get hashCode {
    return $jf($jc(0, table.hashCode));
  }
}

class DescribeTableOutputBuilder
    implements Builder<DescribeTableOutput, DescribeTableOutputBuilder> {
  _$DescribeTableOutput? _$v;

  _i2.TableDescriptionBuilder? _table;
  _i2.TableDescriptionBuilder get table =>
      _$this._table ??= new _i2.TableDescriptionBuilder();
  set table(_i2.TableDescriptionBuilder? table) => _$this._table = table;

  DescribeTableOutputBuilder() {
    DescribeTableOutput._init(this);
  }

  DescribeTableOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _table = $v.table?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTableOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTableOutput;
  }

  @override
  void update(void Function(DescribeTableOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTableOutput build() => _build();

  _$DescribeTableOutput _build() {
    _$DescribeTableOutput _$result;
    try {
      _$result = _$v ?? new _$DescribeTableOutput._(table: _table?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'table';
        _table?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTableOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
