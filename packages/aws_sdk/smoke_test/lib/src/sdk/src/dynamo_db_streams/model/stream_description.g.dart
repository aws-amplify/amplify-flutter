// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StreamDescription extends StreamDescription {
  @override
  final String? streamArn;
  @override
  final String? streamLabel;
  @override
  final StreamStatus? streamStatus;
  @override
  final StreamViewType? streamViewType;
  @override
  final DateTime? creationRequestDateTime;
  @override
  final String? tableName;
  @override
  final _i2.BuiltList<KeySchemaElement>? keySchema;
  @override
  final _i2.BuiltList<Shard>? shards;
  @override
  final String? lastEvaluatedShardId;

  factory _$StreamDescription(
          [void Function(StreamDescriptionBuilder)? updates]) =>
      (new StreamDescriptionBuilder()..update(updates))._build();

  _$StreamDescription._(
      {this.streamArn,
      this.streamLabel,
      this.streamStatus,
      this.streamViewType,
      this.creationRequestDateTime,
      this.tableName,
      this.keySchema,
      this.shards,
      this.lastEvaluatedShardId})
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
        streamArn == other.streamArn &&
        streamLabel == other.streamLabel &&
        streamStatus == other.streamStatus &&
        streamViewType == other.streamViewType &&
        creationRequestDateTime == other.creationRequestDateTime &&
        tableName == other.tableName &&
        keySchema == other.keySchema &&
        shards == other.shards &&
        lastEvaluatedShardId == other.lastEvaluatedShardId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jc(_$hash, streamLabel.hashCode);
    _$hash = $jc(_$hash, streamStatus.hashCode);
    _$hash = $jc(_$hash, streamViewType.hashCode);
    _$hash = $jc(_$hash, creationRequestDateTime.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, shards.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedShardId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StreamDescriptionBuilder
    implements Builder<StreamDescription, StreamDescriptionBuilder> {
  _$StreamDescription? _$v;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  String? _streamLabel;
  String? get streamLabel => _$this._streamLabel;
  set streamLabel(String? streamLabel) => _$this._streamLabel = streamLabel;

  StreamStatus? _streamStatus;
  StreamStatus? get streamStatus => _$this._streamStatus;
  set streamStatus(StreamStatus? streamStatus) =>
      _$this._streamStatus = streamStatus;

  StreamViewType? _streamViewType;
  StreamViewType? get streamViewType => _$this._streamViewType;
  set streamViewType(StreamViewType? streamViewType) =>
      _$this._streamViewType = streamViewType;

  DateTime? _creationRequestDateTime;
  DateTime? get creationRequestDateTime => _$this._creationRequestDateTime;
  set creationRequestDateTime(DateTime? creationRequestDateTime) =>
      _$this._creationRequestDateTime = creationRequestDateTime;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i2.ListBuilder<KeySchemaElement>? _keySchema;
  _i2.ListBuilder<KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i2.ListBuilder<KeySchemaElement>();
  set keySchema(_i2.ListBuilder<KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i2.ListBuilder<Shard>? _shards;
  _i2.ListBuilder<Shard> get shards =>
      _$this._shards ??= new _i2.ListBuilder<Shard>();
  set shards(_i2.ListBuilder<Shard>? shards) => _$this._shards = shards;

  String? _lastEvaluatedShardId;
  String? get lastEvaluatedShardId => _$this._lastEvaluatedShardId;
  set lastEvaluatedShardId(String? lastEvaluatedShardId) =>
      _$this._lastEvaluatedShardId = lastEvaluatedShardId;

  StreamDescriptionBuilder();

  StreamDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamArn = $v.streamArn;
      _streamLabel = $v.streamLabel;
      _streamStatus = $v.streamStatus;
      _streamViewType = $v.streamViewType;
      _creationRequestDateTime = $v.creationRequestDateTime;
      _tableName = $v.tableName;
      _keySchema = $v.keySchema?.toBuilder();
      _shards = $v.shards?.toBuilder();
      _lastEvaluatedShardId = $v.lastEvaluatedShardId;
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
              streamArn: streamArn,
              streamLabel: streamLabel,
              streamStatus: streamStatus,
              streamViewType: streamViewType,
              creationRequestDateTime: creationRequestDateTime,
              tableName: tableName,
              keySchema: _keySchema?.build(),
              shards: _shards?.build(),
              lastEvaluatedShardId: lastEvaluatedShardId);
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
