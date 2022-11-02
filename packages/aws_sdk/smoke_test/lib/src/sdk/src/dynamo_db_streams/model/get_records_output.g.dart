// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.get_records_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRecordsOutput extends GetRecordsOutput {
  @override
  final String? nextShardIterator;
  @override
  final _i3.BuiltList<_i2.Record>? records;

  factory _$GetRecordsOutput(
          [void Function(GetRecordsOutputBuilder)? updates]) =>
      (new GetRecordsOutputBuilder()..update(updates))._build();

  _$GetRecordsOutput._({this.nextShardIterator, this.records}) : super._();

  @override
  GetRecordsOutput rebuild(void Function(GetRecordsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRecordsOutputBuilder toBuilder() =>
      new GetRecordsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRecordsOutput &&
        nextShardIterator == other.nextShardIterator &&
        records == other.records;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nextShardIterator.hashCode), records.hashCode));
  }
}

class GetRecordsOutputBuilder
    implements Builder<GetRecordsOutput, GetRecordsOutputBuilder> {
  _$GetRecordsOutput? _$v;

  String? _nextShardIterator;
  String? get nextShardIterator => _$this._nextShardIterator;
  set nextShardIterator(String? nextShardIterator) =>
      _$this._nextShardIterator = nextShardIterator;

  _i3.ListBuilder<_i2.Record>? _records;
  _i3.ListBuilder<_i2.Record> get records =>
      _$this._records ??= new _i3.ListBuilder<_i2.Record>();
  set records(_i3.ListBuilder<_i2.Record>? records) =>
      _$this._records = records;

  GetRecordsOutputBuilder() {
    GetRecordsOutput._init(this);
  }

  GetRecordsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextShardIterator = $v.nextShardIterator;
      _records = $v.records?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRecordsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRecordsOutput;
  }

  @override
  void update(void Function(GetRecordsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRecordsOutput build() => _build();

  _$GetRecordsOutput _build() {
    _$GetRecordsOutput _$result;
    try {
      _$result = _$v ??
          new _$GetRecordsOutput._(
              nextShardIterator: nextShardIterator, records: _records?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        _records?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetRecordsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
