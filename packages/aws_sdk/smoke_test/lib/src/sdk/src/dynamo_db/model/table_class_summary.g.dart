// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.table_class_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableClassSummary extends TableClassSummary {
  @override
  final DateTime? lastUpdateDateTime;
  @override
  final _i2.TableClass? tableClass;

  factory _$TableClassSummary(
          [void Function(TableClassSummaryBuilder)? updates]) =>
      (new TableClassSummaryBuilder()..update(updates))._build();

  _$TableClassSummary._({this.lastUpdateDateTime, this.tableClass}) : super._();

  @override
  TableClassSummary rebuild(void Function(TableClassSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableClassSummaryBuilder toBuilder() =>
      new TableClassSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableClassSummary &&
        lastUpdateDateTime == other.lastUpdateDateTime &&
        tableClass == other.tableClass;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lastUpdateDateTime.hashCode), tableClass.hashCode));
  }
}

class TableClassSummaryBuilder
    implements Builder<TableClassSummary, TableClassSummaryBuilder> {
  _$TableClassSummary? _$v;

  DateTime? _lastUpdateDateTime;
  DateTime? get lastUpdateDateTime => _$this._lastUpdateDateTime;
  set lastUpdateDateTime(DateTime? lastUpdateDateTime) =>
      _$this._lastUpdateDateTime = lastUpdateDateTime;

  _i2.TableClass? _tableClass;
  _i2.TableClass? get tableClass => _$this._tableClass;
  set tableClass(_i2.TableClass? tableClass) => _$this._tableClass = tableClass;

  TableClassSummaryBuilder() {
    TableClassSummary._init(this);
  }

  TableClassSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastUpdateDateTime = $v.lastUpdateDateTime;
      _tableClass = $v.tableClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableClassSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TableClassSummary;
  }

  @override
  void update(void Function(TableClassSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableClassSummary build() => _build();

  _$TableClassSummary _build() {
    final _$result = _$v ??
        new _$TableClassSummary._(
            lastUpdateDateTime: lastUpdateDateTime, tableClass: tableClass);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
