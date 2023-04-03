// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stack_set_operations_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackSetOperationsOutput extends ListStackSetOperationsOutput {
  @override
  final _i3.BuiltList<_i2.StackSetOperationSummary>? summaries;
  @override
  final String? nextToken;

  factory _$ListStackSetOperationsOutput(
          [void Function(ListStackSetOperationsOutputBuilder)? updates]) =>
      (new ListStackSetOperationsOutputBuilder()..update(updates))._build();

  _$ListStackSetOperationsOutput._({this.summaries, this.nextToken})
      : super._();

  @override
  ListStackSetOperationsOutput rebuild(
          void Function(ListStackSetOperationsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackSetOperationsOutputBuilder toBuilder() =>
      new ListStackSetOperationsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackSetOperationsOutput &&
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

class ListStackSetOperationsOutputBuilder
    implements
        Builder<ListStackSetOperationsOutput,
            ListStackSetOperationsOutputBuilder> {
  _$ListStackSetOperationsOutput? _$v;

  _i3.ListBuilder<_i2.StackSetOperationSummary>? _summaries;
  _i3.ListBuilder<_i2.StackSetOperationSummary> get summaries =>
      _$this._summaries ??= new _i3.ListBuilder<_i2.StackSetOperationSummary>();
  set summaries(_i3.ListBuilder<_i2.StackSetOperationSummary>? summaries) =>
      _$this._summaries = summaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListStackSetOperationsOutputBuilder() {
    ListStackSetOperationsOutput._init(this);
  }

  ListStackSetOperationsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summaries = $v.summaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackSetOperationsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackSetOperationsOutput;
  }

  @override
  void update(void Function(ListStackSetOperationsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackSetOperationsOutput build() => _build();

  _$ListStackSetOperationsOutput _build() {
    _$ListStackSetOperationsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListStackSetOperationsOutput._(
              summaries: _summaries?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summaries';
        _summaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStackSetOperationsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
