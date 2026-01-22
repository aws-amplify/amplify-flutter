// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_records_request_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRecordsRequestEntry extends PutRecordsRequestEntry {
  @override
  final _i3.Uint8List data;
  @override
  final String? explicitHashKey;
  @override
  final String partitionKey;

  factory _$PutRecordsRequestEntry(
          [void Function(PutRecordsRequestEntryBuilder)? updates]) =>
      (new PutRecordsRequestEntryBuilder()..update(updates))._build();

  _$PutRecordsRequestEntry._({
    required this.data,
    this.explicitHashKey,
    required this.partitionKey,
  }) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'PutRecordsRequestEntry', 'data');
    BuiltValueNullFieldError.checkNotNull(
        partitionKey, r'PutRecordsRequestEntry', 'partitionKey');
  }

  @override
  PutRecordsRequestEntry rebuild(
          void Function(PutRecordsRequestEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRecordsRequestEntryBuilder toBuilder() =>
      new PutRecordsRequestEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRecordsRequestEntry &&
        data == other.data &&
        explicitHashKey == other.explicitHashKey &&
        partitionKey == other.partitionKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, explicitHashKey.hashCode);
    _$hash = $jc(_$hash, partitionKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRecordsRequestEntryBuilder
    implements Builder<PutRecordsRequestEntry, PutRecordsRequestEntryBuilder> {
  _$PutRecordsRequestEntry? _$v;

  _i3.Uint8List? _data;
  _i3.Uint8List? get data => _$this._data;
  set data(_i3.Uint8List? data) => _$this._data = data;

  String? _explicitHashKey;
  String? get explicitHashKey => _$this._explicitHashKey;
  set explicitHashKey(String? explicitHashKey) =>
      _$this._explicitHashKey = explicitHashKey;

  String? _partitionKey;
  String? get partitionKey => _$this._partitionKey;
  set partitionKey(String? partitionKey) => _$this._partitionKey = partitionKey;

  PutRecordsRequestEntryBuilder();

  PutRecordsRequestEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _explicitHashKey = $v.explicitHashKey;
      _partitionKey = $v.partitionKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRecordsRequestEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRecordsRequestEntry;
  }

  @override
  void update(void Function(PutRecordsRequestEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRecordsRequestEntry build() => _build();

  _$PutRecordsRequestEntry _build() {
    final _$result = _$v ??
        new _$PutRecordsRequestEntry._(
          data: BuiltValueNullFieldError.checkNotNull(
              data, r'PutRecordsRequestEntry', 'data'),
          explicitHashKey: explicitHashKey,
          partitionKey: BuiltValueNullFieldError.checkNotNull(
              partitionKey, r'PutRecordsRequestEntry', 'partitionKey'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
