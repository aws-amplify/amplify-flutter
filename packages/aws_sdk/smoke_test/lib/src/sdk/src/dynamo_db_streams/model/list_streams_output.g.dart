// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.list_streams_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStreamsOutput extends ListStreamsOutput {
  @override
  final _i3.BuiltList<_i2.Stream>? streams;
  @override
  final String? lastEvaluatedStreamArn;

  factory _$ListStreamsOutput(
          [void Function(ListStreamsOutputBuilder)? updates]) =>
      (new ListStreamsOutputBuilder()..update(updates))._build();

  _$ListStreamsOutput._({this.streams, this.lastEvaluatedStreamArn})
      : super._();

  @override
  ListStreamsOutput rebuild(void Function(ListStreamsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStreamsOutputBuilder toBuilder() =>
      new ListStreamsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStreamsOutput &&
        streams == other.streams &&
        lastEvaluatedStreamArn == other.lastEvaluatedStreamArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streams.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedStreamArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStreamsOutputBuilder
    implements Builder<ListStreamsOutput, ListStreamsOutputBuilder> {
  _$ListStreamsOutput? _$v;

  _i3.ListBuilder<_i2.Stream>? _streams;
  _i3.ListBuilder<_i2.Stream> get streams =>
      _$this._streams ??= new _i3.ListBuilder<_i2.Stream>();
  set streams(_i3.ListBuilder<_i2.Stream>? streams) =>
      _$this._streams = streams;

  String? _lastEvaluatedStreamArn;
  String? get lastEvaluatedStreamArn => _$this._lastEvaluatedStreamArn;
  set lastEvaluatedStreamArn(String? lastEvaluatedStreamArn) =>
      _$this._lastEvaluatedStreamArn = lastEvaluatedStreamArn;

  ListStreamsOutputBuilder() {
    ListStreamsOutput._init(this);
  }

  ListStreamsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streams = $v.streams?.toBuilder();
      _lastEvaluatedStreamArn = $v.lastEvaluatedStreamArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStreamsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStreamsOutput;
  }

  @override
  void update(void Function(ListStreamsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStreamsOutput build() => _build();

  _$ListStreamsOutput _build() {
    _$ListStreamsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListStreamsOutput._(
              streams: _streams?.build(),
              lastEvaluatedStreamArn: lastEvaluatedStreamArn);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'streams';
        _streams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStreamsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
