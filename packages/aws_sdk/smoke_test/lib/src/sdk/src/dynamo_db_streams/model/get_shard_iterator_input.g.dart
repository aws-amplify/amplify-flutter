// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.get_shard_iterator_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetShardIteratorInput extends GetShardIteratorInput {
  @override
  final String? sequenceNumber;
  @override
  final String shardId;
  @override
  final _i3.ShardIteratorType shardIteratorType;
  @override
  final String streamArn;

  factory _$GetShardIteratorInput(
          [void Function(GetShardIteratorInputBuilder)? updates]) =>
      (new GetShardIteratorInputBuilder()..update(updates))._build();

  _$GetShardIteratorInput._(
      {this.sequenceNumber,
      required this.shardId,
      required this.shardIteratorType,
      required this.streamArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shardId, r'GetShardIteratorInput', 'shardId');
    BuiltValueNullFieldError.checkNotNull(
        shardIteratorType, r'GetShardIteratorInput', 'shardIteratorType');
    BuiltValueNullFieldError.checkNotNull(
        streamArn, r'GetShardIteratorInput', 'streamArn');
  }

  @override
  GetShardIteratorInput rebuild(
          void Function(GetShardIteratorInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetShardIteratorInputBuilder toBuilder() =>
      new GetShardIteratorInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetShardIteratorInput &&
        sequenceNumber == other.sequenceNumber &&
        shardId == other.shardId &&
        shardIteratorType == other.shardIteratorType &&
        streamArn == other.streamArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sequenceNumber.hashCode);
    _$hash = $jc(_$hash, shardId.hashCode);
    _$hash = $jc(_$hash, shardIteratorType.hashCode);
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetShardIteratorInputBuilder
    implements Builder<GetShardIteratorInput, GetShardIteratorInputBuilder> {
  _$GetShardIteratorInput? _$v;

  String? _sequenceNumber;
  String? get sequenceNumber => _$this._sequenceNumber;
  set sequenceNumber(String? sequenceNumber) =>
      _$this._sequenceNumber = sequenceNumber;

  String? _shardId;
  String? get shardId => _$this._shardId;
  set shardId(String? shardId) => _$this._shardId = shardId;

  _i3.ShardIteratorType? _shardIteratorType;
  _i3.ShardIteratorType? get shardIteratorType => _$this._shardIteratorType;
  set shardIteratorType(_i3.ShardIteratorType? shardIteratorType) =>
      _$this._shardIteratorType = shardIteratorType;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  GetShardIteratorInputBuilder() {
    GetShardIteratorInput._init(this);
  }

  GetShardIteratorInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sequenceNumber = $v.sequenceNumber;
      _shardId = $v.shardId;
      _shardIteratorType = $v.shardIteratorType;
      _streamArn = $v.streamArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetShardIteratorInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetShardIteratorInput;
  }

  @override
  void update(void Function(GetShardIteratorInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetShardIteratorInput build() => _build();

  _$GetShardIteratorInput _build() {
    final _$result = _$v ??
        new _$GetShardIteratorInput._(
            sequenceNumber: sequenceNumber,
            shardId: BuiltValueNullFieldError.checkNotNull(
                shardId, r'GetShardIteratorInput', 'shardId'),
            shardIteratorType: BuiltValueNullFieldError.checkNotNull(
                shardIteratorType,
                r'GetShardIteratorInput',
                'shardIteratorType'),
            streamArn: BuiltValueNullFieldError.checkNotNull(
                streamArn, r'GetShardIteratorInput', 'streamArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
