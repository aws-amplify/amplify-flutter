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
    return $jf($jc(
        $jc($jc($jc(0, sequenceNumber.hashCode), shardId.hashCode),
            shardIteratorType.hashCode),
        streamArn.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
