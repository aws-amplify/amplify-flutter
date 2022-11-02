// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_contributor_insights_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListContributorInsightsInput extends ListContributorInsightsInput {
  @override
  final int? maxResults;
  @override
  final String? nextToken;
  @override
  final String? tableName;

  factory _$ListContributorInsightsInput(
          [void Function(ListContributorInsightsInputBuilder)? updates]) =>
      (new ListContributorInsightsInputBuilder()..update(updates))._build();

  _$ListContributorInsightsInput._(
      {this.maxResults, this.nextToken, this.tableName})
      : super._();

  @override
  ListContributorInsightsInput rebuild(
          void Function(ListContributorInsightsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListContributorInsightsInputBuilder toBuilder() =>
      new ListContributorInsightsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListContributorInsightsInput &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, maxResults.hashCode), nextToken.hashCode),
        tableName.hashCode));
  }
}

class ListContributorInsightsInputBuilder
    implements
        Builder<ListContributorInsightsInput,
            ListContributorInsightsInputBuilder> {
  _$ListContributorInsightsInput? _$v;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  ListContributorInsightsInputBuilder() {
    ListContributorInsightsInput._init(this);
  }

  ListContributorInsightsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListContributorInsightsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListContributorInsightsInput;
  }

  @override
  void update(void Function(ListContributorInsightsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListContributorInsightsInput build() => _build();

  _$ListContributorInsightsInput _build() {
    final _$result = _$v ??
        new _$ListContributorInsightsInput._(
            maxResults: maxResults, nextToken: nextToken, tableName: tableName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
