// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_record_batch_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRecordBatchInput extends PutRecordBatchInput {
  @override
  final String deliveryStreamName;
  @override
  final _i3.BuiltList<Record> records;

  factory _$PutRecordBatchInput(
          [void Function(PutRecordBatchInputBuilder)? updates]) =>
      (PutRecordBatchInputBuilder()..update(updates))._build();

  _$PutRecordBatchInput._(
      {required this.deliveryStreamName, required this.records})
      : super._();
  @override
  PutRecordBatchInput rebuild(
          void Function(PutRecordBatchInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRecordBatchInputBuilder toBuilder() =>
      PutRecordBatchInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRecordBatchInput &&
        deliveryStreamName == other.deliveryStreamName &&
        records == other.records;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryStreamName.hashCode);
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRecordBatchInputBuilder
    implements Builder<PutRecordBatchInput, PutRecordBatchInputBuilder> {
  _$PutRecordBatchInput? _$v;

  String? _deliveryStreamName;
  String? get deliveryStreamName => _$this._deliveryStreamName;
  set deliveryStreamName(String? deliveryStreamName) =>
      _$this._deliveryStreamName = deliveryStreamName;

  _i3.ListBuilder<Record>? _records;
  _i3.ListBuilder<Record> get records =>
      _$this._records ??= _i3.ListBuilder<Record>();
  set records(_i3.ListBuilder<Record>? records) => _$this._records = records;

  PutRecordBatchInputBuilder();

  PutRecordBatchInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryStreamName = $v.deliveryStreamName;
      _records = $v.records.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRecordBatchInput other) {
    _$v = other as _$PutRecordBatchInput;
  }

  @override
  void update(void Function(PutRecordBatchInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRecordBatchInput build() => _build();

  _$PutRecordBatchInput _build() {
    _$PutRecordBatchInput _$result;
    try {
      _$result = _$v ??
          _$PutRecordBatchInput._(
            deliveryStreamName: BuiltValueNullFieldError.checkNotNull(
                deliveryStreamName,
                r'PutRecordBatchInput',
                'deliveryStreamName'),
            records: records.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PutRecordBatchInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
