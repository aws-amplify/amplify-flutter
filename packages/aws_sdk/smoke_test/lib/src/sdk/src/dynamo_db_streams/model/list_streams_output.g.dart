// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.list_streams_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStreamsOutput extends ListStreamsOutput {
  @override
  final String? lastEvaluatedStreamArn;
  @override
  final _i3.BuiltList<_i2.Stream>? streams;

  factory _$ListStreamsOutput(
          [void Function(ListStreamsOutputBuilder)? updates]) =>
      (new ListStreamsOutputBuilder()..update(updates))._build();

  _$ListStreamsOutput._({this.lastEvaluatedStreamArn, this.streams})
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
        lastEvaluatedStreamArn == other.lastEvaluatedStreamArn &&
        streams == other.streams;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lastEvaluatedStreamArn.hashCode), streams.hashCode));
  }
}

class ListStreamsOutputBuilder
    implements Builder<ListStreamsOutput, ListStreamsOutputBuilder> {
  _$ListStreamsOutput? _$v;

  String? _lastEvaluatedStreamArn;
  String? get lastEvaluatedStreamArn => _$this._lastEvaluatedStreamArn;
  set lastEvaluatedStreamArn(String? lastEvaluatedStreamArn) =>
      _$this._lastEvaluatedStreamArn = lastEvaluatedStreamArn;

  _i3.ListBuilder<_i2.Stream>? _streams;
  _i3.ListBuilder<_i2.Stream> get streams =>
      _$this._streams ??= new _i3.ListBuilder<_i2.Stream>();
  set streams(_i3.ListBuilder<_i2.Stream>? streams) =>
      _$this._streams = streams;

  ListStreamsOutputBuilder() {
    ListStreamsOutput._init(this);
  }

  ListStreamsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastEvaluatedStreamArn = $v.lastEvaluatedStreamArn;
      _streams = $v.streams?.toBuilder();
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
              lastEvaluatedStreamArn: lastEvaluatedStreamArn,
              streams: _streams?.build());
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
