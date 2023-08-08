// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_contributor_insights_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListContributorInsightsInput extends ListContributorInsightsInput {
  @override
  final String? tableName;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$ListContributorInsightsInput(
          [void Function(ListContributorInsightsInputBuilder)? updates]) =>
      (new ListContributorInsightsInputBuilder()..update(updates))._build();

  _$ListContributorInsightsInput._(
      {this.tableName, this.nextToken, required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'ListContributorInsightsInput', 'maxResults');
  }

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
        tableName == other.tableName &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListContributorInsightsInputBuilder
    implements
        Builder<ListContributorInsightsInput,
            ListContributorInsightsInputBuilder> {
  _$ListContributorInsightsInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  ListContributorInsightsInputBuilder() {
    ListContributorInsightsInput._init(this);
  }

  ListContributorInsightsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
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
            tableName: tableName,
            nextToken: nextToken,
            maxResults: BuiltValueNullFieldError.checkNotNull(
                maxResults, r'ListContributorInsightsInput', 'maxResults'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
