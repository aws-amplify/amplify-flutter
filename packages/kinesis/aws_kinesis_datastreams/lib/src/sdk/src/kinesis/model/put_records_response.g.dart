// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_records_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRecordsResponse extends PutRecordsResponse {
  @override
  final int? failedRecordCount;
  @override
  final _i3.BuiltList<PutRecordsResultEntry> records;
  @override
  final String? encryptionType;

  factory _$PutRecordsResponse(
          [void Function(PutRecordsResponseBuilder)? updates]) =>
      (new PutRecordsResponseBuilder()..update(updates))._build();

  _$PutRecordsResponse._({
    this.failedRecordCount,
    required this.records,
    this.encryptionType,
  }) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        records, r'PutRecordsResponse', 'records');
  }

  @override
  PutRecordsResponse rebuild(
          void Function(PutRecordsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRecordsResponseBuilder toBuilder() =>
      new PutRecordsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRecordsResponse &&
        failedRecordCount == other.failedRecordCount &&
        records == other.records &&
        encryptionType == other.encryptionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failedRecordCount.hashCode);
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, encryptionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRecordsResponseBuilder
    implements Builder<PutRecordsResponse, PutRecordsResponseBuilder> {
  _$PutRecordsResponse? _$v;

  int? _failedRecordCount;
  int? get failedRecordCount => _$this._failedRecordCount;
  set failedRecordCount(int? failedRecordCount) =>
      _$this._failedRecordCount = failedRecordCount;

  _i3.ListBuilder<PutRecordsResultEntry>? _records;
  _i3.ListBuilder<PutRecordsResultEntry> get records =>
      _$this._records ??= new _i3.ListBuilder<PutRecordsResultEntry>();
  set records(_i3.ListBuilder<PutRecordsResultEntry>? records) =>
      _$this._records = records;

  String? _encryptionType;
  String? get encryptionType => _$this._encryptionType;
  set encryptionType(String? encryptionType) =>
      _$this._encryptionType = encryptionType;

  PutRecordsResponseBuilder();

  PutRecordsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedRecordCount = $v.failedRecordCount;
      _records = $v.records.toBuilder();
      _encryptionType = $v.encryptionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRecordsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRecordsResponse;
  }

  @override
  void update(void Function(PutRecordsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRecordsResponse build() => _build();

  _$PutRecordsResponse _build() {
    _$PutRecordsResponse _$result;
    try {
      _$result = _$v ??
          new _$PutRecordsResponse._(
            failedRecordCount: failedRecordCount,
            records: records.build(),
            encryptionType: encryptionType,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutRecordsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
