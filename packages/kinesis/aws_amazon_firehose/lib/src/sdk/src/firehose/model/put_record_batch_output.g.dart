// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_record_batch_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRecordBatchOutput extends PutRecordBatchOutput {
  @override
  final int failedPutCount;
  @override
  final bool? encrypted;
  @override
  final _i2.BuiltList<PutRecordBatchResponseEntry> requestResponses;

  factory _$PutRecordBatchOutput(
          [void Function(PutRecordBatchOutputBuilder)? updates]) =>
      (PutRecordBatchOutputBuilder()..update(updates))._build();

  _$PutRecordBatchOutput._(
      {required this.failedPutCount,
      this.encrypted,
      required this.requestResponses})
      : super._();
  @override
  PutRecordBatchOutput rebuild(
          void Function(PutRecordBatchOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRecordBatchOutputBuilder toBuilder() =>
      PutRecordBatchOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRecordBatchOutput &&
        failedPutCount == other.failedPutCount &&
        encrypted == other.encrypted &&
        requestResponses == other.requestResponses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failedPutCount.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, requestResponses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRecordBatchOutputBuilder
    implements Builder<PutRecordBatchOutput, PutRecordBatchOutputBuilder> {
  _$PutRecordBatchOutput? _$v;

  int? _failedPutCount;
  int? get failedPutCount => _$this._failedPutCount;
  set failedPutCount(int? failedPutCount) =>
      _$this._failedPutCount = failedPutCount;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  _i2.ListBuilder<PutRecordBatchResponseEntry>? _requestResponses;
  _i2.ListBuilder<PutRecordBatchResponseEntry> get requestResponses =>
      _$this._requestResponses ??=
          _i2.ListBuilder<PutRecordBatchResponseEntry>();
  set requestResponses(
          _i2.ListBuilder<PutRecordBatchResponseEntry>? requestResponses) =>
      _$this._requestResponses = requestResponses;

  PutRecordBatchOutputBuilder();

  PutRecordBatchOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedPutCount = $v.failedPutCount;
      _encrypted = $v.encrypted;
      _requestResponses = $v.requestResponses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRecordBatchOutput other) {
    _$v = other as _$PutRecordBatchOutput;
  }

  @override
  void update(void Function(PutRecordBatchOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRecordBatchOutput build() => _build();

  _$PutRecordBatchOutput _build() {
    _$PutRecordBatchOutput _$result;
    try {
      _$result = _$v ??
          _$PutRecordBatchOutput._(
            failedPutCount: BuiltValueNullFieldError.checkNotNull(
                failedPutCount, r'PutRecordBatchOutput', 'failedPutCount'),
            encrypted: encrypted,
            requestResponses: requestResponses.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestResponses';
        requestResponses.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PutRecordBatchOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
