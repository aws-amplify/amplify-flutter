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
    var _$hash = 0;
    _$hash = $jc(_$hash, lastUpdateDateTime.hashCode);
    _$hash = $jc(_$hash, tableClass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
