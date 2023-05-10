// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.describe_stream_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStreamInput extends DescribeStreamInput {
  @override
  final String streamArn;
  @override
  final int? limit;
  @override
  final String? exclusiveStartShardId;

  factory _$DescribeStreamInput(
          [void Function(DescribeStreamInputBuilder)? updates]) =>
      (new DescribeStreamInputBuilder()..update(updates))._build();

  _$DescribeStreamInput._(
      {required this.streamArn, this.limit, this.exclusiveStartShardId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        streamArn, r'DescribeStreamInput', 'streamArn');
  }

  @override
  DescribeStreamInput rebuild(
          void Function(DescribeStreamInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStreamInputBuilder toBuilder() =>
      new DescribeStreamInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStreamInput &&
        streamArn == other.streamArn &&
        limit == other.limit &&
        exclusiveStartShardId == other.exclusiveStartShardId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, exclusiveStartShardId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStreamInputBuilder
    implements Builder<DescribeStreamInput, DescribeStreamInputBuilder> {
  _$DescribeStreamInput? _$v;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _exclusiveStartShardId;
  String? get exclusiveStartShardId => _$this._exclusiveStartShardId;
  set exclusiveStartShardId(String? exclusiveStartShardId) =>
      _$this._exclusiveStartShardId = exclusiveStartShardId;

  DescribeStreamInputBuilder() {
    DescribeStreamInput._init(this);
  }

  DescribeStreamInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamArn = $v.streamArn;
      _limit = $v.limit;
      _exclusiveStartShardId = $v.exclusiveStartShardId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStreamInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStreamInput;
  }

  @override
  void update(void Function(DescribeStreamInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStreamInput build() => _build();

  _$DescribeStreamInput _build() {
    final _$result = _$v ??
        new _$DescribeStreamInput._(
            streamArn: BuiltValueNullFieldError.checkNotNull(
                streamArn, r'DescribeStreamInput', 'streamArn'),
            limit: limit,
            exclusiveStartShardId: exclusiveStartShardId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
