// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_record_batch_response_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRecordBatchResponseEntry extends PutRecordBatchResponseEntry {
  @override
  final String? recordId;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  factory _$PutRecordBatchResponseEntry(
          [void Function(PutRecordBatchResponseEntryBuilder)? updates]) =>
      (PutRecordBatchResponseEntryBuilder()..update(updates))._build();

  _$PutRecordBatchResponseEntry._(
      {this.recordId, this.errorCode, this.errorMessage})
      : super._();
  @override
  PutRecordBatchResponseEntry rebuild(
          void Function(PutRecordBatchResponseEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRecordBatchResponseEntryBuilder toBuilder() =>
      PutRecordBatchResponseEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRecordBatchResponseEntry &&
        recordId == other.recordId &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recordId.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRecordBatchResponseEntryBuilder
    implements
        Builder<PutRecordBatchResponseEntry,
            PutRecordBatchResponseEntryBuilder> {
  _$PutRecordBatchResponseEntry? _$v;

  String? _recordId;
  String? get recordId => _$this._recordId;
  set recordId(String? recordId) => _$this._recordId = recordId;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  PutRecordBatchResponseEntryBuilder();

  PutRecordBatchResponseEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recordId = $v.recordId;
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRecordBatchResponseEntry other) {
    _$v = other as _$PutRecordBatchResponseEntry;
  }

  @override
  void update(void Function(PutRecordBatchResponseEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRecordBatchResponseEntry build() => _build();

  _$PutRecordBatchResponseEntry _build() {
    final _$result = _$v ??
        _$PutRecordBatchResponseEntry._(
          recordId: recordId,
          errorCode: errorCode,
          errorMessage: errorMessage,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
