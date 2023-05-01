// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stacks_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStacksOutput extends ListStacksOutput {
  @override
  final _i3.BuiltList<_i2.StackSummary>? stackSummaries;
  @override
  final String? nextToken;

  factory _$ListStacksOutput(
          [void Function(ListStacksOutputBuilder)? updates]) =>
      (new ListStacksOutputBuilder()..update(updates))._build();

  _$ListStacksOutput._({this.stackSummaries, this.nextToken}) : super._();

  @override
  ListStacksOutput rebuild(void Function(ListStacksOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStacksOutputBuilder toBuilder() =>
      new ListStacksOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStacksOutput &&
        stackSummaries == other.stackSummaries &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSummaries.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStacksOutputBuilder
    implements Builder<ListStacksOutput, ListStacksOutputBuilder> {
  _$ListStacksOutput? _$v;

  _i3.ListBuilder<_i2.StackSummary>? _stackSummaries;
  _i3.ListBuilder<_i2.StackSummary> get stackSummaries =>
      _$this._stackSummaries ??= new _i3.ListBuilder<_i2.StackSummary>();
  set stackSummaries(_i3.ListBuilder<_i2.StackSummary>? stackSummaries) =>
      _$this._stackSummaries = stackSummaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListStacksOutputBuilder() {
    ListStacksOutput._init(this);
  }

  ListStacksOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSummaries = $v.stackSummaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStacksOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStacksOutput;
  }

  @override
  void update(void Function(ListStacksOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStacksOutput build() => _build();

  _$ListStacksOutput _build() {
    _$ListStacksOutput _$result;
    try {
      _$result = _$v ??
          new _$ListStacksOutput._(
              stackSummaries: _stackSummaries?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackSummaries';
        _stackSummaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStacksOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
