// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_change_sets_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListChangeSetsOutput extends ListChangeSetsOutput {
  @override
  final _i3.BuiltList<_i2.ChangeSetSummary>? summaries;
  @override
  final String? nextToken;

  factory _$ListChangeSetsOutput(
          [void Function(ListChangeSetsOutputBuilder)? updates]) =>
      (new ListChangeSetsOutputBuilder()..update(updates))._build();

  _$ListChangeSetsOutput._({this.summaries, this.nextToken}) : super._();

  @override
  ListChangeSetsOutput rebuild(
          void Function(ListChangeSetsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListChangeSetsOutputBuilder toBuilder() =>
      new ListChangeSetsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListChangeSetsOutput &&
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

class ListChangeSetsOutputBuilder
    implements Builder<ListChangeSetsOutput, ListChangeSetsOutputBuilder> {
  _$ListChangeSetsOutput? _$v;

  _i3.ListBuilder<_i2.ChangeSetSummary>? _summaries;
  _i3.ListBuilder<_i2.ChangeSetSummary> get summaries =>
      _$this._summaries ??= new _i3.ListBuilder<_i2.ChangeSetSummary>();
  set summaries(_i3.ListBuilder<_i2.ChangeSetSummary>? summaries) =>
      _$this._summaries = summaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListChangeSetsOutputBuilder() {
    ListChangeSetsOutput._init(this);
  }

  ListChangeSetsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summaries = $v.summaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListChangeSetsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListChangeSetsOutput;
  }

  @override
  void update(void Function(ListChangeSetsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListChangeSetsOutput build() => _build();

  _$ListChangeSetsOutput _build() {
    _$ListChangeSetsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListChangeSetsOutput._(
              summaries: _summaries?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summaries';
        _summaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListChangeSetsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
