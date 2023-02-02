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
    var _$hash = 0;
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
