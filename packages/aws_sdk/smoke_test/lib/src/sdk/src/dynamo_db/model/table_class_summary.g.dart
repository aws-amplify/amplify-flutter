// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.table_class_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableClassSummary extends TableClassSummary {
  @override
  final _i2.TableClass? tableClass;
  @override
  final DateTime? lastUpdateDateTime;

  factory _$TableClassSummary(
          [void Function(TableClassSummaryBuilder)? updates]) =>
      (new TableClassSummaryBuilder()..update(updates))._build();

  _$TableClassSummary._({this.tableClass, this.lastUpdateDateTime}) : super._();

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
        tableClass == other.tableClass &&
        lastUpdateDateTime == other.lastUpdateDateTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableClass.hashCode);
    _$hash = $jc(_$hash, lastUpdateDateTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TableClassSummaryBuilder
    implements Builder<TableClassSummary, TableClassSummaryBuilder> {
  _$TableClassSummary? _$v;

  _i2.TableClass? _tableClass;
  _i2.TableClass? get tableClass => _$this._tableClass;
  set tableClass(_i2.TableClass? tableClass) => _$this._tableClass = tableClass;

  DateTime? _lastUpdateDateTime;
  DateTime? get lastUpdateDateTime => _$this._lastUpdateDateTime;
  set lastUpdateDateTime(DateTime? lastUpdateDateTime) =>
      _$this._lastUpdateDateTime = lastUpdateDateTime;

  TableClassSummaryBuilder() {
    TableClassSummary._init(this);
  }

  TableClassSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableClass = $v.tableClass;
      _lastUpdateDateTime = $v.lastUpdateDateTime;
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
            tableClass: tableClass, lastUpdateDateTime: lastUpdateDateTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
