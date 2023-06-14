// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shard.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Shard extends Shard {
  @override
  final String? shardId;
  @override
  final _i2.SequenceNumberRange? sequenceNumberRange;
  @override
  final String? parentShardId;

  factory _$Shard([void Function(ShardBuilder)? updates]) =>
      (new ShardBuilder()..update(updates))._build();

  _$Shard._({this.shardId, this.sequenceNumberRange, this.parentShardId})
      : super._();

  @override
  Shard rebuild(void Function(ShardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShardBuilder toBuilder() => new ShardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Shard &&
        shardId == other.shardId &&
        sequenceNumberRange == other.sequenceNumberRange &&
        parentShardId == other.parentShardId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shardId.hashCode);
    _$hash = $jc(_$hash, sequenceNumberRange.hashCode);
    _$hash = $jc(_$hash, parentShardId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ShardBuilder implements Builder<Shard, ShardBuilder> {
  _$Shard? _$v;

  String? _shardId;
  String? get shardId => _$this._shardId;
  set shardId(String? shardId) => _$this._shardId = shardId;

  _i2.SequenceNumberRangeBuilder? _sequenceNumberRange;
  _i2.SequenceNumberRangeBuilder get sequenceNumberRange =>
      _$this._sequenceNumberRange ??= new _i2.SequenceNumberRangeBuilder();
  set sequenceNumberRange(
          _i2.SequenceNumberRangeBuilder? sequenceNumberRange) =>
      _$this._sequenceNumberRange = sequenceNumberRange;

  String? _parentShardId;
  String? get parentShardId => _$this._parentShardId;
  set parentShardId(String? parentShardId) =>
      _$this._parentShardId = parentShardId;

  ShardBuilder() {
    Shard._init(this);
  }

  ShardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shardId = $v.shardId;
      _sequenceNumberRange = $v.sequenceNumberRange?.toBuilder();
      _parentShardId = $v.parentShardId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Shard other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Shard;
  }

  @override
  void update(void Function(ShardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Shard build() => _build();

  _$Shard _build() {
    _$Shard _$result;
    try {
      _$result = _$v ??
          new _$Shard._(
              shardId: shardId,
              sequenceNumberRange: _sequenceNumberRange?.build(),
              parentShardId: parentShardId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sequenceNumberRange';
        _sequenceNumberRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Shard', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
