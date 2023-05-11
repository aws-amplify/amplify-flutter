// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.get_records_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRecordsOutput extends GetRecordsOutput {
  @override
  final _i3.BuiltList<_i2.Record>? records;
  @override
  final String? nextShardIterator;

  factory _$GetRecordsOutput(
          [void Function(GetRecordsOutputBuilder)? updates]) =>
      (new GetRecordsOutputBuilder()..update(updates))._build();

  _$GetRecordsOutput._({this.records, this.nextShardIterator}) : super._();

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
        records == other.records &&
        nextShardIterator == other.nextShardIterator;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, nextShardIterator.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetRecordsOutputBuilder
    implements Builder<GetRecordsOutput, GetRecordsOutputBuilder> {
  _$GetRecordsOutput? _$v;

  _i3.ListBuilder<_i2.Record>? _records;
  _i3.ListBuilder<_i2.Record> get records =>
      _$this._records ??= new _i3.ListBuilder<_i2.Record>();
  set records(_i3.ListBuilder<_i2.Record>? records) =>
      _$this._records = records;

  String? _nextShardIterator;
  String? get nextShardIterator => _$this._nextShardIterator;
  set nextShardIterator(String? nextShardIterator) =>
      _$this._nextShardIterator = nextShardIterator;

  GetRecordsOutputBuilder() {
    GetRecordsOutput._init(this);
  }

  GetRecordsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _records = $v.records?.toBuilder();
      _nextShardIterator = $v.nextShardIterator;
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
              records: _records?.build(), nextShardIterator: nextShardIterator);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
