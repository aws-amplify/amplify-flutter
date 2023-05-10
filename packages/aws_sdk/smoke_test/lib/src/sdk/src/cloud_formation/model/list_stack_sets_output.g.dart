// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stack_sets_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackSetsOutput extends ListStackSetsOutput {
  @override
  final _i3.BuiltList<_i2.StackSetSummary>? summaries;
  @override
  final String? nextToken;

  factory _$ListStackSetsOutput(
          [void Function(ListStackSetsOutputBuilder)? updates]) =>
      (new ListStackSetsOutputBuilder()..update(updates))._build();

  _$ListStackSetsOutput._({this.summaries, this.nextToken}) : super._();

  @override
  ListStackSetsOutput rebuild(
          void Function(ListStackSetsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackSetsOutputBuilder toBuilder() =>
      new ListStackSetsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackSetsOutput &&
        summaries == other.summaries &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, summaries.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStackSetsOutputBuilder
    implements Builder<ListStackSetsOutput, ListStackSetsOutputBuilder> {
  _$ListStackSetsOutput? _$v;

  _i3.ListBuilder<_i2.StackSetSummary>? _summaries;
  _i3.ListBuilder<_i2.StackSetSummary> get summaries =>
      _$this._summaries ??= new _i3.ListBuilder<_i2.StackSetSummary>();
  set summaries(_i3.ListBuilder<_i2.StackSetSummary>? summaries) =>
      _$this._summaries = summaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListStackSetsOutputBuilder() {
    ListStackSetsOutput._init(this);
  }

  ListStackSetsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summaries = $v.summaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackSetsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackSetsOutput;
  }

  @override
  void update(void Function(ListStackSetsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackSetsOutput build() => _build();

  _$ListStackSetsOutput _build() {
    _$ListStackSetsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListStackSetsOutput._(
              summaries: _summaries?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summaries';
        _summaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStackSetsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
