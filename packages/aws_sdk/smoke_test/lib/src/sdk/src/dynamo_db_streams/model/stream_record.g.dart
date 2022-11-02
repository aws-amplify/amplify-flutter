// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.stream_record;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StreamRecord extends StreamRecord {
  @override
  final DateTime? approximateCreationDateTime;
  @override
  final _i5.BuiltMap<String, _i2.AttributeValue>? keys;
  @override
  final _i5.BuiltMap<String, _i2.AttributeValue>? newImage;
  @override
  final _i5.BuiltMap<String, _i2.AttributeValue>? oldImage;
  @override
  final String? sequenceNumber;
  @override
  final _i3.Int64? sizeBytes;
  @override
  final _i4.StreamViewType? streamViewType;

  factory _$StreamRecord([void Function(StreamRecordBuilder)? updates]) =>
      (new StreamRecordBuilder()..update(updates))._build();

  _$StreamRecord._(
      {this.approximateCreationDateTime,
      this.keys,
      this.newImage,
      this.oldImage,
      this.sequenceNumber,
      this.sizeBytes,
      this.streamViewType})
      : super._();

  @override
  StreamRecord rebuild(void Function(StreamRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreamRecordBuilder toBuilder() => new StreamRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamRecord &&
        approximateCreationDateTime == other.approximateCreationDateTime &&
        keys == other.keys &&
        newImage == other.newImage &&
        oldImage == other.oldImage &&
        sequenceNumber == other.sequenceNumber &&
        sizeBytes == other.sizeBytes &&
        streamViewType == other.streamViewType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, approximateCreationDateTime.hashCode),
                            keys.hashCode),
                        newImage.hashCode),
                    oldImage.hashCode),
                sequenceNumber.hashCode),
            sizeBytes.hashCode),
        streamViewType.hashCode));
  }
}

class StreamRecordBuilder
    implements Builder<StreamRecord, StreamRecordBuilder> {
  _$StreamRecord? _$v;

  DateTime? _approximateCreationDateTime;
  DateTime? get approximateCreationDateTime =>
      _$this._approximateCreationDateTime;
  set approximateCreationDateTime(DateTime? approximateCreationDateTime) =>
      _$this._approximateCreationDateTime = approximateCreationDateTime;

  _i5.MapBuilder<String, _i2.AttributeValue>? _keys;
  _i5.MapBuilder<String, _i2.AttributeValue> get keys =>
      _$this._keys ??= new _i5.MapBuilder<String, _i2.AttributeValue>();
  set keys(_i5.MapBuilder<String, _i2.AttributeValue>? keys) =>
      _$this._keys = keys;

  _i5.MapBuilder<String, _i2.AttributeValue>? _newImage;
  _i5.MapBuilder<String, _i2.AttributeValue> get newImage =>
      _$this._newImage ??= new _i5.MapBuilder<String, _i2.AttributeValue>();
  set newImage(_i5.MapBuilder<String, _i2.AttributeValue>? newImage) =>
      _$this._newImage = newImage;

  _i5.MapBuilder<String, _i2.AttributeValue>? _oldImage;
  _i5.MapBuilder<String, _i2.AttributeValue> get oldImage =>
      _$this._oldImage ??= new _i5.MapBuilder<String, _i2.AttributeValue>();
  set oldImage(_i5.MapBuilder<String, _i2.AttributeValue>? oldImage) =>
      _$this._oldImage = oldImage;

  String? _sequenceNumber;
  String? get sequenceNumber => _$this._sequenceNumber;
  set sequenceNumber(String? sequenceNumber) =>
      _$this._sequenceNumber = sequenceNumber;

  _i3.Int64? _sizeBytes;
  _i3.Int64? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(_i3.Int64? sizeBytes) => _$this._sizeBytes = sizeBytes;

  _i4.StreamViewType? _streamViewType;
  _i4.StreamViewType? get streamViewType => _$this._streamViewType;
  set streamViewType(_i4.StreamViewType? streamViewType) =>
      _$this._streamViewType = streamViewType;

  StreamRecordBuilder() {
    StreamRecord._init(this);
  }

  StreamRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _approximateCreationDateTime = $v.approximateCreationDateTime;
      _keys = $v.keys?.toBuilder();
      _newImage = $v.newImage?.toBuilder();
      _oldImage = $v.oldImage?.toBuilder();
      _sequenceNumber = $v.sequenceNumber;
      _sizeBytes = $v.sizeBytes;
      _streamViewType = $v.streamViewType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreamRecord;
  }

  @override
  void update(void Function(StreamRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamRecord build() => _build();

  _$StreamRecord _build() {
    _$StreamRecord _$result;
    try {
      _$result = _$v ??
          new _$StreamRecord._(
              approximateCreationDateTime: approximateCreationDateTime,
              keys: _keys?.build(),
              newImage: _newImage?.build(),
              oldImage: _oldImage?.build(),
              sequenceNumber: sequenceNumber,
              sizeBytes: sizeBytes,
              streamViewType: streamViewType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keys';
        _keys?.build();
        _$failedField = 'newImage';
        _newImage?.build();
        _$failedField = 'oldImage';
        _oldImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StreamRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
