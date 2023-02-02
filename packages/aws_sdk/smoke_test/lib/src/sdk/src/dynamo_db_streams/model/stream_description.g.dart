// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.stream_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StreamDescription extends StreamDescription {
  @override
  final DateTime? creationRequestDateTime;
  @override
  final _i6.BuiltList<_i2.KeySchemaElement>? keySchema;
  @override
  final String? lastEvaluatedShardId;
  @override
  final _i6.BuiltList<_i3.Shard>? shards;
  @override
  final String? streamArn;
  @override
  final String? streamLabel;
  @override
  final _i4.StreamStatus? streamStatus;
  @override
  final _i5.StreamViewType? streamViewType;
  @override
  final String? tableName;

  factory _$StreamDescription(
          [void Function(StreamDescriptionBuilder)? updates]) =>
      (new StreamDescriptionBuilder()..update(updates))._build();

  _$StreamDescription._(
      {this.creationRequestDateTime,
      this.keySchema,
      this.lastEvaluatedShardId,
      this.shards,
      this.streamArn,
      this.streamLabel,
      this.streamStatus,
      this.streamViewType,
      this.tableName})
      : super._();

  @override
  StreamDescription rebuild(void Function(StreamDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreamDescriptionBuilder toBuilder() =>
      new StreamDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamDescription &&
        creationRequestDateTime == other.creationRequestDateTime &&
        keySchema == other.keySchema &&
        lastEvaluatedShardId == other.lastEvaluatedShardId &&
        shards == other.shards &&
        streamArn == other.streamArn &&
        streamLabel == other.streamLabel &&
        streamStatus == other.streamStatus &&
        streamViewType == other.streamViewType &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, creationRequestDateTime.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedShardId.hashCode);
    _$hash = $jc(_$hash, shards.hashCode);
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jc(_$hash, streamLabel.hashCode);
    _$hash = $jc(_$hash, streamStatus.hashCode);
    _$hash = $jc(_$hash, streamViewType.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StreamDescriptionBuilder
    implements Builder<StreamDescription, StreamDescriptionBuilder> {
  _$StreamDescription? _$v;

  DateTime? _creationRequestDateTime;
  DateTime? get creationRequestDateTime => _$this._creationRequestDateTime;
  set creationRequestDateTime(DateTime? creationRequestDateTime) =>
      _$this._creationRequestDateTime = creationRequestDateTime;

  _i6.ListBuilder<_i2.KeySchemaElement>? _keySchema;
  _i6.ListBuilder<_i2.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i6.ListBuilder<_i2.KeySchemaElement>();
  set keySchema(_i6.ListBuilder<_i2.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  String? _lastEvaluatedShardId;
  String? get lastEvaluatedShardId => _$this._lastEvaluatedShardId;
  set lastEvaluatedShardId(String? lastEvaluatedShardId) =>
      _$this._lastEvaluatedShardId = lastEvaluatedShardId;

  _i6.ListBuilder<_i3.Shard>? _shards;
  _i6.ListBuilder<_i3.Shard> get shards =>
      _$this._shards ??= new _i6.ListBuilder<_i3.Shard>();
  set shards(_i6.ListBuilder<_i3.Shard>? shards) => _$this._shards = shards;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  String? _streamLabel;
  String? get streamLabel => _$this._streamLabel;
  set streamLabel(String? streamLabel) => _$this._streamLabel = streamLabel;

  _i4.StreamStatus? _streamStatus;
  _i4.StreamStatus? get streamStatus => _$this._streamStatus;
  set streamStatus(_i4.StreamStatus? streamStatus) =>
      _$this._streamStatus = streamStatus;

  _i5.StreamViewType? _streamViewType;
  _i5.StreamViewType? get streamViewType => _$this._streamViewType;
  set streamViewType(_i5.StreamViewType? streamViewType) =>
      _$this._streamViewType = streamViewType;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  StreamDescriptionBuilder() {
    StreamDescription._init(this);
  }

  StreamDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creationRequestDateTime = $v.creationRequestDateTime;
      _keySchema = $v.keySchema?.toBuilder();
      _lastEvaluatedShardId = $v.lastEvaluatedShardId;
      _shards = $v.shards?.toBuilder();
      _streamArn = $v.streamArn;
      _streamLabel = $v.streamLabel;
      _streamStatus = $v.streamStatus;
      _streamViewType = $v.streamViewType;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreamDescription;
  }

  @override
  void update(void Function(StreamDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamDescription build() => _build();

  _$StreamDescription _build() {
    _$StreamDescription _$result;
    try {
      _$result = _$v ??
          new _$StreamDescription._(
              creationRequestDateTime: creationRequestDateTime,
              keySchema: _keySchema?.build(),
              lastEvaluatedShardId: lastEvaluatedShardId,
              shards: _shards?.build(),
              streamArn: streamArn,
              streamLabel: streamLabel,
              streamStatus: streamStatus,
              streamViewType: streamViewType,
              tableName: tableName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keySchema';
        _keySchema?.build();

        _$failedField = 'shards';
        _shards?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StreamDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
