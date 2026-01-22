// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_records_result_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRecordsResultEntry extends PutRecordsResultEntry {
  @override
  final String? sequenceNumber;
  @override
  final String? shardId;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  factory _$PutRecordsResultEntry(
          [void Function(PutRecordsResultEntryBuilder)? updates]) =>
      (new PutRecordsResultEntryBuilder()..update(updates))._build();

  _$PutRecordsResultEntry._({
    this.sequenceNumber,
    this.shardId,
    this.errorCode,
    this.errorMessage,
  }) : super._();

  @override
  PutRecordsResultEntry rebuild(
          void Function(PutRecordsResultEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRecordsResultEntryBuilder toBuilder() =>
      new PutRecordsResultEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRecordsResultEntry &&
        sequenceNumber == other.sequenceNumber &&
        shardId == other.shardId &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sequenceNumber.hashCode);
    _$hash = $jc(_$hash, shardId.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRecordsResultEntryBuilder
    implements Builder<PutRecordsResultEntry, PutRecordsResultEntryBuilder> {
  _$PutRecordsResultEntry? _$v;

  String? _sequenceNumber;
  String? get sequenceNumber => _$this._sequenceNumber;
  set sequenceNumber(String? sequenceNumber) =>
      _$this._sequenceNumber = sequenceNumber;

  String? _shardId;
  String? get shardId => _$this._shardId;
  set shardId(String? shardId) => _$this._shardId = shardId;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  PutRecordsResultEntryBuilder();

  PutRecordsResultEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sequenceNumber = $v.sequenceNumber;
      _shardId = $v.shardId;
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRecordsResultEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRecordsResultEntry;
  }

  @override
  void update(void Function(PutRecordsResultEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRecordsResultEntry build() => _build();

  _$PutRecordsResultEntry _build() {
    final _$result = _$v ??
        new _$PutRecordsResultEntry._(
          sequenceNumber: sequenceNumber,
          shardId: shardId,
          errorCode: errorCode,
          errorMessage: errorMessage,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
