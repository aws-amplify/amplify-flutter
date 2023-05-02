// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stack_instances_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackInstancesOutput extends ListStackInstancesOutput {
  @override
  final _i3.BuiltList<_i2.StackInstanceSummary>? summaries;
  @override
  final String? nextToken;

  factory _$ListStackInstancesOutput(
          [void Function(ListStackInstancesOutputBuilder)? updates]) =>
      (new ListStackInstancesOutputBuilder()..update(updates))._build();

  _$ListStackInstancesOutput._({this.summaries, this.nextToken}) : super._();

  @override
  ListStackInstancesOutput rebuild(
          void Function(ListStackInstancesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackInstancesOutputBuilder toBuilder() =>
      new ListStackInstancesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackInstancesOutput &&
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

class ListStackInstancesOutputBuilder
    implements
        Builder<ListStackInstancesOutput, ListStackInstancesOutputBuilder> {
  _$ListStackInstancesOutput? _$v;

  _i3.ListBuilder<_i2.StackInstanceSummary>? _summaries;
  _i3.ListBuilder<_i2.StackInstanceSummary> get summaries =>
      _$this._summaries ??= new _i3.ListBuilder<_i2.StackInstanceSummary>();
  set summaries(_i3.ListBuilder<_i2.StackInstanceSummary>? summaries) =>
      _$this._summaries = summaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListStackInstancesOutputBuilder() {
    ListStackInstancesOutput._init(this);
  }

  ListStackInstancesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summaries = $v.summaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackInstancesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackInstancesOutput;
  }

  @override
  void update(void Function(ListStackInstancesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackInstancesOutput build() => _build();

  _$ListStackInstancesOutput _build() {
    _$ListStackInstancesOutput _$result;
    try {
      _$result = _$v ??
          new _$ListStackInstancesOutput._(
              summaries: _summaries?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summaries';
        _summaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStackInstancesOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
