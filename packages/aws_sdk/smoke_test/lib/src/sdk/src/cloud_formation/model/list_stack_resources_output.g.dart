// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stack_resources_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackResourcesOutput extends ListStackResourcesOutput {
  @override
  final _i3.BuiltList<_i2.StackResourceSummary>? stackResourceSummaries;
  @override
  final String? nextToken;

  factory _$ListStackResourcesOutput(
          [void Function(ListStackResourcesOutputBuilder)? updates]) =>
      (new ListStackResourcesOutputBuilder()..update(updates))._build();

  _$ListStackResourcesOutput._({this.stackResourceSummaries, this.nextToken})
      : super._();

  @override
  ListStackResourcesOutput rebuild(
          void Function(ListStackResourcesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackResourcesOutputBuilder toBuilder() =>
      new ListStackResourcesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackResourcesOutput &&
        stackResourceSummaries == other.stackResourceSummaries &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackResourceSummaries.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStackResourcesOutputBuilder
    implements
        Builder<ListStackResourcesOutput, ListStackResourcesOutputBuilder> {
  _$ListStackResourcesOutput? _$v;

  _i3.ListBuilder<_i2.StackResourceSummary>? _stackResourceSummaries;
  _i3.ListBuilder<_i2.StackResourceSummary> get stackResourceSummaries =>
      _$this._stackResourceSummaries ??=
          new _i3.ListBuilder<_i2.StackResourceSummary>();
  set stackResourceSummaries(
          _i3.ListBuilder<_i2.StackResourceSummary>? stackResourceSummaries) =>
      _$this._stackResourceSummaries = stackResourceSummaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListStackResourcesOutputBuilder() {
    ListStackResourcesOutput._init(this);
  }

  ListStackResourcesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackResourceSummaries = $v.stackResourceSummaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackResourcesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackResourcesOutput;
  }

  @override
  void update(void Function(ListStackResourcesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackResourcesOutput build() => _build();

  _$ListStackResourcesOutput _build() {
    _$ListStackResourcesOutput _$result;
    try {
      _$result = _$v ??
          new _$ListStackResourcesOutput._(
              stackResourceSummaries: _stackResourceSummaries?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackResourceSummaries';
        _stackResourceSummaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStackResourcesOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
