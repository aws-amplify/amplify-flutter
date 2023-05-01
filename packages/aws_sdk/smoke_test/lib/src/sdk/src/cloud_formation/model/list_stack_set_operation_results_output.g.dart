// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stack_set_operation_results_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackSetOperationResultsOutput
    extends ListStackSetOperationResultsOutput {
  @override
  final _i3.BuiltList<_i2.StackSetOperationResultSummary>? summaries;
  @override
  final String? nextToken;

  factory _$ListStackSetOperationResultsOutput(
          [void Function(ListStackSetOperationResultsOutputBuilder)?
              updates]) =>
      (new ListStackSetOperationResultsOutputBuilder()..update(updates))
          ._build();

  _$ListStackSetOperationResultsOutput._({this.summaries, this.nextToken})
      : super._();

  @override
  ListStackSetOperationResultsOutput rebuild(
          void Function(ListStackSetOperationResultsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackSetOperationResultsOutputBuilder toBuilder() =>
      new ListStackSetOperationResultsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackSetOperationResultsOutput &&
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

class ListStackSetOperationResultsOutputBuilder
    implements
        Builder<ListStackSetOperationResultsOutput,
            ListStackSetOperationResultsOutputBuilder> {
  _$ListStackSetOperationResultsOutput? _$v;

  _i3.ListBuilder<_i2.StackSetOperationResultSummary>? _summaries;
  _i3.ListBuilder<_i2.StackSetOperationResultSummary> get summaries =>
      _$this._summaries ??=
          new _i3.ListBuilder<_i2.StackSetOperationResultSummary>();
  set summaries(
          _i3.ListBuilder<_i2.StackSetOperationResultSummary>? summaries) =>
      _$this._summaries = summaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListStackSetOperationResultsOutputBuilder() {
    ListStackSetOperationResultsOutput._init(this);
  }

  ListStackSetOperationResultsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summaries = $v.summaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackSetOperationResultsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackSetOperationResultsOutput;
  }

  @override
  void update(
      void Function(ListStackSetOperationResultsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackSetOperationResultsOutput build() => _build();

  _$ListStackSetOperationResultsOutput _build() {
    _$ListStackSetOperationResultsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListStackSetOperationResultsOutput._(
              summaries: _summaries?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summaries';
        _summaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStackSetOperationResultsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
