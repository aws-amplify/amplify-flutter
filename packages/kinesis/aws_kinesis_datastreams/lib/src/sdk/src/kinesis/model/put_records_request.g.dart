// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_records_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRecordsRequest extends PutRecordsRequest {
  @override
  final _i3.BuiltList<PutRecordsRequestEntry> records;
  @override
  final String streamName;
  @override
  final String? streamArn;

  factory _$PutRecordsRequest(
          [void Function(PutRecordsRequestBuilder)? updates]) =>
      (new PutRecordsRequestBuilder()..update(updates))._build();

  _$PutRecordsRequest._({
    required this.records,
    required this.streamName,
    this.streamArn,
  }) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        records, r'PutRecordsRequest', 'records');
    BuiltValueNullFieldError.checkNotNull(
        streamName, r'PutRecordsRequest', 'streamName');
  }

  @override
  PutRecordsRequest rebuild(void Function(PutRecordsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRecordsRequestBuilder toBuilder() =>
      new PutRecordsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRecordsRequest &&
        records == other.records &&
        streamName == other.streamName &&
        streamArn == other.streamArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, streamName.hashCode);
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRecordsRequestBuilder
    implements Builder<PutRecordsRequest, PutRecordsRequestBuilder> {
  _$PutRecordsRequest? _$v;

  _i3.ListBuilder<PutRecordsRequestEntry>? _records;
  _i3.ListBuilder<PutRecordsRequestEntry> get records =>
      _$this._records ??= new _i3.ListBuilder<PutRecordsRequestEntry>();
  set records(_i3.ListBuilder<PutRecordsRequestEntry>? records) =>
      _$this._records = records;

  String? _streamName;
  String? get streamName => _$this._streamName;
  set streamName(String? streamName) => _$this._streamName = streamName;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  PutRecordsRequestBuilder();

  PutRecordsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _records = $v.records.toBuilder();
      _streamName = $v.streamName;
      _streamArn = $v.streamArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRecordsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRecordsRequest;
  }

  @override
  void update(void Function(PutRecordsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRecordsRequest build() => _build();

  _$PutRecordsRequest _build() {
    _$PutRecordsRequest _$result;
    try {
      _$result = _$v ??
          new _$PutRecordsRequest._(
            records: records.build(),
            streamName: BuiltValueNullFieldError.checkNotNull(
                streamName, r'PutRecordsRequest', 'streamName'),
            streamArn: streamArn,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutRecordsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
