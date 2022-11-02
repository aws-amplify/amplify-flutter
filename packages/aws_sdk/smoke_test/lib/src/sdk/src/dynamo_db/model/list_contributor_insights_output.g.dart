// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_contributor_insights_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListContributorInsightsOutput extends ListContributorInsightsOutput {
  @override
  final _i3.BuiltList<_i2.ContributorInsightsSummary>?
      contributorInsightsSummaries;
  @override
  final String? nextToken;

  factory _$ListContributorInsightsOutput(
          [void Function(ListContributorInsightsOutputBuilder)? updates]) =>
      (new ListContributorInsightsOutputBuilder()..update(updates))._build();

  _$ListContributorInsightsOutput._(
      {this.contributorInsightsSummaries, this.nextToken})
      : super._();

  @override
  ListContributorInsightsOutput rebuild(
          void Function(ListContributorInsightsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListContributorInsightsOutputBuilder toBuilder() =>
      new ListContributorInsightsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListContributorInsightsOutput &&
        contributorInsightsSummaries == other.contributorInsightsSummaries &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, contributorInsightsSummaries.hashCode), nextToken.hashCode));
  }
}

class ListContributorInsightsOutputBuilder
    implements
        Builder<ListContributorInsightsOutput,
            ListContributorInsightsOutputBuilder> {
  _$ListContributorInsightsOutput? _$v;

  _i3.ListBuilder<_i2.ContributorInsightsSummary>?
      _contributorInsightsSummaries;
  _i3.ListBuilder<_i2.ContributorInsightsSummary>
      get contributorInsightsSummaries =>
          _$this._contributorInsightsSummaries ??=
              new _i3.ListBuilder<_i2.ContributorInsightsSummary>();
  set contributorInsightsSummaries(
          _i3.ListBuilder<_i2.ContributorInsightsSummary>?
              contributorInsightsSummaries) =>
      _$this._contributorInsightsSummaries = contributorInsightsSummaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListContributorInsightsOutputBuilder() {
    ListContributorInsightsOutput._init(this);
  }

  ListContributorInsightsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contributorInsightsSummaries =
          $v.contributorInsightsSummaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListContributorInsightsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListContributorInsightsOutput;
  }

  @override
  void update(void Function(ListContributorInsightsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListContributorInsightsOutput build() => _build();

  _$ListContributorInsightsOutput _build() {
    _$ListContributorInsightsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListContributorInsightsOutput._(
              contributorInsightsSummaries:
                  _contributorInsightsSummaries?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contributorInsightsSummaries';
        _contributorInsightsSummaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListContributorInsightsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
