// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.get_shard_iterator_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetShardIteratorOutput extends GetShardIteratorOutput {
  @override
  final String? shardIterator;

  factory _$GetShardIteratorOutput(
          [void Function(GetShardIteratorOutputBuilder)? updates]) =>
      (new GetShardIteratorOutputBuilder()..update(updates))._build();

  _$GetShardIteratorOutput._({this.shardIterator}) : super._();

  @override
  GetShardIteratorOutput rebuild(
          void Function(GetShardIteratorOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetShardIteratorOutputBuilder toBuilder() =>
      new GetShardIteratorOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetShardIteratorOutput &&
        shardIterator == other.shardIterator;
  }

  @override
  int get hashCode {
    return $jf($jc(0, shardIterator.hashCode));
  }
}

class GetShardIteratorOutputBuilder
    implements Builder<GetShardIteratorOutput, GetShardIteratorOutputBuilder> {
  _$GetShardIteratorOutput? _$v;

  String? _shardIterator;
  String? get shardIterator => _$this._shardIterator;
  set shardIterator(String? shardIterator) =>
      _$this._shardIterator = shardIterator;

  GetShardIteratorOutputBuilder() {
    GetShardIteratorOutput._init(this);
  }

  GetShardIteratorOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shardIterator = $v.shardIterator;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetShardIteratorOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetShardIteratorOutput;
  }

  @override
  void update(void Function(GetShardIteratorOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetShardIteratorOutput build() => _build();

  _$GetShardIteratorOutput _build() {
    final _$result =
        _$v ?? new _$GetShardIteratorOutput._(shardIterator: shardIterator);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
